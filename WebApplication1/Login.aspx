<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ورود به سایت</title>
    <link href="bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="font-family: 'B Mitra'; background-image: url('Images/Login_PageBackground.gif'); background-repeat: no-repeat; background-attachment: fixed; background-size: 100% 100%;">
    <form id="form1" runat="server">

        <div class="container" style="direction: rtl; margin-top: 7%;">

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

            <%-- Main Part --%>
            <div class="row">

                <%-- Title --%>
                <div class=" col-lg-5 col-md-12 col-sm-12 col-12">
                    <label class="" style="margin-left: 10%; font-size: 40px; color: whitesmoke; font-family: 'B Tabassom'; font-weight: bold; text-align: center;">سامانه رزرو و زمان بندی منابع</label>
                    <img class="" src="Images/Login_Schedule.png" style="margin-top: 15%;" />
                </div>


                <div class="col-lg-3"></div>

                <%-- Login Form --%>
                <div class="card col-lg-4 col-md-12 col-sm-12 col-12" style="border-radius: 40px;">
                    <img class="card-img-top" src="Images/Login_Profile.png" alt="Card Image Top" style="width: 40%; margin-right: 30%" />
                    <div class="card-body">
                        <h5 class="card-title" style="text-align: center;">ورود اعضا</h5>
                        <%-- Username field --%>
                        <div class="input-group mb-3">
                            <div class="input-group-append">
                                <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #52517b; color: white; border-color: #52517b;">نام کاربری</span>
                            </div>
                            <asp:TextBox ID="Username_TextBox" runat="server" CssClass="form-control" placeholder="" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                        </div>
                        <%-- Password field --%>
                        <div class="input-group mb-3">
                            <div class="input-group-append">
                                <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #52517b; color: white; border-color: #52517b;">کلمه عبور</span>
                            </div>
                            <asp:TextBox ID="Password_TextBox" runat="server" CssClass="form-control" placeholder="" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                        </div>
                        <%-- CheckBox field --%>
                        <div class="input-group mb-3" style="direction: rtl;">
                            <div class="input-group-append">
                                <div class="">
                                    <input type="checkbox" aria-label="Checkbox for following text input" />
                                </div>
                            </div>
                            <asp:Label ID="Label1" runat="server" CssClass="" Text="به خاطر بسپار" Style="text-align: right; margin-right: 10px;"></asp:Label>
                        </div>
                        <%-- Login_Button --%>
                        <asp:Button ID="Login_Button" OnClick="Login_Button_Click" runat="server" Text="ورود" CssClass="btn btn-info btn-block" Style="border-radius: 40px; background-color: #4f145e; border-color: #4f145e;" />
                      
                        <div style="text-align: center;">
                            <%-- New User --%>
                            <p style="margin-top: 10px; padding-top: 10px; text-decoration: none;">
                                عضو نیستید؟  
                                <a href="#" style="text-decoration: none;" data-toggle="modal" data-target="#exampleModal">ثبت نام</a>
                                <a href="#" style="text-decoration: none; display: none;">&nbsp;/&nbsp;ثبت نام کارمندان</a>
                            </p>
                            <%-- Forgot Password --%>
                            <p>
                                فراموشی 
                                <a href="#" style="text-decoration: none;">کلمه عبور؟ </a>
                                <a href="#" style="text-decoration: none; cursor: pointer;">&nbsp;/&nbsp;کارمندان</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <%-- Back to main page --%>
            <div class=" col-xs-12 col-sm-12 col-md-12 col-lg-12" style="margin-top: 3%; text-align: center; font-size: small; font-weight: bold;">
                <a class="" style="text-decoration: none; cursor: pointer; border: 1px solid; padding-left: 3px; padding-right: 3px; border-color: whitesmoke; color: aliceblue; border-radius: 10px;" href="/Index.aspx" target="_self">بازگشت به صفحه اصلی</a>
            </div>


            <%-- Modal New User --%>
            <div class="modal fade" id="exampleModal" tabindex="-1"
                role="dialog" aria-labelledby=" exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <%-- New User Header --%>
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                            <h5 class="modal-title" id="exampleModalLabel" style="margin-left: 45%;">کاربر جدید</h5>

                        </div>

                        <%-- New User Body --%>
                        <div class="modal-body">
                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #52517b; color: white; border-color: #52517b;">نام کاربری (ایمیل)</span>
                                </div>
                                <asp:TextBox ID="NewUsername_TextBox" runat="server" CssClass="form-control" placeholder="" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #52517b; color: white; border-color: #52517b;">کلمه عبور</span>
                                </div>
                                <asp:TextBox ID="NewPassword_TextBox" runat="server" CssClass="form-control" placeholder="" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>

                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-append">
                                    <span class="input-group-text" style="border-bottom-right-radius: 40px; border-top-right-radius: 40px; background-color: #52517b; color: white; border-color: #52517b;">تکرار کلمه عبور</span>
                                </div>
                                <asp:TextBox ID="NewPasswordRepeat_TextBox" runat="server" CssClass="form-control" placeholder="" Style="text-align: right; border-bottom-left-radius: 40px; border-top-left-radius: 40px"></asp:TextBox>

                            </div>
                            <asp:Button ID="NewUser_Button" OnClick="NewUser_Button_Click" runat="server" Text="ایجاد کاربر جدید" CssClass="btn btn-info btn-block" Style="border-radius: 40px; background-color: #4f145e; border-color: #4f145e;" />

                        </div>

                        <%-- New User Footer --%>
                        <div class="modal-footer">
                            <p style="margin-top: 10px; margin-left: 65%;">عضو هستید؟  <a href="#" style="text-decoration: none;" data-dismiss="modal">ورود</a></p>

                            <button type="button" class="btn btn-light" data-dismiss="modal">انصراف</button>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </form>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="bootstrap-4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
