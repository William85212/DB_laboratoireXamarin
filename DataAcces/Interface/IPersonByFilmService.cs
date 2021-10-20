using DataAcces.Models;
using System.Collections.Generic;
using System.Data;

namespace DataAcces.Interface
{
    public interface IPersonByFilmService
    {
        PersonnByFilm Converteur(IDataReader reader);
        IEnumerable<PersonnByFilm> GetPerson(int idFilm);
    }
}