<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_Admin.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_َAdmin" %>
<div class="card shadow" style="border-radius: 20px; color: #603939;">
    <%-- Header --%>
    <div class="card-header" style="text-align: right;">
        <h4>پنل مدیریت</h4>
    </div>
    <%-- Body --%>
    <div class="card-body" style="background-color:#d9d6d6;">
       <div class=" pull-right" style="direction: rtl; text-align: right; align-items: center; vertical-align: central; width: 100%; border: 1px solid #808080;">

            <div style=" padding: 0px; margin: 10px 5px 10px 10px; direction: rtl;display:inline-block; ">
                <button class="btn btn-outline-info" type="button" data-toggle="collapse" data-target="#request" style=" width: inherit; ">
                   درخواستها
               
                    <span class="fa fa-arrow-circle-down"></span>
                </button>
            </div>

            <div id="request" class="collapse" style="">
               
            </div>
           <div style=" padding: 0px; margin: 10px 5px 10px 10px; direction: rtl;display:inline-block;">
                <button class="btn btn-outline-danger" type="button" data-toggle="collapse" data-target="#ignored" style=" width: inherit; ">
                    رد درخواست
               
                    <span class="fa fa-arrow-circle-down"></span>
                </button>
            </div>

            <div id="ignored" class="collapse" style="">
               
            </div>
<div style=" padding: 0px; margin: 10px 5px 10px 10px; direction: rtl;display:inline-block;">
                <button class="btn btn-outline-success" type="button" data-toggle="collapse" data-target="#accepted" style=" width: inherit;">
                   قبول درخواست
               
                    <span class="fa fa-arrow-circle-down"></span>
                </button>
            </div>

            <div id="accepted" class="collapse" style="">
               
            </div>

        </div>
    </div>
</div>
<script src="../Scripts/jquery-3.5.1.min.js"></script>
<link href="../bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="../bootstrap-4.3.1/js/bootstrap.min.js"></script>
