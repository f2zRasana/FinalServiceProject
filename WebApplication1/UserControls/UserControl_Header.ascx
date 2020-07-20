<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_Header.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_Header" %>

<div class="row" style="direction: rtl; font-family: 'B Mitra';">
    <%-- Header Image --%>
    <div class="col-12 col-sm-12 col-md-2 col-lg-2 pull-right" style="text-align: right;">
        <asp:Image ID="Image_HeaderLab" runat="server" ImageUrl="~/Images/9755310_erpLogo_sku_justTitle_Az.png" CssClass="" Style="margin-top: 16px; max-width: 300px; max-height: 42px;" />
    </div>
    <%-- Header Search Bar --%>
    <div class="col-9 col-sm-9 col-md-5 col-lg-5 pull-right" style="text-align: right;">
        <asp:TextBox ID="TextBox_Search" runat="server" placeholder="بخش، منبع یا سرویس مورد نظر خود را جستجو کنید..." CssClass="form-control focus" Style="font-size: 20px; display: inline-block !important; margin-top: 18px; border-radius: 0px; border-top-right-radius: 6px; border-bottom-right-radius: 6px; border-color: white; background-color: #eceff1; color: #8b8b8b; width: 85%; height: 40px;"></asp:TextBox>
        <asp:LinkButton ID="LinkButton_Search" runat="server" CssClass="btn-sm btn-primary fa fa-search" Style="background-color: #ef5661; border-radius: 0px; border-bottom-left-radius: 6px; border-top-left-radius: 6px; text-decoration: none; color: #dadada !important; font-size: 18px; cursor: pointer; float: left; width: 15%; margin-top: 19px; height: 39px; text-align: center; padding-top:9px;"></asp:LinkButton>
    </div>
    <%-- Header Login Button --%>
    <div class="col-3 col-sm-3 col-md-5 col-lg-5" style="direction: ltr">
        <asp:Button ID="LinkButton_Login" runat="server" Text="ورود / ثبت نام" CssClass="btn btn-xs btn-outline btn-info" Style="margin-top: 18px; height: 39px; background-color: white; color: #46b8da; border-radius: 10px; font-size: 18px;" />
    </div>

    <script src="../Scripts/jquery-3.5.1.min.js"></script>

</div>
