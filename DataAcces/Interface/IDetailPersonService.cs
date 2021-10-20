using DataAcces.Models;
using System.Collections.Generic;
using System.Data;

namespace DataAcces.Interface 
{
    public interface IDetailPersonService
    {
        DetailsPersonModel Converteur(IDataReader reader);
        IEnumerable<DetailsPersonModel> GetInfoPerson(int idPerson);
    }
}