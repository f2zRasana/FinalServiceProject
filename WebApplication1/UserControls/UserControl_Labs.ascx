<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_Labs.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_Labs" %>

<div>
    <asp:DataList ID="ListLabs" runat="server" RepeatColumns="3" Width="100%" RepeatLayout="Table" DataKeyField="ID" OnItemDataBound="ListLabs_ItemDataBound">
        <ItemTemplate>
            <div class="col-6 col-sm-4 col-md-3 col-lg-4">
                <table class="box" style=" margin-top: 10px; margin-bottom: 10px; background-color: #FFFFFF; color: green; border: 1px solid; border-color: green; border-radius: 30px; border-collapse: separate;">
                    <tr>
                        <td>
                            <p style="width: 100%; text-align: center; font-size: medium;">
                                <asp:Label ID="Label_Title" Text='<%# Eval("Title").ToString() %>' runat="server" CssClass="label label-success " />
                            </p>
                            <hr />
                            <br />
                            <p style="width: 100%; text-align: center;">
                                 <span class="fa fa-clock-o"></span>
                                 </strong><asp:Label ID="Label1" Text='<%# Eval("Item1").ToString() %>' runat="server" /></strong>
                                 </strong><asp:Label ID="Label2" Text='<%# Eval("Item2").ToString() %>' runat="server" /></strong>
                                 </strong><asp:Label ID="Label3" Text='<%# Eval("Item3").ToString() %>' runat="server" /></strong>
                                 </strong><asp:Label ID="Label4" Text='<%# Eval("Item4").ToString() %>' runat="server" /></strong>
                                 </strong><asp:Label ID="Label5" Text='<%# Eval("Item5").ToString() %>' runat="server" /></strong>
                                 </strong><asp:Label ID="Label6" Text='<%# Eval("Item6").ToString() %>' runat="server" /></strong>
                                 </strong><asp:Label ID="Label7" Text='<%# Eval("Item7").ToString() %>' runat="server" /></strong>
                                 </strong><asp:Label ID="Label8" Text='<%# Eval("Item8").ToString() %>' runat="server" /></strong>
                            </p>

                        </td>
                    </tr>
                </table>
            </div>
        </ItemTemplate>
    </asp:DataList>

</div>
