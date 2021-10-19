using System;
using System.Collections.Generic;
using System.Text;

namespace DataAcces.Model
{
    public class MovieModel
    {
        public int IdMovie { get; set; }
        public string Title { get; set; }
        public DateTime DateSortie { get; set; }
        public string Resume { get; set; }
        public string ImageMovie { get; set; }
        public int RealisatorId { get; set; }
        public int ScenaristeId { get; set; }
        public int CategorieId { get; set; }
        public string PersonnalComment { get; set; }

    }
}
