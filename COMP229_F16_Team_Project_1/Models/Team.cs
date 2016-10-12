using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace COMP229_F16_Team_Project_1.Models {

    [Table("Team")]
    public class Team {

        public int ID { get; set; }
        public string name { get; set; }
        public string logoPath { get; set; }
    }
}