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

/*
    Logout.aspx.cs
    COMP229 Team Project 1 - Game Tracker
    Thiago de Andrade Souza 300886181
    Edward Song 300915530
    Created on 2016-10-26
    Summary: This is used to logout the user
*/

namespace COMP229_F16_Team_Project_1 {
    public partial class Logout : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            // store session info and authentication methods in the authenticationmanager object
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            // perferorm sign out
            authenticationManager.SignOut();

            // Redirect the user to the Login Page
            Response.Redirect("~/Default.aspx");
        }
    }
}