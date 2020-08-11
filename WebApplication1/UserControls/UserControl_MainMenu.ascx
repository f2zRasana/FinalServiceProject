<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_MainMenu.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_MainMenu" %>
<style>
    /*.menu li:hover {
        background-color: #ef5661;
    }

    .hover-submenu a:hover {
        background-color: #ef5661;
        color: white;
    }*/
        .divlab {
  height: 500px;
  width: auto;
  overflow-y:auto;
  overflow-x:auto;

}
</style>
<%--/****************************************--%>
<div class="row">
    <nav class="navbar navbar-expand-lg navbar-dark col-12 col-sm-12 col-md-12 col-lg-12" style="margin-top: 20px; font-family: 'B Mitra'; font-size: 18px; padding: 0px; background-color: #616161; direction: rtl; text-align: right; float: right;">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="true" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse menu" id="navbarNavDropdown">
            <ul class="navbar-nav">


                <li class="nav-item dropdown active ">
                    <a class="nav-link dropdown-toggle " href="#" id="navbarDropdownMenuLinkMarkazi" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">آزمایشگاه مرکزی
                    </a>
                     <ul class="dropdown-menu dropleft hover-submenu divlab  dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink" style="text-align: right;">
                        <li class="dropdown-submenu">
                    <asp:DataList ID="ListLabs" runat="server" RepeatColumns="3" Width="100%" RepeatLayout="Table" DataKeyField="ID" >
                        <ItemTemplate>
                            <div class="col-12 col-sm-12 col-md-12 col-lg-4" >
                                        <ul class="card" style="width:250px; height:300px; margin-top: 10px; margin-bottom: 10px; background-color: #FFFFFF; color: black;border-color:white; border-collapse: separate; overflow-y:auto" >
                                            <li>
                                                

                                                   <p style="width: 100%; text-align:right; font-size:14px;color:blue;">
                                                        <asp:Label ID="Label_Title" Text='<%# Eval("Title").ToString()%>' runat="server" />
                                                    </p>
                                                    <br />
                                                    <p style="width: 100%; text-align: right;">
                                                        <asp:Label ID="Label1" Text='<%# Eval("Item1").ToString() %>' runat="server" /><br />
                                                        <asp:Label ID="Label2" Text='<%# Eval("Item2").ToString() %>' runat="server" /><br />
                                                        <asp:Label ID="Label3" Text='<%# Eval("Item3").ToString() %>' runat="server" /><br />
                                                        <asp:Label ID="Label4" Text='<%# Eval("Item4").ToString() %>' runat="server" /><br />
                                                        <asp:Label ID="Label5" Text='<%# Eval("Item5").ToString() %>' runat="server" /><br />
                                                        <asp:Label ID="Label6" Text='<%# Eval("Item6").ToString() %>' runat="server" /><br />
                                                        <asp:Label ID="Label7" Text='<%# Eval("Item7").ToString() %>' runat="server" /><br />

                                                    </p>

                                            
                                            </li>
                                            
                                        </ul>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                            </li>
                         </ul>
                </li>
<%--/***************************************************************/--%>
                  <li class="nav-item dropdown active ">
                    <a class="nav-link dropdown-toggle " href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> اداره رفاهی
                    </a>
                     <ul class="dropdown-menu dropleft hover-submenu divlab  dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink" style="text-align: right;height:250px">
                        <li class="dropdown-submenu">
                    <asp:DataList ID="ListParts" runat="server" RepeatColumns="3" Width="100%" RepeatLayout="Table" DataKeyField="ID" >
                        <ItemTemplate>
                          <a href="#" style="text-decoration:none;"> <div class="col-12 col-sm-12 col-md-12 col-lg-4" >
                                        <ul class="card" style="width:250px; margin-top: 10px; margin-bottom: 10px; background-color: #FFFFFF; color: black;border-color:white; border-collapse: separate; overflow-y:auto" >
                                            <li>
                                                

                                                   <p style="width: 100%; text-align:right; font-size:14px;color:blue;">
                                                        <asp:Label ID="LT" Text='<%# Eval("Title").ToString()%>' runat="server" />
                                                    </p>
                                                    <br />
                                                    <p style="width: 100%; text-align: right;">
                                                        <asp:Label ID="L1" Text='<%# Eval("Item1").ToString() %>' runat="server" /><br />
                                                        <asp:Label ID="L2" Text='<%# Eval("Item2").ToString() %>' runat="server" /><br />
                                                        <asp:Label ID="L3" Text='<%# Eval("Item3").ToString() %>' runat="server" /><br />
                                                    </p>

                                            
                                            </li>
                                            
                                        </ul>
                            </div>
                              </a> 
                        </ItemTemplate>
                    </asp:DataList>
                            </li>
                         </ul>
                </li>
                

            </ul>
        </div>
    </nav>
</div>


<%--/****************************************--%>

<script src="../Scripts/jquery-3.5.1.min.js"></script>