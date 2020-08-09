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
    public partial class UserControl_PersonalInformation : System.Web.UI.UserControl
    {
        public string Email { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Email_TextBox.Text = Email;
                UserManager userManager = new UserManager();
                User user = userManager.SelectUser(Email);
                if (user.Name != "")
                    Name_TextBox.Text = user.Name;
                if (user.Family != "")
                    Family_TextBox.Text = user.Family;
                if (user.Father != "")
                    Father_TextBox.Text = user.Father;
                if (user.Mobile.ToString() != "")
                    Mobile_TextBox.Text = user.Mobile.ToString();
                if (user.Address != "")
                    Address_TextBox.Text = user.Address;
                if (user.Education != "")
                    Education_TextBox.Text = user.Education;
                if (user.PostalCard.ToString() != "")
                    PostalCard_TextBox.Text = user.PostalCard.ToString();
                if (user.City != "")
                    City_TextBox.Text = user.City;
                if (user.UserType != "")
                    UserType_TextBox.Text = user.UserType;
                if (user.PersonType != "")
                    PersonType_TextBox.Text = user.PersonType;
                if (user.Employment != "")
                    Employment_TextBox.Text = user.Employment;
                if (user.Birth.ToLongDateString() != "")
                    Birth_TextBox.Text = user.Birth.ToLongDateString();
                if (user.Country != "")
                    Country_TextBox.Text = user.Country;
                if (user.NationalCode.ToString() != "")
                    NationalCode_TextBox.Text = user.NationalCode.ToString();
                if (user.Gender.ToString() != "")
                    Gender_TextBox.Text = user.Gender.ToString();
                if (user.Organization != "")
                    Organization_TextBox.Text = user.Organization;
                if (user.Phone.ToString() != "")
                    Phone_TextBox.Text = user.Phone.ToString();
                if (user.Site != "")
                    Site_TextBox.Text = user.Site;
                if (user.Photo != "")
                    Photo_TextBox.Text = user.Photo;

            }
        }
    }
}