using SKU.BLL.Users;
using SKU.Entities.Users;
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

        protected void Confirm_Button_Click(object sender, EventArgs e)
        {
            if (Password_TextBox.Text != "" &&
                NewPassword_TextBox.Text != ""
                && NewPassword_Confirm_TextBox.Text != ""
                && NewPassword_TextBox.Text == NewPassword_Confirm_TextBox.Text)
            {
                User user = new User();
                user.Email = Email;
                user.Password = NewPassword_TextBox.Text;
                UserManager userManager = new UserManager();
                if (userManager.LoginUser(user))
                {
                    if (userManager.UpdatePassword(user, NewPassword_TextBox.Text))
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage_Success();", true);

                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage_Warning();", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage_Warning();", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage_Warning();", true);
            }
        }

        protected void Dismiss_Button_Click(object sender, EventArgs e)
        {
            
        }
    }
}