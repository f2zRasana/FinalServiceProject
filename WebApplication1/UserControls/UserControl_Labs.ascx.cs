using SKU.BLL.Labs;
using SKU.Entities.Labs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.UserControls
{
    public partial class UserControl_Labs : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LabManager labManager = new LabManager();
                List<Lab> allLabs = labManager.SelectAll();
                for (int i = 0; i < allLabs.Count; i++)
                {
                    if (allLabs[i].Item1 == null)
                        allLabs[i].Item1 = " ";
                    if (allLabs[i].Item2 == null)
                        allLabs[i].Item2 = " ";
                    if (allLabs[i].Item3 == null)
                        allLabs[i].Item3 = " ";
                    if (allLabs[i].Item4 == null)
                        allLabs[i].Item4 = " ";
                    if (allLabs[i].Item5 == null)
                        allLabs[i].Item5 = " ";
                    if (allLabs[i].Item6 == null)
                        allLabs[i].Item6 = " ";
                    if (allLabs[i].Item7 == null)
                        allLabs[i].Item7 = " ";
                    if (allLabs[i].Item8 == null)
                        allLabs[i].Item8 = " ";
                }
                ListLabs.DataSource = allLabs;
                ListLabs.DataBind();
            }
            
        }

        
        protected void ListLabs_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            
        }
    }
}