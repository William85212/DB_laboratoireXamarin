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
    public class FavorisIdMovieService : IFavorisIdMovieService
    {
        private string _connString;
        private Connection _connection;

        public FavorisIdMovieService(IConfiguration config)
        {
            _connString = config.GetConnectionString("_connS");
            _connection = new Connection(SqlClientFactory.Instance, _connString);
        }

        public IEnumerable<FavoriIdMovie> GetIdMovieFavoris(int idUser)
        {
            Command command = new Command("select f.IdMovie, m.Title from [User] u join Favoris f on u.IdUser = f.IdUser join Movie m on f.IdMovie = m.IdMovie where u.IdUser = @id");
            command.AddParameter("id", idUser);

            _connection.Open();
            IEnumerable<FavoriIdMovie> fim = _connection.ExecuteReader(command, Converteur).ToList();
            _connection.Close();

            return fim;
        }

        public void DeleteFavoris(int IdMovie, int idUser)
        {
            Command command = new Command("Delete Favoris where IdUser = @idUser and IdMovie = @idMovie");
            command.AddParameter("idUser", idUser);
            command.AddParameter("idMovie", IdMovie);

            _connection.Open();
            _connection.ExecuteNonQuery(command);
            _connection.Close(); 
            
        }

        public void AddFavoris(FavMod m)
        {
            Command command = new Command(" insert into Favoris (IdMovie, IdUser) values (@idMovie, @idUser)");
            command.AddParameter("idMovie", m.IdMovie);
            command.AddParameter("idUser", m.IdUser);

            _connection.Open();
            _connection.ExecuteNonQuery(command);
            _connection.Close();
        }

        public FavoriIdMovie Converteur(IDataReader reader)
        {
            return new FavoriIdMovie
            {
                IdMovie = (int)reader["IdMovie"]
            };
        }
    }
}
