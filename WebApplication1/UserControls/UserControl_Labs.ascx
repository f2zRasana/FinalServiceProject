<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_Labs.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_Labs" %>


<style>
    .fa-circle {
        color: #c1bdbd;
        display: inline-block;
        font-size: 11px;
        padding-left: 9px;
        padding-right: 25px;
    }
</style>


    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: right; margin-bottom: 25px; margin-top: 20px;">
        <span class="label-news" style="border-bottom: 3px solid #e75460; padding-bottom: 10px; font-family: 'B Mitra'; direction: rtl;"><strong>بخش‌ها</strong></span>
   
    </div>
    <br />
    <br />

  <div class=" container-fluid" style="direction:rtl;">

      
          <div class="table table-borderless ">
        <asp:DataList ID="ListLabs"  runat="server" CellSpacing="1" CellPadding="1" Style="font-family: 'B Mitra'; direction:rtl;" RepeatColumns="3" Width="100%" RepeatLayout="Table" DataKeyField="ID" OnItemDataBound="ListLabs_ItemDataBound" RepeatDirection="Horizontal" >
            <ItemTemplate >
               

                <table  style="border-spacing:5px; overflow-y: auto; border-radius: 10px; width: 400px; height: 255px; margin-top: 4px; margin-bottom: 10px;  background-color: #FFFFFF; box-shadow: 0px 0px 6px -2px #777777; border: 1px solid #f1ecec; border-radius: 25px; border-collapse:separate; direction: rtl; margin-right: 1px;">
                        <tr  >

                            <td >

                                <div class="row" style="width: 100%;  " >
                                    <%-- title --%>
                                    <div class="col-9 pull-right" style="text-align: right;">
                                    <a class=" pull-right title-area" href="#" style="text-decoration:none; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; padding-right: 1em; font-size: 14px; color: #c50010; /*border-bottom: 1px solid #c50010;*/ padding-bottom:2px; direction: rtl; width: 270px; /*display: block;*/ font-weight:bold; position:absolute;">
                                        <asp:Label ID="Label_Title" Text='<%# Eval("Title").ToString() %>' runat="server"  style=" border-bottom:1px solid #c50010;" /></a>
                                        </div>
                                   <%-- hame --%>
                                     <div class="col-3 pull-left" style="left:0px;padding-left:0px;">
                 <a class=" pull-left link-area-head" href="#" id="link_all" style="font-size:small; padding-top:2px; padding-bottom:2px;  border: 1px solid #6cd2e0; border-radius: 10px; width: 58px; text-align: center; position:relative;">همه</a>
                                </div>
                                    </div>
                                <br />
                                
                                <div class="row">
                                   
                                <div style="width: 100%; text-align: right; padding-top: 1px; font-size: 16px;  text-overflow: ellipsis;
 display:block; width: 300px; overflow: hidden; white-space: nowrap;"class="col-xs-6 col-sm-6 col-md-6 col-lg-8  pull-right">
                                     
                                    
                                    <asp:Label ID="Label_1" runat="server"><span class="fa fa-circle"></span></asp:Label>
                                    <a href="#" style="color:black;text-decoration:none;">
                                    <asp:Label ID="Label1" Text='<%# Eval("Item1").ToString() %>' runat="server" />
                                       </a>
                                    <br />
                                    <asp:Label ID="Label_2" runat="server"><span class="fa fa-circle"></span></asp:Label>
                                    <a href="#" style="color:black;text-decoration:none;">
                                    <asp:Label ID="Label2" Text='<%# Eval("Item2").ToString() %>' runat="server" />
                                        </a>
                                        
                                    <br />
                                    <asp:Label ID="Label_3" runat="server"><span class="fa fa-circle"></span></asp:Label>
                                    <a href="#" style="color:black;text-decoration:none;">
                                    <asp:Label ID="Label3" Text='<%# Eval("Item3").ToString() %>' runat="server" />
                                        </a>
                                        
                                    <br />

                                    <asp:Label ID="Label_4" runat="server"><span class="fa fa-circle"></span></asp:Label>
                                    <a href="#" style="color:black;text-decoration:none;">
                                    <asp:Label ID="Label4" Text='<%# Eval("Item4").ToString() %>' runat="server" />
                                      </a>  
                                    <br />

                                    <asp:Label ID="Label_5" runat="server"><span class="fa fa-circle"></span></asp:Label>
                                    <a href="#" style="color:black;text-decoration:none;">
                                    <asp:Label ID="Label5" Text='<%# Eval("Item5").ToString() %>' runat="server" />
                                      </a>  
                                    <br />
                                    <asp:Label ID="Label_6" runat="server"><span class="fa fa-circle"></span></asp:Label>
                                    <a href="#" style="color:black;text-decoration:none;">
                                    <asp:Label ID="Label6" Text='<%# Eval("Item6").ToString() %>' runat="server" />
                                        </a>
                                    <br />
                                    <asp:Label ID="Label_7" runat="server"><span class="fa fa-circle"></span></asp:Label>
                                    <a href="#" style="color:black;text-decoration:none;">
                                    <asp:Label ID="Label7" Text='<%# Eval("Item7").ToString() %>' runat="server" />
                                        </a>
                                   

                                </div>
                                    <%-- clab images --%>
                                
                                 <asp:Image ID="CLab_Im" ImageUrl='<%# Eval("FilePathImage") %>' runat="server"  Height="160px" style="align-items:flex-end; right:-5px;width:50%;direction:ltr; position:relative;left:2px;" class="col-xs-6 col-sm-6 col-md-6 col-lg-4 img-responsive ulimages "/>
                                    
                                </div>
                                

                            </td>
                        </tr>
                    </table>
                

                    
            </ItemTemplate>
           
        </asp:DataList>
    </div>
     </div>
<script>
    $(document).ready(function () {
        $(".title-area").on({
            mouseenter: function () {
                $(this).css("color", "#0073e6");
            },
            mouseleave: function () {
                $(this).css("color", "#c50010");
            }
            
        });
    });
</script>

<link href="../bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="../Scripts/jquery-3.5.1.min.js"></script>
<script src="../bootstrap-4.3.1/js/bootstrap.min.js"></script>

