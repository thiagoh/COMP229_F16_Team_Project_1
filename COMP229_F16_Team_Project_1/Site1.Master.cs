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
    public partial class Site1 : System.Web.UI.MasterPage {

        public bool loggedIn { get; set; }

        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {

                // check is a user is logged in
                loggedIn = HttpContext.Current.User.Identity.IsAuthenticated;
            }
        }
    }
}