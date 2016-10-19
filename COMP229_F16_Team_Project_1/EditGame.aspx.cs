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
using System.Collections;

namespace COMP229_F16_Team_Project_1 {
    public partial class AddGame : System.Web.UI.Page {

        public List<Team> teams1 { get; set; }
        public List<Team> teams2 { get; set; }

        protected void Page_Load(object sender, EventArgs e) {

            using (GameTrackerContext db = new GameTrackerContext("GameTrackerConnection")) {

                teams1 = (from _team in db.Teams select _team).ToList();
                setTeams1();

                teams2 = (from _team in db.Teams select _team).ToList();
                setTeams2();
            }
        }

        private void setTeams1() {
            ArrayList values = new ArrayList();

            foreach (var item in teams1) {
                values.Add(new ListItem { Text = item.name, Value = Convert.ToString(item.ID) });
            }

            teams1ListBox.DataSource = values;
            teams1ListBox.DataBind();
        }
        private void setTeams2() {
            ArrayList values = new ArrayList();

            foreach (var item in teams2) {
                values.Add(new ListItem { Text = item.name, Value = Convert.ToString(item.ID) });
            }

            teams2ListBox.DataSource = values;
            teams2ListBox.DataBind();
        }

        protected void addGame_click(object sender, EventArgs e) {

            //Debug.WriteLine(team)

            using (GameTrackerContext db = new GameTrackerContext("GameTrackerConnection")) {

                //var _games = (from allGames in db.Games
                //              select allGames).ToList();

            }
        }
    }
}