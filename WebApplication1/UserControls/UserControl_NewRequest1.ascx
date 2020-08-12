<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_NewRequest1.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_NewRequest1" %>

<asp:HiddenField ID="UserEmail_HiddenField" runat="server" />
<%-- Code Body --%>
<div class="card shadow" id="content_here" runat="server" style="border-radius: 20px; color: #603939;">
    <%-- Header --%>
    <div class="card-header" style="text-align: right;">
        <h4>ثبت درخواست جدید</h4>
    </div>

    <div class="card-body container" style="/*direction: rtl !important; */">

        <%-- header --%>
        <div class="row" style="padding-left: 45%; margin-bottom: 30px; height: 130px; background-color: #efe3e9; padding-top: 30px;" dir="ltr">
            <asp:DropDownList ID="Select_DropDownList" CssClass="browser-default custom-select" runat="server" Style="text-align: right; width: 150px;" BackColor="#FFF0FF">
                <asp:ListItem Value="Azmayeshgah">آزمایشگاه مرکزی</asp:ListItem>
                <asp:ListItem Value="Salon">سالنها</asp:ListItem>
                <asp:ListItem Value="Markaz_Noavari">مرکز نوآوری</asp:ListItem>
                <asp:ListItem Value="Edare_Refahi">اداره رفاهی</asp:ListItem>
                <asp:ListItem Value="ICT">اداره فناوری اطلاعات و ارتباطات</asp:ListItem>

            </asp:DropDownList>

        </div>
        <%-- Search Button --%>

        <div class=" pull-right" style="direction: rtl; text-align: right; align-items: center; vertical-align: central; width: 100%; border: 1px solid #808080;">

            <div style="width: 99%; padding: 0px; margin: 10px 5px 10px 10px; direction: rtl;">
                <button class="btn" type="button" data-toggle="collapse" data-target="#searchBar" style="background-color: #d9d8d8; width: inherit; color: #724e9a;">
                    جستجو&nbsp
               
                    <span class="fa fa-arrow-circle-down"></span>
                </button>
            </div>

            <div id="searchBar" class="collapse" style="">
                <table class="table table-bordered" style="">

                    <tbody style="">
                        <tr style="">
                            <td style="padding-top: 35px;">

                                <asp:DropDownList ID="DropDownList_Parts" CssClass="browser-default custom-select custom-select-sm " runat="server" Style="text-align: right;">
                                    <asp:ListItem Value="choose">انتخاب بخش(همه)</asp:ListItem>


                                </asp:DropDownList>
                            </td>
                            <td style="width: 31%; padding-bottom: 2px; padding-top: 35px;">
                                <input type="text" class="form-control form-control-sm" runat="server" placeholder="عنوان یا مخفف" width="95%" height="23%" />
                            </td>
                            <td style="width: 31%; padding-bottom: 30px;">

                                <asp:DropDownList ID="DropDownList1" CssClass="browser-default custom-select custom-select-sm" runat="server" Style="text-align: right; direction: rtl; position: relative; margin-top: 25px; width: 95%">
                                    <asp:ListItem Value="DSC">ترتیب(جدیدتر)</asp:ListItem>
                                    <asp:ListItem Value="ASC">قدیمی تر</asp:ListItem>

                                </asp:DropDownList>
                            </td>
                            <td style="width: 7%; text-align: center; padding-bottom: 30px;">
                                <input type="submit" value="جستجو" id="search-Btn" class="btn-sm btn btn-info" style="margin-top: 20px;" />

                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server" ViewStateMode="Enabled"
            EnableViewState="true" UpdateMode="Conditional">
            <ContentTemplate>
                <div id="Div_Records" class="card-body" runat="server">
                    <div class="login-panel card card-default" style="margin-top: 0px;">

                        <div class="card-body">
                            <div class="table-responsive " style="width: 100%; direction: rtl; text-align: right; font: 10px;">
                                <asp:GridView ID="gridView" Width="100%" runat="server" class=" table-bordered table-hover table-responsive table-responsive-sm" DataKeyNames="ID"
                                    AutoGenerateColumns="False" OnPageIndexChanging="gridView_PageIndexChanging" HeaderStyle-HorizontalAlign="Center" AllowPaging="True" AllowCustomPaging="True" BackColor="#EAFFFF" BorderColor="#000633" BorderWidth="1px" ForeColor="#000633" HorizontalAlign="Center">
                                    <Columns>
                                        <asp:BoundField DataField="ID" HeaderText="#" SortExpression="ID" ItemStyle-Width="5%" HeaderStyle-HorizontalAlign="Center"></asp:BoundField>

                                        <asp:BoundField DataField="Title" HeaderText="عنوان" SortExpression="ID" ItemStyle-Width="43%" HeaderStyle-HorizontalAlign="Center"></asp:BoundField>
                                        <asp:BoundField DataField="ActiveTime" HeaderText="زمان فعال" SortExpression="ID" ItemStyle-Width="22%" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"></asp:BoundField>




                                        <asp:TemplateField ShowHeader="true" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="150px" HeaderText="جزئیات">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" Text="جزئیات" CommandName="Select" CausesValidation="False" CssClass="btn btn-sm btn-outline-info" ID="Detail_LinkButton" data-toggle="modal" data-target="#ModalDetails"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="false" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="150px" ItemStyle-VerticalAlign="Middle">
                                            <ItemTemplate>
                                                <%--<a class="btn btn-sm btn-outline-success" onclick="ConfirmRequest()" id="request" style="margin-top: 5px; margin-right: 0px;"> ثبت درخواست</a>--%>
                                                <asp:LinkButton runat="server" Text="ثبت درخواست " OnClick="LinkButton1_Click" CommandName="Select" CausesValidation="False" CssClass=" btn btn-sm btn-outline-success" ID="LinkButton1" Style="margin-top: 5px; margin-right: 0px;"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>
                                    <PagerSettings Mode="Numeric" LastPageText="صفحه آخر" />
                                    <PagerStyle HorizontalAlign="Center" CssClass="pagination-ys" />
                                    <EmptyDataTemplate>
                                        <p>هیچ اطلاعاتی ثبت نشده است </p>
                                    </EmptyDataTemplate>
                                </asp:GridView>
                            </div>

                        </div>
                    </div>

                </div>
            </ContentTemplate>
        </asp:UpdatePanel>



    </div>
