using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.UserControls
{
    public partial class UserControl_PasswordChange : System.Web.UI.UserControl
    {
        public string Email { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Dismiss_Button_Click(object sender, EventArgs e)
        {
            Password_TextBox.Text = "1230";
        }
    }
}