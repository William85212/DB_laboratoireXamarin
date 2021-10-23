using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Api_Xamarin_project.Models
{
    public class UserWithToken
    {
        public int IdUser { get; set; }
        public string Email { get; set; }
        //public string Password { get; set; }
        //public string TokenForgot { get; set; }

        public string Token { get; set; }
    }
}
