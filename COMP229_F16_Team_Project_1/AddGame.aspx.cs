using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// required for Identity and OWIN Security
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System.Diagnostics;
using COMP229_F16_Team_Project_1.Models;

namespace COMP229_F16_Team_Project_1 {
    public partial class AddGame : System.Web.UI.Page {

        public List<Team> teams1 { get; set; }
        public List<Team> teams2 { get; set; }

        protected void Page_Load(object sender, EventArgs e) {

            using (GameTrackerContext db = new GameTrackerContext("GameTrackerConnection")) {

                teams1 = (from _team in db.Teams select _team).ToList();
                teams2 = (from _team in db.Teams select _team).ToList();
            }
        }

        protected void addGame_click(object sender, EventArgs e) {


            using (GameTrackerContext db = new GameTrackerContext("GameTrackerConnection")) {

                var _games = (from allGames in db.Games
                              select allGames).ToList();

            }
        }
    }
}