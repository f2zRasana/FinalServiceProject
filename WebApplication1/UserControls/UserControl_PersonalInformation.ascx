﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_PersonalInformation.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_PersonalInformation" %>

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
        <%-- Alter Boxes --%>
            <asp:Label ID="Success_Label" runat="server" Text="" Visible="false">
                <div class="alert alert-success alert-dismissible">
                    <strong>اطلاعات شما با موفقیت ثبت شد!</strong>
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                </div>
            </asp:Label>
            <asp:Label ID="Warning_Label" runat="server" Text="" Visible="false">
                <div class="alert alert-warning alert-dismissible">
                    <strong>عملیات با شکست مواجه شد! لطفا از پر کردن همه ی فیلد های ستاره دار اطمینان حاصل کنید.</strong>
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                </div>
            </asp:Label>
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
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">کد پستی :</span>
                    </div>
                    <asp:TextBox ID="PostalCard_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- شهر --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">شهر :</span>
                    </div>
                    <asp:TextBox ID="City_TextBox" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- نوع کاربری --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">نوع کاربری :</span>
                    </div>
                    <asp:DropDownList ID="UserType_DropDownList" CssClass="browser-default custom-select" runat="server" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px">
                        <asp:ListItem Value="choose">انتخاب کنید</asp:ListItem>
                        <asp:ListItem Value="student">دانشجو</asp:ListItem>
                        <asp:ListItem Value="employee">کارمند</asp:ListItem>
                        <asp:ListItem Value="faculty">استاد (هیات علمی)</asp:ListItem>
                        <asp:ListItem Value="corporative">شرکتی</asp:ListItem>
                        <asp:ListItem Value="retired">بازنشسته</asp:ListItem>
                        <asp:ListItem Value="other">سایر</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <%-- نوع شخص --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">نوع شخص :</span>
                    </div>
                    <asp:DropDownList ID="PersonType_DropDownList" CssClass="browser-default custom-select" runat="server" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px">
                        <asp:ListItem Value="choose">انتخاب کنید</asp:ListItem>
                        <asp:ListItem Value="natural">حقیقی</asp:ListItem>
                        <asp:ListItem Value="juridical">حقوقی</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <%-- نوع استخدام --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">نوع استخدام :</span>
                    </div>
                    <asp:DropDownList ID="Employment_DropDownList" CssClass="browser-default custom-select" runat="server" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px">
                        <asp:ListItem Value="choose">انتخاب کنید</asp:ListItem>
                        <asp:ListItem Value="permanent">رسمی</asp:ListItem>
                        <asp:ListItem Value="conventional">قراردادی</asp:ListItem>
                        <asp:ListItem Value="contractual">پیمانی</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <%-- left side --%>
            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                <%-- تولد --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">تولد :</span>
                    </div>
                    <asp:TextBox ID="Birth_TextBox" TextMode="Date" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- کشور --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">کشور :</span>
                    </div>
                    <asp:DropDownList ID="Country_DropDownList" CssClass="browser-default custom-select" runat="server" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px">
                        <asp:ListItem Value="choose">انتخاب کنید</asp:ListItem>
                        <asp:ListItem Value="iran">ایران</asp:ListItem>
                        <asp:ListItem Value="other">سایر</asp:ListItem>
                    </asp:DropDownList>
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
                    <asp:DropDownList ID="Gender_DropDownList" CssClass="browser-default custom-select" runat="server" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px">
                        <asp:ListItem Value="0">زن</asp:ListItem>
                        <asp:ListItem Value="1">مرد</asp:ListItem>
                    </asp:DropDownList>
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
                    <asp:TextBox ID="Email_TextBox" Enabled="false" TextMode="Email" runat="server" CssClass="form-control" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                </div>
                <%-- عکس --%>
                <div class="input-group mb-3" style="font-size: larger;">
                    <div class="input-group-append">
                        <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #878f99; color: white; border-color: #878f99;">عکس :</span>
                    </div>

                    <div class="custom-file" style="font-size:medium;">
                        <input type="file" class="custom-file-input" id="customFile" name="filename">
                        <label class="custom-file-label" for="customFile" style="border-bottom-left-radius: 40px; border-top-left-radius: 40px">Choose file</label>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding-right: 10px; padding-top: 5px; text-align: center;">
            <p style="color: #206BA4"></p>
            <p>
                <asp:Button ID="Submit_Button" runat="server" OnClick="Submit_Button_Click" Text="ثبت اطلاعات" CssClass="btn btn-outline-secondary rounded-pill" />
            </p>
        </div>
    </div>
</div>
<script src="../bootstrap-4.3.1/js/bootstrap.min.js"></script>
<link href="../bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script>
    // Add the following code if you want the name of the file appear on select
    $(".custom-file-input").on("change", function () {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
</script>
