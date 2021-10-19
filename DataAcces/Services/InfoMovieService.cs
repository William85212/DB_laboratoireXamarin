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
    public class InfoMovieService : IInfoMovieService
    {
        private string _connString;
        private Connection _connection;
        public InfoMovieService(IConfiguration config)
        {
            _connString = config.GetConnectionString("_connS");
            _connection = new Connection(SqlClientFactory.Instance, _connString);
        }

        public InfoMovieModel Get()
        {
            Command command = new Command("select m.Title, m.DateSortie, m.ImageMovie, p.FirstName + ' ' +p.LastName as realisateur, (select  p.FirstName + ' ' + p.LastName from Movie m join Person p on m.ScenaristeId = p.IdPerson where IdMovie = 1) as Scenariste from Movie m join Categorie c on c.IdCategorie = m.CategorieId join Person p on p.IdPerson = m.RealisatorId where IdMovie = 1");

           // command.AddParameter("idMovie", idMovie);

            _connection.Open();
            InfoMovieModel infoMovie = _connection.ExecuteReader(command, Converteur).First();
            _connection.Close();

            return infoMovie;


        }

        public InfoMovieModel Converteur(IDataReader reader)
        {
            return new InfoMovieModel
            {
                Title = reader["Title"].ToString(),
                DateSortie = (DateTime)reader["DateSortie"],
                ImageMovie = reader["ImageMovie"].ToString(),
                Realisteur = reader["realisateur"].ToString(),
                Scenariste = reader["Scenariste"].ToString(),
                //PersonnalComment = reader["PersonnalComment"].ToString()
            };
        }
    }
}
