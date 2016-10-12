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

        public List<Team> teams { get; set; }

        protected void Page_Load(object sender, EventArgs e) {

            Debug.WriteLine("Page was loaded");

            using (GameTrackerContext db = new GameTrackerContext("GameTrackerConnection")) {

                List<Team> _teams = (from allTeams in db.Teams
                                     select allTeams).ToList();

                Debug.WriteLine("number of teams are: " + _teams.Count);

                foreach (var team in _teams) {
                    Debug.WriteLine(team.name);
                }

                this.teams = _teams;
            }

        }
    }
}