using DataAcces.Models;
using System.Data;

namespace DataAcces.Interface
{
    public interface IInfoMovieService
    {
        InfoMovieModel Converteur(IDataReader reader);
        InfoMovieModel Get();
    }
}