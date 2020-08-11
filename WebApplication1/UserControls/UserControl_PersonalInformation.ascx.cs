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
                if (user.Name != null)
                    Name_TextBox.Text = user.Name;
                if (user.Family != null)
                    Family_TextBox.Text = user.Family;
                if (user.Father != null)
                    Father_TextBox.Text = user.Father;
                if (user.Mobile != 0)
                    Mobile_TextBox.Text = user.Mobile.ToString();
                if (user.Address != null)
                    Address_TextBox.Text = user.Address;
                if (user.Education != null)
                    Education_TextBox.Text = user.Education;
                if (user.PostalCard != 0)
                    PostalCard_TextBox.Text = user.PostalCard.ToString();
                if (user.City != null)
                    City_TextBox.Text = user.City;
                switch (user.UserType)
                {
                    case "student":
                        UserType_DropDownList.Items[1].Selected = true;
                        break;
                    case "employee":
                        UserType_DropDownList.Items[2].Selected = true;
                        break;
                    case "faculty":
                        UserType_DropDownList.Items[3].Selected = true;
                        break;
                    case "corporative":
                        UserType_DropDownList.Items[4].Selected = true;
                        break;
                    case "retired":
                        UserType_DropDownList.Items[5].Selected = true;
                        break;
                    case "other":
                        UserType_DropDownList.Items[6].Selected = true;
                        break;
                    default:
                        UserType_DropDownList.Items[0].Selected = true;
                        break;
                }
                switch (user.PersonType)
                {
                    case "natural":
                        PersonType_DropDownList.Items[1].Selected = true;
                        break;
                    case "juridical":
                        PersonType_DropDownList.Items[2].Selected = true;
                        break;
                    default:
                        PersonType_DropDownList.Items[0].Selected = true;
                        break;
                }
                switch (user.Employment)
                {
                    case "permanent":
                        Employment_DropDownList.Items[1].Selected = true;
                        break;
                    case "conventional":
                        Employment_DropDownList.Items[2].Selected = true;
                        break;
                    case "contractual":
                        Employment_DropDownList.Items[2].Selected = true;
                        break;
                    default:
                        Employment_DropDownList.Items[0].Selected = true;
                        break;
                }
                if (user.Birth != null)
                    Birth_TextBox.Text = user.Birth.ToShortDateString();
                switch (user.Country)
                {
                    case "iran":
                        Country_DropDownList.Items[1].Selected = true;
                        break;
                    case "other":
                        Country_DropDownList.Items[2].Selected = true;
                        break;
                    default:
                        Country_DropDownList.Items[0].Selected = true;
                        break;
                }
                if (user.NationalCode != 0)
                    NationalCode_TextBox.Text = user.NationalCode.ToString();
                if (user.Gender == true)
                    Gender_DropDownList.Items[1].Selected = true;
                else
                    Gender_DropDownList.Items[0].Selected = true;
                if (user.Organization != null)
                    Organization_TextBox.Text = user.Organization;
                if (user.Phone != 0)
                    Phone_TextBox.Text = user.Phone.ToString();
                if (user.Site != null)
                    Site_TextBox.Text = user.Site;
                //if (user.Photo != null)
                //    Photo_TextBox.Text = user.Photo;

            }
        }

        protected void Submit_Button_Click(object sender, EventArgs e)
        {
            User user = new User();
            if(Name_TextBox.Text!=null &&
                Family_TextBox.Text != null &&
                Mobile_TextBox.Text != null &&
                Address_TextBox.Text != null &&
                NationalCode_TextBox.Text != null )
            {
                user.Name = Name_TextBox.Text;
                user.Family = Family_TextBox.Text;
                if(Father_TextBox.Text!="")
                    user.Father = Father_TextBox.Text;
                user.Mobile = Int64.Parse(Mobile_TextBox.Text);
                user.Address = Address_TextBox.Text;
                if (Education_TextBox.Text != "")
                    user.Education = Education_TextBox.Text;
                if (PostalCard_TextBox.Text != "")
                    user.PostalCard = Int32.Parse(PostalCard_TextBox.Text);
                if (City_TextBox.Text != "")
                    user.City = City_TextBox.Text;
                user.UserType = UserType_DropDownList.Text;
                user.PersonType = PersonType_DropDownList.Text;
                user.Employment = Employment_DropDownList.Text;
                user.Birth = DateTime.Parse(Birth_TextBox.Text);
                user.Country = Country_DropDownList.Text;
                user.NationalCode = Int32.Parse(NationalCode_TextBox.Text);
                if (Int32.Parse(Gender_DropDownList.SelectedItem.Value) == 0)
                    user.Gender = false;
                else
                    user.Gender = true;
                if (Organization_TextBox.Text != "")
                    user.Organization = Organization_TextBox.Text;
                if (Phone_TextBox.Text != "")
                    user.Phone = Int64.Parse(Phone_TextBox.Text);
                if (Site_TextBox.Text != "")
                    user.Site = Site_TextBox.Text;
                user.Photo = "";
                user.Email = Email_TextBox.Text;
                user.Access = true;
                UserManager userManager = new UserManager();
                if (userManager.UpdateUserInformation(user))
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
            else
            {
                Success_Label.Visible = false;
                Warning_Label.Visible = true;
            }
        }
    }
}