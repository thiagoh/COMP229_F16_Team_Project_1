using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace COMP229_F16_Team_Project_1.Models {

    [Table("Game")]
    public class Game {

        public int ID { get; set; }
        public string mainTitle { get; set; }
        public string description { get; set; }

        public int weekNumber { get; set; }

        //("FK_Game_ToTeam2")
        public int team1Id { get; set; }
        public int team2Id { get; set; }

        public int team1Score { get; set; }
        public int team2Score { get; set; }

        public DateTime date { get; set; }

        [ForeignKey("team1Id")]
        public virtual Team team1 { get; set; }

        [ForeignKey("team2Id")]
        public virtual Team team2 { get; set; }
    }
}