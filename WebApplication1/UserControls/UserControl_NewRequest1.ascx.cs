using SKU.BLL.Labs;
using SKU.BLL.Refahies;
using SKU.Entities.Labs;
using SKU.Entities.Refahies;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.UserControls
{
    public partial class UserControl_NewRequest1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack) {

                BindDropDown();

                BindGridview(0, 20);


            }
                    
           
        }
       

        private void BindDropDown()
        {
            try
            {
                LabManager labManager = new LabManager();
                List<Lab> allLabs = labManager.SelectTitle();
                for (int i = 0; i < allLabs.Count; i++)
                {
                    DropDownList_Parts.Items.Add(new ListItem(allLabs[i].Title));
                }
            }
            catch
            {

            }
        }

        private void BindGridview(int pageIndex, int pageSize)
        {
            try
            {
                int total;
                Lab lab = new Lab();
                LabManager labManager = new LabManager();
                List<Lab> allLab = labManager.SelectAllWithPaging(pageIndex, pageSize, out total);
                gridView.VirtualItemCount = total;
                gridView.PageSize = pageSize;
                gridView.PageIndex = pageIndex;
                gridView.DataSource = allLab;
                gridView.DataBind();
            }
            catch
            {

            }
        }

        protected void gridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            try
            {
                int total = 0;
                int pageIndex = e.NewPageIndex;
                LabManager labManager = new LabManager();
                List<Lab> allLab = labManager.SelectAllWithPaging(pageIndex, 20, out total);
                gridView.VirtualItemCount = total;
                gridView.PageSize = 20;
                gridView.PageIndex = pageIndex;
                gridView.DataSource = allLab;
                gridView.DataBind();
            }
            catch (Exception exp)
            {

            }
        }
    }
}




