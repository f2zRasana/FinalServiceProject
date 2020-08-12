<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_RefMenu.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_RefMenu" %>

<style>
    .menu li:hover {
        background-color: #ef5661;
    }

    .hover-submenu a:hover {
        background-color: #ef5661;
        color: white;
    }
       .dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
 }
</style>

<%-- ******************************************************************** --%>
<div class="row">
    <nav class="navbar navbar-expand-lg navbar-dark col-12 col-sm-12 col-md-12 col-lg-12" style="margin-top: 20px; font-family: 'B Mitra'; font-size: 18px; padding: 0px; background-color: #616161; direction: rtl; text-align: right; float: right;">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="true" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse menu" id="navbarNavDropdown">
            <ul class="navbar-nav">

                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">درباره اداره
                    </a>
                    <ul class="dropdown-menu dropleft hover-submenu" aria-labelledby="navbarDropdownMenuLink" style="text-align: center;">
                        <li class="dropdown-submenu">
                            <a class="dropdown-item" href="#">معرفی اداره</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">ساختار اداره</a>
                        </li>
                    </ul>
                </li>

                <%--/*************************************************************************/--%>

                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">امکانات اقامتی-رفاهی
                    </a>
                    <ul class="dropdown-menu dropleft hover-submenu" aria-labelledby="navbarDropdownMenuLink" style="text-align:right;">
                        <li class="dropdown-submenu">
                            <a class="dropdown-item" href="#">امکانت اقامتی دانشگاه</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">مقررات استفاده از مهمانسراهای دانشگاه</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">شیوه نامه استفاده از مهمانسراهای دانشگاه</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">تفاهم نامه های امکانات اقامتی</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">امکانات اقامتی-رفاهی سایر دانشگاه ها</a>
                        </li>
                    </ul>
                </li>

                <%--/*************************************************************************/--%>
                
                <li class="nav-item  active">
                    <a class="nav-link" href="#" id="navbarDropdownMenuLink2">راهنمای استفاده از سامانه
                    </a>
                </li>

                <%--/*************************************************************************/--%>
                  <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">تسهیلات و تفاهم نامه ها
                    </a>
                    <ul class="dropdown-menu dropleft hover-submenu" aria-labelledby="navbarDropdownMenuLink" style="text-align:right;">
                        <li class="dropdown-submenu">
                            <a class="dropdown-item" href="#">تسهیلات بانکی</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"> تفاهم نامه ها</a>
                        </li>
                    </ul>
                </li>
                                <%--/*************************************************************************/--%>

                 <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">منازل سازمانی
                    </a>
                    <ul class="dropdown-menu dropleft hover-submenu" aria-labelledby="navbarDropdownMenuLink" style="text-align:right;">
                        <li class="dropdown-submenu">
                            <a class="dropdown-item" href="#">اعضای هیات علمی </a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#">اعضای هیات غیرعلمی </a>
                        </li>
                    </ul>
                </li>
                <%--/*************************************************************************/--%>
                                
                <li class="nav-item  active">
                    <a class="nav-link" href="#" id="navbarDropdownMenuLink5">بیمه تکمیل درمان و خودرو
                    </a>
                </li>

                <%--/*************************************************************************/--%>
                                
                <li class="nav-item  active">
                    <a class="nav-link" href="#" id="navbarDropdownMenuLink6">سوالات متدوال
                    </a>
                </li>

                <%--/*************************************************************************/--%>

            </ul>
        </div>
    </nav>
</div>



<%-- ********************************************************************** --%>
<script src="../Scripts/jquery-3.5.1.min.js"></script>
<script src="../Scripts/MenuScript.js"></script>
<link href="../Styles/MenuStyle.css" rel="stylesheet" />
