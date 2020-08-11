<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_SendMessage.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_SendMessage" %>

<style>
    .inputstl {
        padding: 9px;
        border: solid 1px #460023;
        outline: 0;
        background: -webkit-gradient(linear, left top, left 25, from(#FFFFFF), color-stop(4%, #FFCEE7), to(#FFFFFF));
        background: -moz-linear-gradient(top, #FFFFFF, #FFCEE7 1px, #FFFFFF 25px);
        box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
        -moz-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
        -webkit-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
    }
</style>
<%--/***********************************/--%>
            <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>

<div class="card shadow" style="border-radius: 20px; color: #603939; direction: rtl">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" ViewStateMode="Enabled"
        EnableViewState="true" UpdateMode="Conditional">
        <ContentTemplate>
            <%--Header--%>
            <div class="card-header" style="text-align: right;"></div>
            <h4 style="text-align: right;">سامانه پیام رسانی درون سامانه‌ای</h4>
            <%--Body--%>
            <div class="card-body">
                <div class="table-responsive" style="height:800px;">
                    <table class="table table-bordered table-responsive">
                        <tbody>
                            <tr>
                                <td style="vertical-align: top; width: 15%; padding-top: 5px;">
                                    <div id="userPanel" style="text-align: right; direction: rtl; vertical-align: top;">
                                        <table style="width: 100%; padding: 10px;" class="table table-striped table-bordered table-hover">
                                            <tbody>
                                                <tr>
                                                    <td style="width: 100%; background-color: #ffe6ff; border-color: white" class="rounded-pill"><a class="rounded-pill" style="cursor: pointer;" data-toggle="modal" data-target="#ModalNewMessage"><span class="fa fa-pencil"></span>&nbsp; پیام جدید </a>&nbsp;&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100%; background-color: #ffccff; border-color: white" class="rounded-pill">
                                                        <asp:LinkButton runat="server" class="rounded-pill" Style="cursor: pointer; text-decoration: none; color: black;" ID="Drafts" OnClick="Drafts_Click"><span class="fa fa-edit"></span>&nbsp;پیش نویس</asp:LinkButton>&nbsp;&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100%; background-color: #ffb3ff; border-color: white" class="rounded-pill"><a class="rounded-pill" style="cursor: pointer;"><span class="fa fa-briefcase"></span>&nbsp;صندوق دریافت</a>&nbsp;&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100%; background-color: #ff99ff; border-color: white" class="rounded-pill"><a class="rounded-pill" style="cursor: pointer;"><span class="fa fa-send"></span>&nbsp;صندوق ارسال</a>&nbsp;&nbsp;</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </td>
                                <td style="width: 85%;">
                                    <div id="div_size" style="width: 100%; overflow-x: scroll; overflow-y: hidden;">

                                        <div id="MessageList">
                                            <table style="width: 100%; text-align: center; border-collapse: collapse;">
                                                <tbody>
                                                    <tr>
                                                        <td style="width: 92%; border-color: white;">
                                                            <div class="input-group" style="direction: ltr;">
                                                                <div class="input-group-prepend">
                                                                    <asp:LinkButton runat="server" class="input-group-text" BackColor="#875c9b" ForeColor="White" Font-Underline="false"><span class="fa fa-search"></span>&nbsp;جستجــــو</asp:LinkButton>
                                                                </div>

                                                                <asp:TextBox runat="server" type="text" class="form-control" BackColor="#e8dfec" />
                                                            </div>
                                                        </td>
                                                        <td style="width: 8%; border-color: white;">
                                                            <asp:LinkButton runat="server" ID="a_Return" class="btn-sm btn btn-default" BackColor="#a37eb4" Width="78px">همه <span class="fa fa-reply-all"></span></asp:LinkButton></td>
                                                    </tr>
                                                    <tr>
                                                        <asp:Label ID="Success_Label" runat="server" Text="" Visible="false">
                <div class="alert alert-success alert-dismissible">
                    <strong>ارسال شد!</strong>
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                </div>
                                                        </asp:Label>
                                                        <asp:Label ID="Warning_Label" runat="server" Text="" Visible="false">
                <div class="alert alert-warning alert-dismissible">
                    <strong> مجددا تلاش کنید.</strong>
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                </div>
                                                        </asp:Label>
                                                    </tr>

                                                </tbody>
                                            </table>
                                            <br />
                                            <div>


                                            </div>
                                            
                                        </div>
                                    </div>



                                    <div id="DraftMessage" visible="false" class="panel-body" runat="server">
                                        <div class="login-panel panel panel-default" style="margin-top: 0px;">
                                            <div class="panel-heading" style="direction: rtl">
                                            </div>
                                            <div class="panel-body">
                                                <div class="table-responsive" style="width: 100%; direction: rtl;text-align:center;">
                                                    <asp:GridView ID="gridView2" Width="100%" runat="server" class=" table table-striped table-bordered table-hover table-responsive" DataKeyNames="ID"
                                                        AutoGenerateColumns="False" OnPageIndexChanging="gridView2_PageIndexChanging" HeaderStyle-CssClass="rtl" AllowPaging="True" AllowCustomPaging="True">
                                                        <Columns>
                                                            <asp:BoundField DataField="ID" HeaderText="#" SortExpression="ID" HeaderStyle-CssClass="alignRight" HeaderStyle-BackColor="#804d68" ItemStyle-BackColor="#ecdfe6"></asp:BoundField>
                                                            <asp:BoundField DataField="Title" HeaderText="پیام ها" SortExpression="ID" HeaderStyle-CssClass="alignRight" ItemStyle-Width="90%" HeaderStyle-BackColor="#804d68" ItemStyle-BackColor="#ecdfe6"></asp:BoundField>


                                                        </Columns>
                                                        <PagerSettings Mode="Numeric" />
                                                        <PagerStyle HorizontalAlign="Center" CssClass="pagination-ys" />
                                                        <EmptyDataTemplate>
                                                            <p>هیچ اطلاعاتی ثبت نشده است </p>
                                                        </EmptyDataTemplate>
                                                    </asp:GridView>
                                                </div>

                                            </div>
                                        </div>

                                    </div>

                                </td>
                            </tr>
                        </tbody>
                    </table>

                </div>

            </div>
            </div>
            <%--/*****************************/--%>

            <!-- ModalNewMessage -->
            <div class="modal fade" id="ModalNewMessage" role="dialog" style="text-align: right; direction: rtl;">
                <div class="modal-dialog modal-dialog-centered">

                    <!-- Modal content-->
                    <div class="modal-content" style="overflow-y: auto; max-height: 540px;">
                        <div class="modal-header">
                        </div>
                        <div class="modal-body">
                            <div id="New_Modal_Content">
                                <p>به: </p>
                                <asp:TextBox runat="server" name="TextBox_Receiver" type="text" ID="TextBox_Receiver" class="form-control inputstl" Style="width: 100%;"></asp:TextBox>
                                &nbsp;&nbsp;
                    <asp:LinkButton runat="server" ID="a_Users" class="btn-sm btn btn-outline btn-primary" Style="float: left; background-color: #875c9b" data-toggle="modal" data-target="#Modal_addUsers">افزودن گیرنده</asp:LinkButton>
                                <input type="reset" id="a_clear" value="پاک کردن آدرس ها" class="btn-sm btn btn-outline btn-default" style="float: left; background-color: #ba9fc6;">
                                <p>عنوان: </p>
                                <asp:TextBox runat="server" ID="TextBox_Title" class="form-control inputstl" Style="width: 100%;"></asp:TextBox>
                                <p>متن: </p>
                                <asp:TextBox runat="server" class="form-control inputstl" Rows="5" TextMode="MultiLine" ID="Text_body"></asp:TextBox><br />
                                <p>افزودن فایل ضمیمه: </p>
                                <asp:FileUpload ID="FileUpload_File" runat="server" class="form-control inputstl" Width="100%" />
                            </div>
                            <hr>
                            <p style="text-align: center; width: 100%">
                                ضمیمه: &nbsp; &nbsp; <span id="Label_Attachs"></span>
                            </p>
                        </div>

                        <div class="modal-footer" style="text-align: center">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <asp:LinkButton runat="server" class="btn-sm btn btn-info" BackColor="#875c9b">ارسال</asp:LinkButton>
                                <asp:LinkButton runat="server" ID="Draft_btn" class="btn-sm btn btn-info" BackColor="#875c9b" OnClick="Draft_btn_Click">انتقال به پیش نویس</asp:LinkButton>
                                <button type="button" class="btn-sm btn btn-defult" data-dismiss="modal" style="background-color: #ba9fc6;" onclick="closeDialog()">انصراف</button>
                            </div>
                        </div>


                    </div>

                </div>
            </div>


            <%--/*****************Modal_addUsers********************/--%>
            <div class="modal fade" id="Modal_addUsers" role="dialog" style="text-align: right; direction: rtl;">
                <div class="modal-dialog modal-dialog-centered">

                    <!-- Modal content-->
                    <div class="modal-content" style="overflow-y: auto; max-height: 540px;">
                        <div class="modal-body">
                            <div>
                                <div>
                                    <table style="width: 100%">
                                        <tbody>
                                            <tr>
                                                <td style="width: 20%;">نقش کاربر:</td>
                                                <td style="width: 20%;">کشور:</td>
                                                <td style="width: 15%;">جنسیت:</td>
                                                <td style="width: 25%;">شهر:</td>
                                                <td style="width: 20%;">نام:</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 20%; vertical-align: top;">
                                                    <select name="DropDownList_Roles" id="DropDownList_Roles" style="width: 100%;">
                                                        <option value="#">همه</option>
                                                        <option value="#">مدیر</option>

                                                    </select>
                                                </td>
                                                <td style="width: 20%; vertical-align: top;">
                                                    <select name="DropDownList_Contries" id="DropDownList_Contries">
                                                        <option value="0">همه</option>
                                                        <option value="1">ایران</option>


                                                    </select>
                                                </td>
                                                <td style="width: 15%; vertical-align: top;">
                                                    <select name="DropDownList_Marital" id="DropDownList_Marital" style="width: 100%;">
                                                        <option value="0">همه</option>
                                                        <option value="1">مرد</option>
                                                        <option value="2">زن</option>

                                                    </select>
                                                </td>
                                                <td style="width: 25%; vertical-align: top;">
                                                    <input name="TextBox_Address" type="text" id="TextBox_Address" style="height: 26px; width: 100%;">
                                                </td>
                                                <td style="width: 20%; vertical-align: top;">
                                                    <input name="TextBox_Name" type="text" id="TextBox_Name" style="height: 26px; width: 100%;">
                                                </td>
                                            </tr>
                                            <tr id="panelevents" style="border: 1px solid rgb(212, 91, 0); border-radius: 100px; display: none;">
                                                <td colspan="5">
                                                    <span style="float: right;">
                                                        <input id="Check_Events" type="checkbox" name="Check_Events"></span>&nbsp;
                                            <div id="events" style="float: left;">
                                            </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <p style="width: 100%; text-align: center; margin-bottom: 15px; padding-bottom: 30px;">
                                        <a id="link_addall"class="btn-sm btn btn-outline btn-success" style="float: left; display: none;">افزودن همه</a>
                                        <a class="btn-sm btn btn-outline btn-info" style="float: left;">جستجو</a>
                                    </p>
                                </div>
                                <div id="UserList">



                                    <div style="width: 100%; text-align: center;">
                                        <table style="width: 100%">
                                            <tbody>
                                                <tr>
                                                    <td style="width: 70%;">
                                                        <div>




                                                            <div class="container-fluid" style="direction: rtl; text-align: center; float: right">

                                                                <div id="Div_Records" class="panel-body" runat="server">
                                                                    <div class="login-panel panel panel-default" style="margin-top: 0px;">
                                                                        <div class="panel-heading" style="direction: rtl">
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="table-responsive" style="width: 100%; direction: rtl;">
                                                                                <asp:GridView ID="gridView1" Width="100%" runat="server" class=" table table-striped table-bordered table-hover table-responsive" DataKeyNames="ID"
                                                                                    AutoGenerateColumns="False" OnPageIndexChanging="gridView1_PageIndexChanging" HeaderStyle-CssClass="rtl" AllowPaging="True" AllowCustomPaging="True">
                                                                                    <Columns>
                                                                                        <asp:BoundField DataField="ID" HeaderText="#" SortExpression="ID" HeaderStyle-CssClass="alignRight"  HeaderStyle-BackColor="#dd88c1" ItemStyle-BackColor="#c99cba" ></asp:BoundField>
                                                                                        <asp:BoundField DataField="Name_Family" HeaderText="نام و نام خانوادگی" SortExpression="ID" HeaderStyle-CssClass="alignRight" ItemStyle-Width="300px" HeaderStyle-BackColor="#e4b481" ItemStyle-BackColor="#c9b39c"></asp:BoundField>
                                                                                        <asp:BoundField DataField="Email" HeaderText="ایمیل" SortExpression="ID" HeaderStyle-CssClass="alignRight" ItemStyle-Width="300px" HeaderStyle-BackColor="#e8e87d" ItemStyle-BackColor="#c9c99c"></asp:BoundField>
                                                                                      <%--  <asp:TemplateField ShowHeader="true" HeaderText=" " ItemStyle-Width="150px">
                                                                                            <ItemTemplate>
                                                                                                <asp:LinkButton runat="server" Text="X" CommandName="Select" CausesValidation="true" CssClass="btn-sm btn btn-outline btn-light" ID="LinkButton1"></asp:LinkButton>
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>--%>

                                                                                    </Columns>
                                                                                    <PagerSettings Mode="Numeric" />
                                                                                    <PagerStyle HorizontalAlign="Center" CssClass="pagination-ys" />
                                                                                    <EmptyDataTemplate>
                                                                                        <p>هیچ اطلاعاتی ثبت نشده است </p>
                                                                                    </EmptyDataTemplate>
                                                                                </asp:GridView>
                                                                            </div>

                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </div>


                                                        </div>
                                                        <br />
                                                        <hr />
                                                        لیست ارسال:
                                           <hr />
                                                        <p style="text-align: justify; width: 100%">
                                                            <asp:TextBox runat="server" ID="SendLIst_Textbox" class="form-control inputstl" Style="width: 100%;"></asp:TextBox>
                                                        </p>
                                                        <p>
                                                            <a id="Addresclear" class="btn-sm btn btn-outline btn-default" style="float: left;">پاک کردن آدرس ها</a>
                                                        </p>
                                                        <br>
                                                        <br>

                                                        <span id="ctl01_Label_EmptyStatus" class="label label-default"></span>

                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>


                                </div>
                            </div>
                        </div>
                        <div class="modal-footer" style="text-align: center">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <button type="button" class="btn-sm btn btn-info" data-dismiss="modal">ثبت</button>
                                <button type="button" class="btn-sm btn btn-defult" data-dismiss="modal" onclick="closeDialog2();">انصراف</button>
                            </div>
                            <br />
                            <br />
                            <br />
                        </div>
                    </div>
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>


<%--/*************************************/--%>
<script>
    var x = document.getElementById("ModalNewMessage");
    function closeDialog() {
        x.close();
    }
    var y = document.getElementById("Modal_addUsers");
    function closeDialog2() {
        y.close();
    } 
</script>

<%--/*************************************/--%>  