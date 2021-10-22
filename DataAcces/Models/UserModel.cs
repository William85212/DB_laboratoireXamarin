using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcces.Models
{
    public class UserModel
    {
        public int IdUser { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string TokenForgot { get; set; }
    }
}
