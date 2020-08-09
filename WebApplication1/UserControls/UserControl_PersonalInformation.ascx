<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_PersonalInformation.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_PersonalInformation" %>

<div class="card shadow" style="border-radius: 20px; color: #603939;">
    <%-- Header --%>
    <div class="card-header" style="text-align: right;">
        <h4>اطلاعات پایه پروفایل</h4>

    </div>
    <div class="card-subtitle" style="border-radius: 20px;">
        <h6 style="text-align: center; border-radius: 20px;">
            <span class="alert alert-danger" style="border-radius: 30px;">تکمیل موارد ستاره دار (*) الزامی است</span>
        </h6>
    </div>
    <%-- Body --%>
    <div class="card-body">
        <div class="row">
            <%-- right side --%>
            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                <%-- نام --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">نام* :</span>
                    </div>
                    <asp:TextBox ID="Name_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- نام خانوادگی --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">نام خانوادگی* :</span>
                    </div>
                    <asp:TextBox ID="Family_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- نام پدر --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">نام پدر :</span>
                    </div>
                    <asp:TextBox ID="Father_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- موبایل --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">موبایل* :</span>
                    </div>
                    <asp:TextBox ID="Mobile_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- آدرس --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">آدرس* :</span>
                    </div>
                    <asp:TextBox ID="Address_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- تحصیلات --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">تحصیلات (مثال: دکترای اقلیم شناسی) :</span>
                    </div>
                    <asp:TextBox ID="Education_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- کد پستی --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">کد پستی* :</span>
                    </div>
                    <asp:TextBox ID="PostalCard_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- شهر --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">شهر* :</span>
                    </div>
                    <asp:TextBox ID="City_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- نوع کاربری --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">نوع کاربری :</span>
                    </div>
                    <asp:TextBox ID="UserType_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- نوع شخص --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">نوع شخص :</span>
                    </div>
                    <asp:TextBox ID="PersonType_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- نوع استخدام --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">نوع استخدام :</span>
                    </div>
                    <asp:TextBox ID="Employment_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
            </div>
            <%-- left side --%>
            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                <%-- تولد --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">تولد :</span>
                    </div>
                    <asp:TextBox ID="Birth_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- کشور --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">کشور :</span>
                    </div>
                    <asp:TextBox ID="Country_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- کد ملی --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">کد ملی* :</span>
                    </div>
                    <asp:TextBox ID="NationalCode_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- جنسیت --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">جنسیت :</span>
                    </div>
                    <asp:TextBox ID="Gender_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- نام سازمان --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">نام سازمان :</span>
                    </div>
                    <asp:TextBox ID="Organization_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- تلفن ثابت --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">تلفن ثابت :</span>
                    </div>
                    <asp:TextBox ID="Phone_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- سایت یا صفحه شخصی --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">سایت یا صفحه شخصی :</span>
                    </div>
                    <asp:TextBox ID="Site_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- ایمیــل --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">ایمیــل :</span>
                    </div>
                    <asp:TextBox ID="Email_TextBox" Enabled="false" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- عکس --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">عکس :</span>
                    </div>
                    <asp:TextBox ID="Photo_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding-right: 10px; padding-top: 5px; text-align: center;">
            <p style="color: #206BA4"></p>
            <p>
                <button type="button" class="btn btn-outline-secondary rounded-pill"><asp:Label ID="LinkButton_Submit" runat="server">ثبت اطلاعات</asp:Label></button>
            </p>
        </div>
    </div>
</div>
<script src="../bootstrap-4.3.1/js/bootstrap.min.js"></script>
<link href="../bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
