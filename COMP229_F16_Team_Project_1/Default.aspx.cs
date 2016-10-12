using COMP229_F16_Team_Project_1.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP229_F16_Team_Project_1 {
    public partial class Default : System.Web.UI.Page {

        public Game lastGame { get; set; }
        public List<Game> otherGames { get; set; }

        public List<Team> allTeams { get; set; }
        public List<Game> allGames { get; set; }

        protected void Page_Load(object sender, EventArgs e) {

            Debug.WriteLine("Page was loaded");

            using (GameTrackerContext db = new GameTrackerContext("GameTrackerConnection")) {

                var _games = (from allGames in db.Games
                              select allGames).ToList();

                this.allGames = _games;

                if (allGames.Count > 0) {
                    lastGame = allGames.ElementAt(0);
                }

                if (allGames.Count > 1) {
                    otherGames = allGames.GetRange(1, allGames.Count - 1);
                } else {
                    otherGames = new List<Game>();
                }

                Debug.WriteLine("There are # games in DB: " + allGames.Count);

                var _teams = (from allTeams in db.Teams
                              select allTeams).ToList();

                Debug.WriteLine("There are # teams: " + _teams.Count);

                foreach (var team in _teams) {
                    Debug.WriteLine(team.name);
                }

                this.allTeams = _teams;
            }

        }
    }
}