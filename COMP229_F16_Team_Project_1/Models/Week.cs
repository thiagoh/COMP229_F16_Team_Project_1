using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace COMP229_F16_Team_Project_1.Models {

    [Table("Week")]
    public class Week {

        [Key]
        public string number { get; set; }

    }
}