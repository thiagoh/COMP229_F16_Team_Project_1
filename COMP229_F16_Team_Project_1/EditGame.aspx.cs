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

            if (!IsPostBack) {

                using (GameTrackerContext db = new GameTrackerContext("GameTrackerConnection")) {

                    teams1 = (from _team in db.Teams select _team).ToList();
                    setTeams1();

                    teams2 = (from _team in db.Teams select _team).ToList();
                    setTeams2();
                }

                if (Request.QueryString.Count > 0) {
                    setGame();
                }
            }
        }

        private void setGame() {
            int gameId = Convert.ToInt32(Request.QueryString["gameId"]);

            using (GameTrackerContext db = new GameTrackerContext("GameTrackerConnection")) {

                var game = (from _game in db.Games
                            where _game.ID == gameId
                            select _game).FirstOrDefault();

                if (game != null) {

                    title.Value = game.mainTitle;
                    description.Value = game.description;

                    score1.Value = Convert.ToString(game.team1Score);
                    score2.Value = Convert.ToString(game.team2Score);

                    editButton.Text = "Edit Game";
                }
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

                int gameId = Convert.ToInt32(Request.QueryString["gameId"]);

                Game game = null;

                if (gameId == 0) {
                    game = new Game();
                    db.Games.Add(game);

                } else {
                    game = (from _game in db.Games
                            where _game.ID == gameId
                            select _game).FirstOrDefault();
                }

                if (game != null) {

                    game.team1Id = Convert.ToInt32(teams1ListBox.SelectedItem.Value);
                    game.team2Id = Convert.ToInt32(teams2ListBox.SelectedItem.Value);

                    game.spectators = Convert.ToInt32(spectators.Value);
                    game.team1Score = Convert.ToInt32(score1.Value);
                    game.team2Score = Convert.ToInt32(score2.Value);

                    game.description = description.Value;
                    game.weekNumber= weekNumber.Value;
                }

                // save the team
                db.SaveChanges();

                Response.Redirect("~/Default.aspx");

            }
        }
    }
}