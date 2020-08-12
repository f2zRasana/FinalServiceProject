<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_Header.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_Header" %>

<div class="row" style="direction: rtl; font-family: 'B Mitra';">
    <%-- Header Image --%>
    <div class="col-12 col-sm-12 col-md-2 col-lg-2 pull-right" style="text-align: right;">
        <asp:Image ID="Image_Header" runat="server" ImageUrl='<%# Eval("FilePathImage") %>' CssClass="" Style="margin-top: 16px; max-width: 300px; max-height: 42px;" />
    </div>
    <%-- Header Search Bar --%>
    <div class="col-9 col-sm-9 col-md-5 col-lg-5 pull-right" style="text-align: right;">
        <asp:TextBox ID="TextBox_Search" runat="server" placeholder="بخش، منبع یا سرویس مورد نظر خود را جستجو کنید..." CssClass="form-control focus" Style="font-size: 20px; display: inline-block !important; margin-top: 18px; border-radius: 0px; border-top-right-radius: 6px; border-bottom-right-radius: 6px; border-color: white; background-color: #eceff1; color: #8b8b8b; width: 85%; height: 40px;"></asp:TextBox>
        <asp:LinkButton ID="LinkButton_Search" runat="server" CssClass="btn-sm btn-primary fa fa-search" Style="background-color: #ef5661; border-radius: 0px; border-bottom-left-radius: 6px; border-top-left-radius: 6px; text-decoration: none; color: #dadada !important; font-size: 18px; cursor: pointer; float: left; width: 15%; margin-top: 19px; height: 39px; text-align: center;"></asp:LinkButton>
    </div>
    <%-- Header Login Button --%>
    <div class="col-3 col-sm-3 col-md-5 col-lg-5" style="direction: ltr">
        <asp:LinkButton ID="LinkButton_Login" runat="server" OnClick="LinkButton_Login_Click" Text="ورود / ثبت نام" CssClass="btn btn-xs btn-outline btn-info" Style="margin-top: 18px; height: 39px; background-color: white; color: #46b8da; border-radius: 10px; font-size: 18px; margin-left:10px; " />
    </div>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<%--<<%--script src="../Scripts/jquery-3.5.1.min.js"></script>

<link href="../bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="../bootstrap-4.3.1/js/bootstrap.min.js"></script>--%>
</div>

