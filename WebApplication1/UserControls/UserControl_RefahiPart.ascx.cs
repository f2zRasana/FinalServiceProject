using SKU.BLL.Refahies;
using SKU.Entities.Refahies;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.UserControls
{
    public partial class UserControl_RefahiPart : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RefPartsManager refManager = new RefPartsManager();
            List<RefParts> allLabs = refManager.SelectAllParts();
            for (int i = 0; i < allLabs.Count; i++)
            {
                if (allLabs[i].Item1 == null)
                    allLabs[i].Item1 = " ";
                if (allLabs[i].Item2 == null)
                    allLabs[i].Item2 = " ";
                if (allLabs[i].Item3 == null)
                    allLabs[i].Item3 = " ";
               

            }

            ListRef.DataSource = allLabs;
            ListRef.DataBind();
        }

        protected void ListRef_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            for (int i = 1; i < 4; i++)
            {

                if (((Label)e.Item.FindControl("Label" + i.ToString())).Text == " ")
                {
                    ((Label)e.Item.FindControl("Label_" + i.ToString())).Visible = false;
                }


            }
        }
    }

}