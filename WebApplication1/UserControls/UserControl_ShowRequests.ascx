<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl_ShowRequests.ascx.cs" Inherits="WebApplication1.UserControls.UserControl_ShowRequests" %>

<div class="card shadow" style="border-radius: 20px; color: #603939;">
    <%-- Header --%>
    <div class="card-header" style="text-align: right;">
        <h4>پنل مدیریت</h4>
    </div>
    <%-- Body --%>
    <div class="card-body" style="background-color: #d9d6d6;">
        <div class=" pull-right" style="direction: rtl; text-align: right; align-items: center; vertical-align: central; width: 100%; border: 1px solid #808080;">

            <div style="padding: 0px; margin: 10px 5px 10px 10px; direction: rtl; display: inline-block;">
                <button class="btn btn-outline-info" type="button" data-toggle="collapse" data-target="#request" style="width: inherit;">
                    درخواستها
               
                    <span class="fa fa-arrow-circle-down"></span>
                </button>
            </div>

            <div id="request" class="collapse" style="">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">عنوان</th>
                            <th scope="col">تاریخ درخواست</th>
                            <th scope="col">نام متقاضی</th>
                            <th></th>
                            <th></th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>فرم استفاده از تجهیزات پژوهشکده زیست فناوری</td>
                            <td>2020-08-11</td>
                            <td>farnoosh</td>
                            <td>
                                <button style="width: 100%; height: auto" class="btn btn-outline-success">Accept</button></td>
                            <td>
                                <button style="width: 100%; height: auto;" class="btn btn-outline-danger">Deny</button></td>

                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>فرم استفاده از تجهیزات مرکز تحقیقات منابع آب</td>
                            <td>2020-08-10</td>
                            <td>farnoosh</td>
                            <td>
                                <button style="width: 100%; height: auto;" class="btn btn-outline-success" >Accept</button></td>
                            <td>
                                <button style="width: 100%; height: auto;" class="btn btn-outline-danger">Deny</button></td>

                        </tr>
                    </tbody>
                </table>
            </div>


            <div id="accepted" class="collapse" style="">
            </div>

        </div>
    </div>
</div>
