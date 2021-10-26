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
    public class UserService : IUserService
    {
        private string _connString;
        private Connection _connection;

        public UserService(IConfiguration config)
        {
            _connString = config.GetConnectionString("_connS");
            _connection = new Connection(SqlClientFactory.Instance, _connString);
        }

        public int Insert(UserModel um)
        {
            Command command = new Command("_addUser", true);
            command.AddParameter("email", um.Email);
            command.AddParameter("password", um.Password);

            _connection.Open();
            int insertId = _connection.ExecuteScalar<int>(command);
            _connection.Close();

            return insertId;
        }

        public UserModel Login(string email, string password)
        {
            Command command = new Command("_loginUser", true);
            command.AddParameter("email", email);
            command.AddParameter("password", password);

            _connection.Open();
            UserModel model = _connection.ExecuteReader(command, Converteur).SingleOrDefault();
            _connection.Close();

            return model;
        }

        public IEnumerable<UserModel> GetAll()
        {
            Command command = new Command("select * from [User]");

            _connection.Open();
            IEnumerable<UserModel> um = _connection.ExecuteReader(command, Converteur).ToList();
            _connection.Close();

            return um;
        }

        public UserModel GetUsetByTokenForgot(string token)
        {
            Command command = new Command("select * from [User] where TokenForgot = @token");
            _connection.Open();
            UserModel um =  _connection.ExecuteReader(command, Converteur).SingleOrDefault();
            _connection.Close();

            return um;
        }

        public void setNewPassword(SetNewPasswordModel np)
        {
            Command command = new Command("_updatePassword", true);
            command.AddParameter("token", np.Token);
            command.AddParameter("newpassword", np.NewPassword);

            _connection.Open();
            _connection.ExecuteNonQuery(command);
            _connection.Close();

        }

        public void SetTokenForgot(NewLoginModel mdl)
        {
            Command command = new Command("update  [User] set [TokenForgot] = @token where IdUser = @idUser");
            command.AddParameter("token", mdl.Password);
            command.AddParameter("idUser", mdl.IdUser);

            _connection.Open();
            _connection.ExecuteNonQuery(command);
            _connection.Close();
        }

        public UserModel Converteur(IDataReader reader)
        {
            return new UserModel
            {
                IdUser = (int)reader["IdUser"],
                Email = reader["Email"].ToString(),
                Password = Encoding.ASCII.GetString((byte[])reader["password"]),
                //TokenForgot = reader["TokenForgot"] is null ? null : (string)reader["TokenForgot"]
            };
        }
    }
}
