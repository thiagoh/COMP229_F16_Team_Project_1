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

namespace COMP229_F16_Team_Project_1 {

    public partial class Register : System.Web.UI.Page {

        protected void Page_Load(object sender, EventArgs e) {

            if (!IsPostBack) {
                errorBox.Visible = false;
                errorBox.InnerText = "";
            }
        }

        protected void registerUser(object sender, EventArgs e) {

            // create new userStore and userManager objects
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);
            userManager.UserValidator = new UserValidator<IdentityUser>(userManager) {
                AllowOnlyAlphanumericUserNames = false
            };

            Debug.WriteLine("user name: " + email1.Value);
            Debug.WriteLine("email: " + email1.Value);

            // create a new user object
            var user = new IdentityUser() {
                UserName = email1.Value,
                Email = email1.Value,
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
                Response.Redirect("~/Default.aspx");
            } else {
                // display error in the AlertFlash div
                errorBox.Visible = true;
                errorBox.InnerText = result.Errors.FirstOrDefault();
            }

        }
    }
}