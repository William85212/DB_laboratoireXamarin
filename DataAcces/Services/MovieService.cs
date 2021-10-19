using DataAcces.Interface;
using DataAcces.Model;
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
    public class MovieService : IMovieService
    {
        private string _connString;
        private Connection _connection;
        public MovieService(IConfiguration config)
        {
            _connString = config.GetConnectionString("_connS");
            _connection = new Connection(SqlClientFactory.Instance, _connString);
        }

        public IEnumerable<MovieModel> GetAll()
        {
            Command command = new Command("select * from Movie");

            _connection.Open();
            IEnumerable<MovieModel> listesMovies = _connection.ExecuteReader(command, Converteur).ToList();
            _connection.Close();

            return listesMovies;

        }

        public IEnumerable<MovieModel> GetByCategorie(string categorieName)
        {
            Command command = new Command("");
            _connection.Open();
            IEnumerable<MovieModel> movieModels = _connection.ExecuteReader(command, Converteur).ToList();
            _connection.Close();

            return movieModels;
        }

        public MovieModel Converteur(IDataReader reader)
        {
            return new MovieModel
            {
                IdMovie = (int)reader["IdMovie"],
                Title = reader["Title"].ToString(),
                DateSortie = (DateTime)reader["DateSortie"],
                Resume = reader["Resume"].ToString(),
                ImageMovie = reader["ImageMovie"].ToString(),
                RealisatorId = (int)reader["RealisatorId"],
                ScenaristeId = (int)reader["ScenaristeId"],
                CategorieId = (int)reader["CategorieId"],
                PersonnalComment = reader["PersonnalComment"].ToString()
            };
        }
    }
}
