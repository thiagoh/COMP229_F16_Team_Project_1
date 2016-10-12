using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace COMP229_F16_Team_Project_1.Models {

    [Table("Team")]
    public class Team {

        [Key]
        public int ID { get; set; }
        public string name { get; set; }
        public string logoPath { get; set; }
    }
}