using SKU.BLL.HeaderImages;
using SKU.Entities.HeaderImages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.UserControls
{
    public partial class UserControl_Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string title = Request.Url.Segments.Last();
            HeaderImageManager headerImageManager = new HeaderImageManager();
            HeaderImage headerImage = headerImageManager.GetImage(title);
            Image_Header.ImageUrl = headerImage.FilePathImage;
        }

        protected void LinkButton_Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void LinkButton_Search_Click(object sender, EventArgs e)
        {
            //if (TextBox_Search.Text != null)
            //{
            //    if (TextBox_Search.Text == "آزمایشگاه")
            //    {
            //        Response.Redirect("WebForm1.aspx");
            //    }

            //}
        }
    }
}