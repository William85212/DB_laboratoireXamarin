using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAcces.Models
{
    public class InfoMovieModel
    {
        public string Title { get; set; }
        public DateTime DateSortie { get; set; }
        public string ImageMovie { get; set; }
        public string Realisateur { get; set; }
        public string Scenariste { get; set; }
        public string PersonnalComment { get; set; }
        public string Resume { get; set; }
    }
}
