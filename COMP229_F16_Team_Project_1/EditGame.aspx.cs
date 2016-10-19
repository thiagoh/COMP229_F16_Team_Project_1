﻿using System;
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

                    game.mainTitle = title.Value;
                    game.description = description.Value;
                    game.weekNumber = Convert.ToInt32(weekNumber.Value);

                    validateGame(game);
                }

                // save the team
                db.SaveChanges();

                Response.Redirect("~/Default.aspx");

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
    }
}