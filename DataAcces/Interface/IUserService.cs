using DataAcces.Models;
using System.Data;

namespace DataAcces.Interface
{
    public interface IUserService
    {
        UserModel Converteur(IDataReader reader);
        int Insert(UserModel um);
        UserModel Login(string email, string password);
    }
}