</div>

<!-- ModalDetails -->
<div class="modal fade" id="ModalDetails" role="dialog" style=" direction: rtl; text-align:center;">
    <div class="modal-dialog modal-dialog-centered">

        <!-- Modal content-->
        <div class="modal-content" style="overflow-y: auto; max-height:700px;min-width:100%">
            <div class="modal-header">
                <div class="container-fluid" style="">
                    <table class="table-striped table table-bordered table-hover table-responsive">
                        <tbody>
                            <tr>
                                <td style="text-align: right; width: 50%">عنوان</td>
                                <td style="text-align: right; width: 50%">فرم استفاده از تجهیزات پژوهشکده زیست فناوری</td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 50%">زمان فعال بودن فرم از</td>
                                <td style="text-align: justify; direction: rtl; width: 50%">۱۳۹۹/۱/۱۰</td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 50%">زمان فعال بودن فرم تا</td>
                                <td style="text-align: justify; direction: rtl; width: 50%">۱۳۹۹/۱۲/۲۵</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="modal-body">

                <hr>
            </div>

            <div class="modal-footer" style="text-align: center">
            </div>


        </div>

    </div>
</div>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link href="../../bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="../../bootstrap-4.3.1/js/bootstrap.min.js"></script>

<script>
    function ConfirmRequest() {
        email = $('#UserEmail_HiddenField').val();
            $.ajax({
                type: 'POST',
                url: 'UserControl_NewRequest1.ascx/ConfirmRequest',
                contentType: "application/json; charset=utf-8",
                data: "{email:'" + email + "'}",
                dataType: 'json',
                success: function (data) {
                    $("#content_here").html(data.d);
                }
            });
    }
</script>