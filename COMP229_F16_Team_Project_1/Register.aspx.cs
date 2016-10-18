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

namespace COMP229_F16_Team_Project_1 {

    public partial class Register : System.Web.UI.Page {

        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void registerUser(object sender, EventArgs e) {

            // create new userStore and userManager objects
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);

            // create a new user object
            var user = new IdentityUser() {
                UserName = name.Value,
                Email = email1.Value
            };

            // create a new user in the db and store the results
            IdentityResult result = userManager.Create(user, password1.Value);

            // check if successfully registered?
            if (result.Succeeded) {
                // authenticate and login our new user
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                // sign in the user
                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

                // Redirect to the Main Menu Page
                Response.Redirect("~/Contoso/MainMenu.aspx");
            } else {
                // display error in the AlertFlash div
                //StatusLabel.Text = result.Errors.FirstOrDefault();
                //AlertFlash.Visible = true;
            }

        }
    }
}