<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_NewRequest2.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_NewRequest2" %>

<div class="card shadow" style="border-radius: 20px; color: #603939;">
    <%-- Header --%>
    <div class="card-header" style="text-align: right;">
        <h4>ثبت درخواست جدید</h4>
    </div>
    <%-- Body --%>
    <div class="card-body" >
        <div class="row" style="direction: ltr;">
            <a id="go_back" class="btn-sm btn btn-outline-primary" style="color:#167193; float: left; border-radius: 25px; margin-left: 10px;font-size:10px">بازگشت</a>
        </div>
        <div class="row" style="direction: rtl; font-size:13px;direction: rtl;">
            
            <p>دستورالعمل ها را گام به گام انجام دهید و در انتها بروی دکمه «تایید» که در پایین فرم واقع است کلیک کنید. فیلدهای الزامی با * مشخص شده اند.</p>
        
            </div>
        <div class="row" style="direction: rtl; font-size:11px;text-align:center; margin-bottom:5px;border-bottom:1px solid #cacaca;">
             
            <p style=" margin-right:19%;color: #930202;">منابع رزرو شده در این فرم، در صورتی که ثبت نهایی نشود، به مدت ۲۰ دقیقه معتبر خواهد بود / در صورتی که صفحه جاری بارگذاری مجدد (رفرش) شود منابع انتخابی حذف خواهد شد.</p>
            <p style="margin-right:25%;color: #930202;">
                لطفا استاد راهنما، همکار و یا اشخاص دیگری که در جهت استفاده از منبع ذینفع هستند را با کلیک بروی دکمه «افزودن همراه» به فرم اضافه کنید
          
</div>
        <div class="container" style="direction:rtl;margin-top:10px;">
         <table class="table table-hover " style="width:50%; font-size:12px;" >
        <tbody>
            <tr class="row" style="background-color:#5e5454;color:#ffffff;text-align:center;">
                <td class="col-sm-12">مسئول درخواست</td>
                
            </tr>
            <tr class="row" style="text-align:center;">
                <td class="col-sm-4">نام</td>
                 <td class="col-sm-8"><asp:TextBox runat="server" ID="NameTextBox" Width="200px"></asp:TextBox></td>
                
            </tr>
<tr class="row" style="text-align:center;">
                <td class="col-sm-4" style="text-align:center;">نام خانوادگی</td>
     <td class="col-sm-8"><asp:TextBox runat="server" ID="FamilyTextBox" Width="200px" ></asp:TextBox></td>
                
            </tr>

        </tbody>
    </table>
    </div>
        </div>
</div>

<link href="../../bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="../../Scripts/jquery-3.5.1.min.js"></script>
<script src="../../bootstrap-4.3.1/js/bootstrap.min.js"></script>
