<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_Footer.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_Footer" %>

<style>
    .footer {
    background-color: #D7DEE0;
    padding: 30px;
    text-align: right;
    font-size: 15px;
    color: black;
    direction: rtl;
    position: relative;
    /*float: right;*/
    margin-top: 1px;
    padding-top: 10px;  
    font-size:small;
    font-family:'B Nazanin';
    position:fixed;
}

</style>
<div>
    <div id="goUp" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align:center; margin-top:50px; margin-bottom:20px;">
      <button onclick="scrollToTop()">بازگشت به بالا
          <span style="border-radius:20px; border:1px solid; border-color:#808080;" class="fa fa-arrow-up">
           </span>
      </button>
</div>

<div class="footer col-sm-12 col-md-12 col-sm-12">
    <h4>اطلاعات تماس</h4><br />
        <span class="fa fa-building">  سامانه رزرو و زمانبندی منابع</span>
    <br />
    
        &nbsp; &nbsp; &nbsp; &nbsp;
    <span>شهرکرد- بلوار رهبر- دانشگاه شهرکرد- اداره آزمایشگاه مرکزی دانشگاه</span>
    <br />
    <br />


        <span class="fa fa-phone-square"></span>
    &nbsp; 
    <span>شماره‌های تماس:</span>
    <br />
            &nbsp; &nbsp; &nbsp; &nbsp;

        <span>038-32324401 (داخلی 2165)</span>
    <br />
    <br />

    <span class="fa fa-envelope-square">ایمیل</span>
    <br />
        &nbsp; &nbsp; &nbsp; &nbsp;
   <span>info@services.sku.ac.ir</span>
    <br />
    <br />

</div> 
    </div>

<script>
    function scrollToTop() {
        window.scrollTo(0, 0);
    }
</script>