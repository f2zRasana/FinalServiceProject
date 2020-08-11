<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="WebApplication1.Start" %>

<%@ Register Src="~/UserControls/UserControl_PersonalInformation.ascx" TagPrefix="sku" TagName="UserControl_PersonalInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body onchange="RespnsePage()" style=" font-family: 'B Mitra'; background-image: url('Images/Start_Background.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-size: 100% 100%;">
    <form id="form1" runat="server">
        <asp:HiddenField ID="UserEmail_HiddenField" runat="server" ClientIDMode="Static" />

        <div class="container-fluid">
            <%-- Header --%>
            <div class="row" style="direction: rtl; margin-top: 10px;">
                <div class="col-2 col-sm-6 col-md-6 col-lg-6" style="float: right; background-color: #e5d2d2; color: white; border-radius: 0 50px 50px 0; height: 100px">
                    <h1>
                        <%-- Menu Toggle Button --%>
                        <a href="#" style="color: white;"><i class="fa fa-bars pull-right toggle-btn collapsed" aria-hidden="true" style="margin-top: 25px; margin-right: 10px;" data-toggle="collapse" data-target="#menu-content" aria-expanded="false" onclick="ItsToggle()"></i></a>
                        <%-- Header Title --%>
                        <span class="d-none d-sm-none d-md-block" id="Label_Title" style="color: #603939; float: right; margin-top: 15px; margin-right: 10px; font-family: 'B Tabassom'">سامانه رزرو و زمانبندی منابع</span>
                    </h1>
                </div>
                <div class="col-10 col-sm-6 col-md-6 col-lg-6" style="direction: ltr; float: left; background-color: #e5d2d2; color: white; border-radius: 50px 0px 0px 50px; height: 100px;">
                    <%-- User Image --%>
                    <img id="imageUser2" class="rounded-circle img-thumbnail pull-left " src="../Images/profile.jpg" style="max-width: 85px; max-height: 85px; margin-top: 7.5px;" />
                    <%-- Logout Button --%>
                    <a id="LogoutButton2" class="pull-left" href="javascript:__doPostBack('LogoutButton2','')" style="margin-top: 52px; margin-left: 15px; font-size: xx-large; cursor: pointer; text-decoration: none; color: white">
                        <i class="fa fa-power-off" aria-hidden="true"></i>
                    </a>
                    <%-- Message Button --%>
                    <a href="#" class="pull-left" onclick="ShowTabMenuMessage();">
                        <i class="fa fa-envelope" aria-hidden="true" style="color: white; margin-top: 55px; margin-left: 15px; font-size: xx-large"></i>
                    </a>
                    <%-- User Roles Button --%>
                    <a class="pull-left" onclick="ShowUserRoles();" id="UserRoles">
                        <i class="fa fa-user" aria-hidden="true" style="color: white; margin-top: 55px; margin-left: 15px; font-size: xx-large"></i>
                    </a>
                    <%-- Roles(not set yet)!!!!!!!!!!!!!!!!!!!!!! --%>
                    <select name="dropdown_roles_" id="dropdown_roles" class="pull-left" style="width: 0px; color: black; border-width: 0px; margin-left: 15px; margin-top: 8px; direction: rtl; margin-right: 3px; border-radius: 10px;">
                        <option value=""></option>
                        <option value="Author">متقاضی</option>
                    </select>
                    <%-- User Name & FamilyName --%>
                    <span id="label_Name2" style="font-weight: bold; color: RGB(15,90,155); font-size: 11px; visibility: hidden">زهرا نهاوندی</span>
                </div>
            </div>
            <%-- Main Content --%>
            <div class="row" style="direction: rtl; margin-top: 10px;">
                <%-- Sidebar Menu --%>
                <div id="sidebarMenu" runat="server" class="col-12 col-sm-12 col-md-2 col-lg-2" style="direction: rtl;">
                    <div id="menu-content" class="list-group out collapse" aria-expanded="false" style="z-index: 1; position: absolute; left: 0; right: 0; direction: rtl; text-align: center; font-size: 20px;">
                        <%-- صفحه اصلی سایت --%>
                        <a href="/Index.aspx" class="rounded-pill list-group-item list-group-item-action collapsed" target="_blank" style="color: #603939; background-color: #e4d1d1; border-color: #e4d1d1;">صفحه اصلی سایت</a>
                        <%-- شخصی --%>
                        <a href="#" class="rounded-pill list-group-item list-group-item-action collapsed" aria-expanded="false" data-toggle="collapse" data-target="#Personal" style="color: #603939; background-color: #e5d2d7; border-color: #e5d2d7;">شخصی</a>
                        <div id="Personal" class="list-group collapse" aria-expanded="false" style="font-size: 18px; font-weight: normal;">
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #e5d2db; border-color: #e5d2db;" onclick="ChangePassword()"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>تغییر کلمه عبور</a>
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #e5d2e0; border-color: #e5d2e0;" onclick="PersonalInformation()"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>اطلاعات پایه پروفایل</a>
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #e5d2e5; border-color: #e5d2e5;"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>کیف پول</a>
                        </div>
                        <%-- آمار --%>
                        <a href="#" class="rounded-pill list-group-item list-group-item-action collapsed" aria-expanded="false" data-toggle="collapse" data-target="#Notification" style="color: #603939; background-color: #e0d2e5; border-color: #e0d2e5;">آمار</a>
                        <div id="Notification" class="list-group collapse" aria-expanded="false" style="font-size: 18px; font-weight: normal;">
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #dbd2e5; border-color: #dbd2e5;"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>آمار</a>
                        </div>
                        <%-- درخواست‌ها --%>
                        <a href="#" class="rounded-pill list-group-item list-group-item-action collapsed" aria-expanded="false" data-toggle="collapse" data-target="#Requests" style="color: #603939; background-color: #d7d2e5; border-color: #d7e5d2;">درخواست‌ها</a>
                        <div id="Requests" class="list-group collapse" aria-expanded="false" style="font-size: 18px; font-weight: normal;">
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #d2d2e5; border-color: #d2d2e5;"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>ثبت درخواست جدید</a>
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #d2d7e5; border-color: #d2d7e5;"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>همه درخواست‌ها</a>
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #d2dbe5; border-color: #d2dbe5;"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>درخواست‌های تحت بررسی</a>
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #d2e0e5; border-color: #d2e0e5;"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>درخواست‌های بازگشتی</a>
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #d2e5e5; border-color: #d2e5e5;"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>درخواست‌های تصمیم گیری شده</a>
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #d2e5e0; border-color: #d2e5e0;"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>درخواست‌های ثبت نهایی نشده</a>
                        </div>
                        <%-- اداره‌ها --%>
                        <a href="#" class="rounded-pill list-group-item list-group-item-action collapsed" aria-expanded="false" data-toggle="collapse" data-target="#Departments" style="color: #603939; background-color: #d2e5db; border-color: #d2e5db;">اداره‌ها</a>
                        <div id="Departments" class="list-group collapse" aria-expanded="false" style="font-size: 18px; font-weight: normal;">
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #d2e5d7; border-color: #d2e5d7;"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>لیست اداره‌ها/ثبت درخواست</a>
                        </div>
                        <%-- گزارش‌‌گیری --%>
                        <a href="#" class="rounded-pill list-group-item list-group-item-action collapsed" aria-expanded="false" data-toggle="collapse" data-target="#erpReport" style="color: #603939; background-color: #d2e5d2; border-color: #d2e5d2;">گزارش‌‌گیری</a>
                        <div id="erpReport" class="list-group collapse" aria-expanded="false" style="font-size: 18px; font-weight: normal;">
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #d7e5d2; border-color: #d7e5d2;"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>گزارش درخواست‌ها</a>
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #dbe5d2; border-color: #dbe5d2;"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>گزارش استفاده</a>
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #e0e5d2; border-color: #e0e5d2;"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>گزارش مالی</a>
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #e5e5d2; border-color: #e5e5d2;"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>گزارش کیف پول</a>
                        </div>
                        <%-- پیام رسانی --%>
                        <a href="#" class="rounded-pill list-group-item list-group-item-action collapsed" aria-expanded="false" data-toggle="collapse" data-target="#Messaging" style="color: #603939; background-color: #e5e0d2; border-color: #e5e0d2;">پیام رسانی</a>
                        <div id="Messaging" class="list-group collapse" aria-expanded="false" style="font-size: 18px; font-weight: normal;">
                            <a href="#" class="rounded-pill list-group-item list-group-item-action" style="color: #603939; background-color: #e5dbd2; border-color: #e5dbd2;"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i>پیامهای درون سیستمی</a>
                        </div>
                    </div>
                </div>
                <%-- Dynamic Content of Sidebar Menu --%>
                <div id="dynamicContent" class="col-12 col-sm-12 col-md-12 col-lg-12" style="overflow-x:hidden; overflow-y: scroll; height:550px;">
                        <sku:UserControl_PersonalInformation runat="server" ID="UserControl_PersonalInformation" Visible="false" />
                </div>
            </div>
        </div>
    </form>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="bootstrap-4.3.1/js/bootstrap.min.js"></script>
    <script src="Scripts/StartScript.js" type="text/javascript"></script>
    <script type="text/javascript">
        window.addEventListener("resize", function () {
            var sizeResponse = $("body").width();
            if ($("#menu-content").is(":visible")) {
                if (sizeResponse >= 992) {                                                      //lg
                    if ($('#dynamicContent').hasClass('col-lg-12')) {
                        $('#dynamicContent').removeClass('col-lg-12');
                        $('#dynamicContent').addClass('col-lg-10');
                    }
                    $('#dynamicContent').css('margin-top', 0);
                } else if (sizeResponse >= 768) {                                               //md
                    if ($('#dynamicContent').hasClass('col-md-12')) {
                        $('#dynamicContent').removeClass('col-md-12');
                        $('#dynamicContent').addClass('col-md-10');
                    }
                    $('#dynamicContent').css('margin-top', 0);
                } else if (sizeResponse >= 576) {                                               //sm
                    $('#dynamicContent').css('margin-top', $('#menu-content').height()+10);
                } else if (sizeResponse < 576) {                                                //xs
                    $('#dynamicContent').css('margin-top', $('#menu-content').height()+10);
                }
            }
            else {
                if (sizeResponse >= 992) { //lg
                    if (!($('#dynamicContent').hasClass('col-lg-12'))) {
                        $('#dynamicContent').removeClass('col-lg-10');
                        $('#dynamicContent').addClass('col-lg-12');
                    }
                    $('#dynamicContent').css('margin-top', 0);
                } else if (sizeResponse >= 768) {
                    if (!($('#dynamicContent').hasClass('col-md-12'))) {
                        $('#dynamicContent').removeClass('col-md-10');
                        $('#dynamicContent').addClass('col-md-12');
                    }
                    $('#dynamicContent').css('margin-top', 0);
                } else if (sizeResponse >= 576) {
                    $('#dynamicContent').css('margin-top', 0);
                } else if (sizeResponse < 576) {
                    $('#dynamicContent').css('margin-top', 0);
                }
            }
        });
        function ItsToggle() {
            var sizeResponse = $("body").width();
            if ($("#menu-content").is(":visible")) {
                if (sizeResponse >= 992) { //lg
                    if (!($('#dynamicContent').hasClass('col-lg-12'))) {
                        $('#dynamicContent').removeClass('col-lg-10');
                        $('#dynamicContent').addClass('col-lg-12');
                    }
                    $('#dynamicContent').css('margin-top', 0);
                } else if (sizeResponse >= 768) {
                    if (!($('#dynamicContent').hasClass('col-md-12'))) {
                        $('#dynamicContent').removeClass('col-md-10');
                        $('#dynamicContent').addClass('col-md-12');
                    }
                    $('#dynamicContent').css('margin-top', 0);
                }
                else if (sizeResponse >= 576) {
                    $('#dynamicContent').css('margin-top', 0);
                } else if (sizeResponse < 576) {
                    $('#dynamicContent').css('margin-top', 0);
                }
            }
            else {
                if (sizeResponse >= 992) { //lg
                    if ($('#dynamicContent').hasClass('col-lg-12')) {
                        $('#dynamicContent').removeClass('col-lg-12');
                        $('#dynamicContent').addClass('col-lg-10');
                    }
                    $('#dynamicContent').css('margin-top', 0);
                } else if (sizeResponse >= 768) {
                    if ($('#dynamicContent').hasClass('col-md-12')) {
                        $('#dynamicContent').removeClass('col-md-12');
                        $('#dynamicContent').addClass('col-md-10');
                    }
                    $('#dynamicContent').css('margin-top', 0);
                }
                else if (sizeResponse >= 576) {
                    $('#dynamicContent').css('margin-top', $('#menu-content').height()+10);
                } else if (sizeResponse < 576) {
                    $('#dynamicContent').css('margin-top', $('#menu-content').height()+10);
                }
            }
        }
        function ChangePassword() {
            email = $('#UserEmail_HiddenField').val();
            $.ajax({
                type: 'POST',
                url: 'Start.aspx/ChangePassword',
                contentType: "application/json; charset=utf-8",
                data: "{email:'" + email + "'}",
                dataType: 'json',
                success: function (data) {
                    $("#dynamicContent").html(data.d);
                }
            });
        }
        function PersonalInformation() {
            email = $('#UserEmail_HiddenField').val();
            $.ajax({
                type: 'POST',
                url: 'Start.aspx/PersonalInformation',
                contentType: "application/json; charset=utf-8",
                data: "{email:'" + email + "'}",
                dataType: 'json',
                success: function (data) {
                    $("#dynamicContent").html(data.d);
                }
            });
        }
    </script>
</body>
</html>
