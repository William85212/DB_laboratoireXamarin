using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcces.Models
{
    public class SetNewPasswordModel
    {
        public string NewPassword { get; set; }
        public string Token { get; set; }
    }
}
