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

/*
    Login.aspx.cs
    COMP229 Team Project 1 - Game Tracker
    Thiago de Andrade Souza 300886181
    Edward Song 300915530
    Created on 2016-10-26
    Summary: This is used the user login
*/


namespace COMP229_F16_Team_Project_1 {
    public partial class Login : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

            if (!IsPostBack) {
                errorBox.Visible = false;
                errorBox.InnerText = "";
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e) {
            // create new userStore and userManager objects
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);

            // search for and create a new user object
            var user = userManager.Find(email.Value, password.Value);

            // if a match is found for the user
            if (user != null) {
                // authenticate and login our user
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                // sign in the user
                authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);

                // redirect the user to the main menu
                Response.Redirect("~/Default.aspx");
            } else {

                // user is not found
                errorBox.Visible = true;
                errorBox.InnerText= "Invalid Username or Password";
            }
        }
    }
}