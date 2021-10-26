using DataAcces.Models;
using System.Collections.Generic;
using System.Data;

namespace DataAcces.Interface
{
    public interface IUserService
    {
        UserModel Converteur(IDataReader reader);
        int Insert(UserModel um);
        UserModel Login(string email, string password);
        IEnumerable<UserModel> GetAll();
        UserModel GetUsetByTokenForgot(string token);
        void SetTokenForgot(NewLoginModel mdl);
        void setNewPassword(SetNewPasswordModel np);
    }
}