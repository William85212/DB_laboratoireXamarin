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

        public UserModel Converteur(IDataReader reader)
        {
            return new UserModel
            {
                IdUser = (int)reader["IdUser"],
                Email = reader["Email"].ToString(),
                Password = Encoding.ASCII.GetString((byte[])reader["password"]),
                TokenForgot = reader["TokenForgot"] is null ? null : (string)reader["TokenForgot"]
            };
        }
    }
}
