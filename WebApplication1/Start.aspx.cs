using SKU.BLL.Users;
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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString.Count > 0)
                {
                    UserEmail_HiddenField.Value = Request.QueryString["email"].ToString();
                    UserManager userManager = new UserManager();
                    if (!userManager.HaveAccess(UserEmail_HiddenField.Value))
                    {
                        UserControl_PersonalInformation.Visible = true;
                        UserControl_PersonalInformation.Email = UserEmail_HiddenField.Value;
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
    }
}