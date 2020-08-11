using SKU.BLL.Newss;
using SKU.Entities.Newss;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.UserControls
{
    public partial class UserControl_News : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string pageName = Request.Url.Segments.Last();
                NewsManager newsManager = new NewsManager();
                List<News> allNews = newsManager.GetNews(pageName);

                for (int i = 0; i < allNews.Count; i++)
                {
                    if (allNews[i].FilePathImage == null)
                        allNews[i].FilePathImage = " ";
                }

                ListNews.DataSource = allNews;
                ListNews.DataBind();
            }
        }
    }
}