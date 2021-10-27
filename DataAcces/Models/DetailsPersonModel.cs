using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcces.Models
{
    public class DetailsPersonModel
    {
        public int IdMovie { get; set; }
        public string ImageMovie { get; set; }
        public int IdPerson { get; set; }
        public string NomComplet { get; set; }
        public string Role { get; set; }
        public string Title { get; set; }
    }
}
