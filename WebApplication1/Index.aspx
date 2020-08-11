<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.Index" %>

<%@ Register Src="~/UserControls/UserControl_Header.ascx" TagPrefix="SKU" TagName="UserControl_Header" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" class="container-fluid">
        <SKU:UserControl_Header runat="server" ID="UserControl_Header"></SKU:UserControl_Header>
        
    </form>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="bootstrap-4.3.1/js/bootstrap.min.js"></script>
    <link href="bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

</body>
</html>
