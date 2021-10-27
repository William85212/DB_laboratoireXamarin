using DataAcces.Models;
using System.Collections.Generic;
using System.Data;

namespace DataAcces.Interface
{
    public interface IFavorisIdMovieService
    {
        FavoriIdMovie Converteur(IDataReader reader);
        IEnumerable<FavoriIdMovie> GetIdMovieFavoris(int idUser);
        void DeleteFavoris(int IdMovie, int idUser);
        void AddFavoris(FavMod m);
    }
}