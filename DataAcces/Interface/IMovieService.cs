using DataAcces.Model;
using System.Collections.Generic;
using System.Data;

namespace DataAcces.Interface
{
    public interface IMovieService
    {
        MovieModel Converteur(IDataReader reader);
        IEnumerable<MovieModel> GetAll();
        IEnumerable<MovieModel> GetByCategorie(string categorieName);
    }
}