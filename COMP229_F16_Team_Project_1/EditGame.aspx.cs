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

        public int gameId;
        public List<Team> teams1 { get; set; }
        public List<Team> teams2 { get; set; }

        protected void Page_Load(object sender, EventArgs e) {

            if (!IsPostBack) {

                errorBox.Visible = false;
                errorBox.InnerText = "";

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

                    this.gameId = game.ID;
                    title.Value = game.mainTitle;
                    description.Value = game.description;
                    spectators.Value = Convert.ToString(game.spectators);
                    weekNumber.Value = Convert.ToString(game.weekNumber);
                    score1.Value = Convert.ToString(game.team1Score);
                    score2.Value = Convert.ToString(game.team2Score);

                    int ix = 0;
                    foreach (ListItem item in teams1ListBox.Items) {
                        if (item.Value.Equals(Convert.ToString(game.team1Id))) {
                            teams1ListBox.SelectedIndex = ix;
                            break;
                        }
                        ix++;
                    }
                    ix = 0;
                    foreach (ListItem item in teams2ListBox.Items) {
                        if (item.Value.Equals(Convert.ToString(game.team2Id))) {
                            teams2ListBox.SelectedIndex = ix;
                            break;
                        }
                        ix++;
                    }

                    editButton.Text = "Edit Game";
                }
            }
        }

        private void setTeams1() {
            ArrayList values = new ArrayList();

            foreach (var item in teams1) {
                values.Add(new ListItem(item.name, Convert.ToString(item.ID)));
            }

            teams1ListBox.DataTextField = "Text";
            teams1ListBox.DataValueField = "Value";
            teams1ListBox.DataSource = values;
            teams1ListBox.DataBind();
        }
        private void setTeams2() {
            ArrayList values = new ArrayList();

            foreach (var item in teams2) {
                values.Add(new ListItem(item.name, Convert.ToString(item.ID)));
            }
            teams2ListBox.DataTextField = "Text";
            teams2ListBox.DataValueField = "Value";
            teams2ListBox.DataSource = values;
            teams2ListBox.DataBind();
        }

        protected void editGame_click(object sender, EventArgs e) {

            try {

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

                        game.mainTitle = title.Value;
                        game.description = description.Value;
                        game.weekNumber = Convert.ToInt32(weekNumber.Value);

                        validateGame(game);
                    }

                    // save the team
                    db.SaveChanges();

                    Response.Redirect("~/Default.aspx");
                }

            } catch (Exception ex) {
                errorBox.Visible = true;
                errorBox.InnerText = ex.Message;
            }
        }

        private void validateGame(Game game) {

            if (game.team1Id == game.team2Id) {
                throw new Exception("Teams cannot be the same");
            }

            if (game.mainTitle.Trim().Count() == 0) {
                throw new Exception("Game title is required");
            }

            if (game.description.Trim().Count() == 0) {
                throw new Exception("Game title is required");
            }

            if (game.weekNumber < 0 || game.weekNumber > 52) {
                throw new Exception("Game week number is invalid");
            }
        }

        protected void deleteGame_click(object sender, EventArgs e) {

            int gameID = 0;

            // Check if query string value exists
            if (!String.IsNullOrEmpty(Request.QueryString["gameID"])) {
                // Query string value is there so now use it
                gameID = Convert.ToInt32(Request.QueryString["gameID"]);
            }


            if (gameID > 0) {
                // use EF and LINQ to find the selected game and delete it from DB!
                using (GameTrackerContext db = new GameTrackerContext("GameTrackerConnection")) {
                    // create a Game object and store the query inside it
                    Game toBeDeleted = (from game in db.Games
                                        where game.ID == gameID
                                        select game).FirstOrDefault();

                    // remove and save!
                    db.Games.Remove(toBeDeleted);
                    db.SaveChanges();

                    // Go back to the home page
                    Response.Redirect("Default.aspx");
                }
            }
        }
    }
}