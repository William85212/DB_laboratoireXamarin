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
    public class PersonByFilmService : IPersonByFilmService
    {
        private string _connString;
        private Connection _connection;
        public PersonByFilmService(IConfiguration config)
        {
            _connString = config.GetConnectionString("_connS");
            _connection = new Connection(SqlClientFactory.Instance, _connString);
        }

        public IEnumerable<PersonnByFilm> GetPerson(int idFilm)
        {
            Command command = new Command("select p.IdPerson, p.FirstName + ' ' + p.LastName as NomComplet, pm.Role from Movie m join PMovie pm on m.IdMovie = pm.MovieId join Person p on pm.PersonId = p.IdPerson where pm.MovieId = @idFilm");
            command.AddParameter("idFilm", idFilm);

            _connection.Open();
            IEnumerable<PersonnByFilm> pbf = _connection.ExecuteReader(command, Converteur).ToList();
            _connection.Close();

            return pbf;
        }

        public PersonnByFilm Converteur(IDataReader reader)
        {
            return new PersonnByFilm
            {
                NomComplet = reader["NomComplet"].ToString(),
                Role = reader["Role"].ToString(),
                IdPerson = (int)reader["IdPerson"]
            };
        }
    }
}
