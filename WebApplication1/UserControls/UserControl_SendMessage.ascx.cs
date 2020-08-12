using SKU.BLL.Main;
using SKU.Entities.Main;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.UserControls
{
    public partial class UserControl_SendMessage : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridview(0, 3);

            }

        }

        private void BindGridview_D(int pageIndex, int pageSize)
        {
            try
            {
                int total;
                NewMessageManager newMessageManager = new NewMessageManager();
                List<NewMessage> allNewMessages = newMessageManager.SelectAllWithPaging(pageIndex, pageSize, out total);
                gridView2.VirtualItemCount = total;
                gridView2.PageSize = pageSize;
                gridView2.PageIndex = pageIndex;
                gridView2.DataSource = allNewMessages;
                gridView2.DataBind();
            }
            catch (Exception exp)
            {

            }

        }
        protected void gridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                int total = 0;
                int pageIndex = e.NewPageIndex;
                NewMessageManager newMessageManager = new NewMessageManager();
                List<NewMessage> allMessage = newMessageManager.SelectAllWithPaging(pageIndex, 3, out total);
                gridView1.VirtualItemCount = total;
                gridView1.PageSize = 3;
                gridView1.PageIndex = pageIndex;
                gridView1.DataSource = allMessage;
                gridView1.DataBind();
            }
            catch (Exception exp)
            {

            }

        }
        protected void Drafts_Click(object sender, EventArgs e)
        {

            if (DraftMessage.Visible == false)
            {
                DraftMessage.Visible = true;
                BindGridview_D(0, 3);
            }
            else
            {
                DraftMessage.Visible = false;
            }


        }


        private void BindGridview(int pageIndex, int pageSize)
        {
            try
            {
                int total;
                ReceiverManager receiverManager = new ReceiverManager();
                List<Receivers> allReceivers = receiverManager.SelectAllWithPaging(pageIndex, pageSize, out total);
                gridView1.VirtualItemCount = total;
                gridView1.PageSize = pageSize;
                gridView1.PageIndex = pageIndex;
                gridView1.DataSource = allReceivers;
                gridView1.DataBind();

            }
            catch (Exception exp)
            {

            }
        }
        protected void gridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                int total = 0;
                int pageIndex = e.NewPageIndex;
                ReceiverManager receiverManager = new ReceiverManager();
                List<Receivers> allNews = receiverManager.SelectAllWithPaging(pageIndex, 3, out total);
                gridView1.VirtualItemCount = total;
                gridView1.PageSize = 3;
                gridView1.PageIndex = pageIndex;
                gridView1.DataSource = allNews;
                gridView1.DataBind();
            }
            catch (Exception exp)
            {

            }


        }
        protected void Draft_btn_Click(object sender, EventArgs e)
        {
            if (TextBox_Receiver.Text != "")
            {
                NewMessage newMessage = new NewMessage();
                newMessage.Receiver = TextBox_Receiver.Text;
                newMessage.Title = TextBox_Title.Text;
                newMessage.Body = Text_body.Text;
                newMessage.Attachement = FileUpload_File.FileName;
                NewMessageManager newMessageManager = new NewMessageManager();
                if (newMessageManager.InsertMessage(newMessage))
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

        }
    }
}