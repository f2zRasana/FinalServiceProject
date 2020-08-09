<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_PasswordChange.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_PasswordChange" %>
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<asp:UpdatePanel ID="UpdatePanel1" runat="server" ViewStateMode="Enabled"
    EnableViewState="true" UpdateMode="Always">
    <ContentTemplate>
        <div class="card shadow" style="border-radius: 20px; color: #603939;">
            <%-- Header --%>
            <div class="card-header" style="text-align: right;">
                <h4>تغییر کلمه عبور</h4>
            </div>
            <%-- Body --%>
            <div class="card-body" style="direction: rtl;">
                <%-- Alter Boxes --%>
                <asp:Label ID="Success_Label" runat="server" Text="" Visible="false">
                <div class="alert alert-success alert-dismissible">
                    <strong>عملیات با موفقیت انجام شد!</strong>
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                </div>
                </asp:Label>
                <asp:Label ID="Warning_Label" runat="server" Text="" Visible="false">
                <div class="alert alert-warning alert-dismissible">
                    <strong>عملیات با شکست مواجه شد! مجددا تلاش کنید.</strong>
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                </div>
                </asp:Label>
                <%-- Password_TextBox --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text fa fa-lock" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">&nbsp;</span>
                    </div>
                    <asp:TextBox ID="Password_TextBox" TextMode="Password" runat="server" CssClass="form-control" placeholder="کلمه عبور فعلی" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- NewPassword_TextBox --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text fa fa-reply" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;"></span>
                    </div>
                    <asp:TextBox ID="NewPassword_TextBox" TextMode="Password" runat="server" CssClass="form-control" placeholder="کلمه عبور جدید" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- NewPassword_Confirm_TextBox --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text fa fa-reply-all" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;"></span>
                    </div>
                    <asp:TextBox ID="NewPassword_Confirm_TextBox" TextMode="Password" runat="server" CssClass="form-control" placeholder="تکرار کلمه عبور جدید" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- Confirm/Dismiss Button --%>
                <div class="input-group mb-3">
                    <asp:Button ID="Confirm_Button" runat="server" Text="تغییر کلمه عبور" CssClass="btn btn-outline-info btn-block" Style="border-radius: 20px; font-size: larger;" />
                    <asp:Button ID="Dismiss_Button" runat="server" OnClick="Dismiss_Button_Click" Text="انصراف" CssClass="btn btn-outline-dark btn-block" Style="border-radius: 20px; font-size: larger;" />
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
<script src="../bootstrap-4.3.1/js/bootstrap.min.js"></script>
<link href="../bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
