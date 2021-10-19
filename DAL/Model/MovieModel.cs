using System;
using System.Collections.Generic;
using System.Text;

namespace DAL.Model
{
    public class MovieModel
    {
        public int IdMovie { get; set; }
        public string Title { get; set; }
        public DateTime Date { get; set; }
        public string Resume { get; set; }
        public string ImageMovie { get; set; }
        public int RealisatorId { get; set; }
        public int ScenaristeId { get; set; }
        public string PersonnalComment { get; set; }

    }
}
