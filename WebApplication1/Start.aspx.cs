using SKU.BLL.Users;
using SKU.Entities.Users;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using WebApplication1.UserControls;

namespace WebApplication1
{
    public partial class Start : System.Web.UI.Page
    {
        public static string Email { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString.Count > 0)
                {
                    UserEmail_HiddenField.Value = Request.QueryString["email"].ToString();
                    Email= Request.QueryString["email"].ToString(); 
                    if (UserEmail_HiddenField.Value == "admin@sku.ir")
                    {
                        admin.Visible = true;
                        UserControl_PersonalInformation.Visible = false;
                        User_Label.Text = "Admin";
                    }
                    else
                    {
                        UserManager userManager = new UserManager();
                        if (!userManager.HaveAccess(UserEmail_HiddenField.Value))
                        {
                            admin.Visible = false;
                            UserControl_PersonalInformation.Visible = true;
                            UserControl_PersonalInformation.Email = UserEmail_HiddenField.Value;
                        }
                        User user = userManager.SelectUser(Email);
                        User_Label.Text = user.Name + " " + user.Family;
                    }
                }
            }
        }

        [WebMethod]
        public static string ChangePassword(string email)
        {
            Page page = new Page();
            var userControl = (UserControl)page.LoadControl("~/UserControls/UserControl_PasswordChange.ascx");
            UserControl_PasswordChange userControl_PasswordChange = (UserControl_PasswordChange)userControl;
            userControl_PasswordChange.Email = email;
            userControl.EnableViewState = false;

            HtmlForm form = new HtmlForm();
            form.Controls.Add(userControl);
            page.Controls.Add(form);
            StringWriter textWriter = new StringWriter();
            HttpContext.Current.Server.Execute(page, textWriter, false);
            return textWriter.ToString();
        }

        [WebMethod]
        public static string PersonalInformation(string email)
        {
            
            Page page = new Page();
            var userControl = (UserControl)page.LoadControl("~/UserControls/UserControl_PersonalInformation.ascx");
            UserControl_PersonalInformation userControl_PersonalInformation = (UserControl_PersonalInformation)userControl;
            userControl_PersonalInformation.Email = email;
            userControl.EnableViewState = false;

            HtmlForm form = new HtmlForm();
            form.Controls.Add(userControl);
            page.Controls.Add(form);
            StringWriter textWriter = new StringWriter();
            HttpContext.Current.Server.Execute(page, textWriter, false);
            return textWriter.ToString();
        }

        protected void LogoutButton_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}