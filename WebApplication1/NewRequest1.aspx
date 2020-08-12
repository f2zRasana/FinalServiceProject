<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRequest1.aspx.cs" Inherits="WebApplication1.NewRequest1" %>

<%@ Register Src="~/UserControls/UserControl_NewRequest1.ascx" TagPrefix="SKU" TagName="UserControl_NewRequest1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <SKU:UserControl_NewRequest1 runat="server" id="UserControl_NewRequest1" ></SKU:UserControl_NewRequest1>
    </div>
    </form>
</body>
</html>
<link href="bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

<script src="Scripts/jquery-3.5.1.min.js"></script>
<script src="bootstrap-4.3.1/js/bootstrap.min.js"></script>
