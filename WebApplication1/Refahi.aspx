<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Refahi.aspx.cs" Inherits="WebApplication1.Refahi" %>

<%@ Register Src="~/UserControls/UserControl_Header.ascx" TagPrefix="SKU" TagName="UserControl_Header" %>
<%@ Register Src="~/UserControls/UserControl_RefahiPart.ascx" TagPrefix="SKU" TagName="UserControl_RefahiPart" %>
<%@ Register Src="~/UserControls/UserControl_News.ascx" TagPrefix="SKU" TagName="UserControl_News" %>
<%@ Register Src="~/UserControls/UserControl_Footer.ascx" TagPrefix="SKU" TagName="UserControl_Footer" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Refahi</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <SKU:UserControl_Header runat="server" id="UserControl_Header" ></SKU:UserControl_Header>
        <SKU:UserControl_News runat="server" id="UserControl_News" ></SKU:UserControl_News>
        <SKU:UserControl_RefahiPart runat="server" id="UserControl_RefahiPart" ></SKU:UserControl_RefahiPart>
        <SKU:UserControl_Footer runat="server" id="UserControl_Footer" ></SKU:UserControl_Footer>
    </div>
    </form>
     <link href="bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script src="Scripts/jquery-3.5.1.min.js"></script>

    <script src="bootstrap-4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
