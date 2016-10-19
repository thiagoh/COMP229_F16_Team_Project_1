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
    public partial class AddTeam : System.Web.UI.Page {

        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void cancel_Click(object sender, EventArgs e) {

            // Redirect back to the defaultpage
            Response.Redirect("~/Default.aspx");
        }

        protected void addTeam_click(object sender, EventArgs e) {

            using (GameTrackerContext db = new GameTrackerContext("GameTrackerConnection")) {

                int teamId = Convert.ToInt32(Request.QueryString["teamId"]);

                Team team = null;

                if (teamId == 0) {
                    team = new Team();
                    db.Teams.Add(team);

                } else {
                    team = (from _team in db.Teams
                            where _team.ID == teamId
                            select _team).FirstOrDefault();
                }

                if (team != null) {

                    team.name = name.Value;
                    team.logoPath = logoPath.Value;
                    team.description = description.Value;
                }

                // save the team
                db.SaveChanges();

                Response.Redirect("~/Default.aspx");
            }
        }
    }
}