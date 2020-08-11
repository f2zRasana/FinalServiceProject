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
    public partial class UserControl_MainMenu : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LabManager labManager = new LabManager();
                List<Lab> allLabs = labManager.SelectAllLab();

                RefPartsManager refPartsManager = new RefPartsManager();
                List<RefParts> refParts = refPartsManager.SelectAllParts();



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


                }
                for (int i = 0; i < refParts.Count; i++)
                {
                    if (refParts[i].Item1 == null)
                        refParts[i].Item1 = " ";

                    if (refParts[i].Item2 == null)
                        refParts[i].Item2 = " ";

                    if (refParts[i].Item3 == null)
                        refParts[i].Item3 = " ";
                }

                ListLabs.DataSource = allLabs;
                ListLabs.DataBind();
                ListParts.DataSource = refParts;
                ListParts.DataBind();


            }            
        }

    }
}