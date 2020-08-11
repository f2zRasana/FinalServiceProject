<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_CLabMenu.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_CLabMenu" %>
<style>
    .menu li:hover {
        background-color: #ef5661;
    }

    .hover-submenu a:hover {
        background-color: #ef5661;
        color:white;

    }
</style>

<%-- ******************************************************************** --%>

<div class="row">
    <nav class="navbar navbar-expand-lg navbar-dark col-12 col-sm-12 col-md-12 col-lg-12" style="margin-top: 20px; font-family: 'B Mitra'; font-size: 18px; padding: 0px; background-color: #616161; direction: rtl; text-align:right; float:right;">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="true" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse menu" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">صفحه اصلی <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">دانشکده فنی و مهندسی
                    </a>
                    <ul class="dropdown-menu dropleft hover-submenu" aria-labelledby="navbarDropdownMenuLink" style="text-align: right;">
                        <li class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" href="#">گروه مهندسی عمران</a>
                            <ul class="dropdown-menu" style="text-align: right;">
                                <li><a class="dropdown-item" href="#">آزمایشگاه ژئوتکنیک</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه هیدرولیک</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه مصالح ساختمانی و تکنولوژی بتن</a></li>
                            </ul>
                        </li>
                        <li class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" href="#">گروه مهندسی مکانیک</a>
                            <ul class="dropdown-menu" style="text-align: right;">
                                <li><a class="dropdown-item" href="#">آزمایشگاه مقاومت مصالح</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه مکانیک سیالات</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه ترمودینامیک</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه انتقال حرارت</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه دینامیک و ارتعاشات</a></li>
                            </ul>
                        </li>
                        <li class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" href="#">گروه مهندسی مواد</a>
                            <ul class="dropdown-menu" style="text-align: right;">
                                <li><a class="dropdown-item" href="#">آزمایشگاه متالوگرافی</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه آنالیز</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه پروژه</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه خواص مکانیکی</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه خوردگی و اکسیداسیون</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه عملیات حرارتی</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه فرآیند ساخت سرامیک</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه ریخته گری</a></li>
                            </ul>
                        </li>
                        <li class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" href="#">گروه مهندسی کامپیوتر</a>
                            <ul class="dropdown-menu" style="text-align: right;">
                                <li><a class="dropdown-item" href="#">آزمایشگاه هوش مصنوعی</a></li>
                            </ul>
                        </li>
                        <li class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" href="#">گروه مهندسی برق</a>
                            <ul class="dropdown-menu" style="text-align: right;">
                                <li><a class="dropdown-item" href="#">کارگاه برق</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه یروژه</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه الکترونیک</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه مدار و اندازه گیری</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه ماشین های الکتریکی</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه شبیه ساز سیستم های قدرت</a></li>
                                <li><a class="dropdown-item" href="#">آزمایشگاه مدارهای مخابراتی و تکنیک پالس</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">دانشکده کشاورزی
                    </a>
                    <ul class="dropdown-menu dropleft hover-submenu" aria-labelledby="navbarDropdownMenuLink" style="text-align: right;">
                        <li class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" href="#">گروه علوم و مهندسی خاک</a>
                            <ul class="dropdown-menu" style="text-align: right;">
                                <li><a class="dropdown-item" href="#">آزمایشگاه خاک شناسی</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">دانشکده دامپزشکی
                    </a>
                    <ul class="dropdown-menu dropleft hover-submenu" aria-labelledby="navbarDropdownMenuLink" style="text-align: right;">
                        <li class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" href="#">گروه پاتروبیولوژی</a>
                            <ul class="dropdown-menu" style="text-align: right;">
                                <li><a class="dropdown-item" href="#">آزمایشگاه هیستوپاترولوژی</a></li>
                            </ul>
                        </li>
                        <li class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" href="#">گروه بهداشت و کنترل کیفی مواد غذایی</a>
                            <ul class="dropdown-menu" style="text-align: right;">
                                <li><a class="dropdown-item" href="#">آزمایشگاه بهداشت و کنترل کیفی مواد غذایی</a></li>
                            </ul>
                        </li>
                        <li class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" href="#">گروه علوم پایه</a>
                            <ul class="dropdown-menu" style="text-align: right;">
                                <li><a class="dropdown-item" href="#">آزمایشگاه فیزیولوژی و فارماکولوژی</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <%-- دانشکده علوم پایه --%>
                <li class="nav-item active">
                    <a class="nav-link" href="#">دانشکده علوم پایه</a>
                </li>
                <%-- پژوهشکده ها --%>
                 <li class="nav-item dropdown active">
                    <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">پژوهشکده ها
                    </a>
                    <ul class="dropdown-menu dropleft hover-submenu" aria-labelledby="navbarDropdownMenuLink" style="text-align: right;">
                        <li class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" href="#">پژوهشکده نانو</a>
                            <ul class="dropdown-menu" style="text-align: right;">
                                <li><a class="dropdown-item" href="#">آزمایشگاه پژوهشکده فناوری نانو</a></li>
                            </ul>
                        </li>
                        <li class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" href="#">پژوهشکده زیست فناوری</a>
                            <ul class="dropdown-menu" style="text-align: right;">
                                <li><a class="dropdown-item" href="#"> Real-time PCR</a></li>
                                 <li><a class="dropdown-item" href="#"> Nanodrop array spectrophotometer</a></li>
                            </ul>
                        </li>
                        <li class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" href="#">پژوهشکده فناوری جنین دام</a>
                          <%--  <ul class="dropdown-menu" style="text-align: right;">
                                <li><a class="dropdown-item" href="#">آزمایشگاه فیزیولوژی و فارماکولوژی</a></li>
                            </ul>--%>
                        </li>
                        <li class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" href="#">مرکز تحقیقات منابع آب </a>
                            <%--<ul class="dropdown-menu" style="text-align: right;">
                                <li><a class="dropdown-item" href="#">آزمایشگاه فیزیولوژی و فارماکولوژی</a></li>
                            </ul>--%>
                        </li>
                    </ul>
                </li>
              
            </ul>
        </div>
    </nav>
    
</div>
<%--  --%>
<link href="../Styles/MenuStyle.css" rel="stylesheet" />
<link href="../bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />

<script src="../Scripts/jquery-3.5.1.min.js"></script>

<script src="../bootstrap-4.3.1/js/bootstrap.min.js"></script>
<script src="../Scripts/MenuScript.js"></script>
<%--



--%>