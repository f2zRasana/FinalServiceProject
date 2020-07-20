using SKU.BLL.Users;
using SKU.Entities.Users;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NewUser_Button_Click(object sender, EventArgs e)
        {
            if (NewUsername_TextBox.Text != "" && NewPassword_TextBox.Text != "" && NewPasswordRepeat_TextBox.Text != "" && NewPassword_TextBox.Text == NewPasswordRepeat_TextBox.Text)  
            {
                User user = new User();
                user.Email = NewUsername_TextBox.Text;
                user.Password = NewPassword_TextBox.Text;
                UserManager userManager = new UserManager();
                if (userManager.InsertUser(user))
                {
                    Success_Label.Visible = true;
                    Warning_Label.Visible = false;
                }
                else
                {
                    Success_Label.Visible = false;
                    Warning_Label.Visible = true;
                }
            }
        }

        protected void Login_Button_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.Email = Username_TextBox.Text;
            user.Password = Password_TextBox.Text;
            UserManager userManager = new UserManager();
            if (userManager.LoginUser(user))
            {
                Response.Redirect("Start.aspx");
            }
            else
            {
                Success_Label.Visible = false;
                Warning_Label.Visible = true;
            }
        }
    }
}