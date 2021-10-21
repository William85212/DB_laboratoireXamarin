using DataAcces.Interface;
using DataAcces.Models;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ToolBox.Database;

namespace DataAcces.Services
{
    public class DetailPersonService : IDetailPersonService
    {
        private string _connString;
        private Connection _connection;
        public DetailPersonService(IConfiguration config)
        {
            _connString = config.GetConnectionString("_connS");
            _connection = new Connection(SqlClientFactory.Instance, _connString);
        }
        public IEnumerable<DetailsPersonModel> GetInfoPerson(int idPerson)
        {
            Command command = new Command("select p.PictureUrl as ImageMovie, p.IdPerson, p.FirstName + ' ' + p.LastName as NomComplet, pm.Role, m.Title from Movie m join PMovie pm on m.IdMovie = pm.MovieId join Person p on pm.PersonId = p.IdPerson where pm.PersonId = @idP");
            command.AddParameter("idP", idPerson);

            _connection.Open();
            IEnumerable<DetailsPersonModel> dpm = _connection.ExecuteReader(command, Converteur).ToList();
            _connection.Close();

            return dpm;
        }

        public DetailsPersonModel Converteur(IDataReader reader)
        {
            return new DetailsPersonModel
            {
                ImageMovie = reader["ImageMovie"].ToString(),
                IdPerson = (int)reader["IdPerson"],
                NomComplet = reader["NomComplet"].ToString(),
                Role = reader["Role"].ToString(),
                Title = reader["Title"].ToString()
            };
        }
    }
}
