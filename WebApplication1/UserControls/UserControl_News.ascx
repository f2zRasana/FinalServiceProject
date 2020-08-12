<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_News.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_News" %>


<style>
    .text {
       
    }
    #Body{
    display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
   overflow: hidden;
   text-overflow: ellipsis;
  }
    #Title{
 display: block;
        /*width: 150px;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;*/
      

       
    }
</style>

<%--/******************************************--%>

<div class="container-fluid">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: right; margin-bottom: 25px; margin-top: 20px;">
    <span class="label-news" style="border-bottom: 3px solid #e75460; padding-bottom: 10px; font-family: 'B Mitra'; direction: rtl;"><strong>خبرها</strong></span>

</div>
<br />
<br />
    <div class="row" style="direction:rtl !important">
    <div class="col-sm-12 col-md-3 col-lg-3"style="margin-right:10px;text-align:right;">
 <asp:DataList ID="ListNews"  runat="server" CellSpacing="0" CellPadding="1" Style="font-family: 'B Mitra'; direction: rtl;" RepeatColumns="3" DataKeyField="ID" RepeatDirection="Horizontal" >
            <ItemTemplate >
               

                <table  style="border-spacing:5px; overflow-y: auto; border-radius: 10px; /*width: 450px;*/ height: 255px; margin-top: 4px; margin-bottom: 10px;  background-color: #FFFFFF; box-shadow: 0px 0px 6px -2px #777777; border: 1px solid #f1ecec; border-collapse:separate; direction: rtl; margin-right: 1px; padding:2px;">
                        <tr  >
                            <td  >
                                <div class="row">
    
                                    <a class=" pull-right title-area" href="#" style="text-decoration:none;  /*padding:2px;*/ /*width:100%*/;">
                                        <asp:Image ID="CLab_NewsIm" ImageUrl='<%# Eval("FilePathImage") %>' runat="server"  Height="160px" style="width:90%;direction:ltr; /*position:relative;*/margin:15px; border:1px solid #423e3e; padding:1px;" class="col-xs-12 col-sm-12 col-md-12 col-lg-12 img-responsive "/>
                                             
                                <br />
                                        </div>
                                </td>
                                </tr>
                    <tr>
                        <td>
                                <div class="row">
                                   
                                <div  style="width: 100%; text-align: right; padding-top: 1px; font-size: 16px;  width: 400px;  "class="col-xs-6 col-sm-6 col-md-12 col-lg-12  pull-right">
                                     
                                    
                                   
                                    <a href="#" style="text-decoration:none;" id="Title">
                                    <asp:Label ID="Title_Label" Text='<%# Eval("Title").ToString() %>' runat="server" />
                                       </a>
                                  
                                    <hr />
                                   
                                    <a href="#" style="color:black;text-decoration:none;text-align:justify;" ID="Body">
                                    <asp:Label ID="Body_Label" Text='<%# Eval("Body").ToString() %>' runat="server" />
                                        </a>
                                        
                                    <br />
                                   
                                    <a href="#" style="color:black;text-decoration:none;">
                                    <asp:Label ID="PublishedDate_Label" Text='<%# Eval("PublishedDate").ToString() %>' runat="server" />
                                        </a>
                                        
                                    <br />
                                </div>
                              
                                </div>
                                

                            </td>
                        </tr>
                    </table>
                

                    
            </ItemTemplate>
           
        </asp:DataList>
        </div>
    </div>
    <div class="row">
    <div class="col-sm-12 col-md-3 col-lg-3" style="margin-left:50%;">
    <ul class="pagination" >
    <li class="page-item"><a class="page-link fa fa-angle-double-left" href="#" style="font-size:20px;"></a></li>
    <li class="page-item active"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link fa fa-angle-double-right" href="#" style="font-size:20px;"></a></li>
  </ul>
</div>
     </div>   
</div>

<script>
    $(document).ready(function () {
        $("#Title").on({
            mouseenter: function () {
                $(this).css("color", "#38698a");
            },
            mouseleave: function () {
                $(this).css("color", "#0099cc");
            }
            
        });
    });
</script>

