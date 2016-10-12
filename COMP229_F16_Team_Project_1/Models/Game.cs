using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace COMP229_F16_Team_Project_1.Models {
    public class Game {

        public int ID { get; set; }
        public string description { get; set; }

        public Week week { get; set; }

        public Team team1 { get; set; }
        public int team1Score;

        public Team team2 { get; set; }
        public int team2Score;
    }
}