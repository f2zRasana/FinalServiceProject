using SKU.BLL.Labs;
using SKU.BLL.Refahies;
using SKU.Entities.Labs;
using SKU.Entities.Refahies;
using System;
using System.Collections.Generic;
using System.Data;
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
                //BindGridview_modal();
            }
                    
           
        }

        //private void BindGridview_modal()
        //{
        //    String[] spr = { "از", "تا" };
        //    Int32 count = 2;
        //    string title = gridView.SelectedRow.Cells[1].Text;
        //    string[] tmp = gridView.SelectedRow.Cells[2].Text.Split(spr, count, StringSplitOptions.RemoveEmptyEntries);
        //    string startActiveTime = tmp[0];
        //    string endActiveTime = tmp[1];
        //    DataTable dt = new DataTable();
        //    dt.Columns.AddRange(new DataColumn[3] { new DataColumn("Title"), new DataColumn("StartActiveTime"), new DataColumn("EndActiveTime") });
        //    dt.Rows.Add(title, startActiveTime, endActiveTime);
        //    gridView_modal.DataSource = dt;
        //    gridView_modal.DataBind();
        //    //try
        //    //{
        //    //    Lab lab = new Lab();
        //    //    LabManager labManager = new LabManager();
        //    //    List<Lab> allLab = labManager.SelectAllLabTitles();
        //    //    gridView.DataSource = allLab;
        //    //    gridView.DataBind();
        //    //}
        //    //catch
        //    //{

        //    //}
        //}

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

        //protected void Detail_LinkButton_Click(object sender, EventArgs e)
        //{
        //    String[] spr = { "از", "تا" };
        //    Int32 count = 2;
        //    string title = gridView.SelectedRow.Cells[1].Text;
        //    string[] tmp = gridView.SelectedRow.Cells[2].Text.Split(spr, count, StringSplitOptions.RemoveEmptyEntries);
        //    string startActiveTime = tmp[0];
        //    string endActiveTime = tmp[1];
        //    Title_Label.Text = title;
        //    STLabel.Text = startActiveTime;
        //    ETLabel.Text = endActiveTime;
            
        //}

        
    }
}




