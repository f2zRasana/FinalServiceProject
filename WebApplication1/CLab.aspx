<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CLab.aspx.cs" Inherits="WebApplication1.CLab" %>

<%@ Register Src="~/UserControls/UserControl_Header.ascx" TagPrefix="SKU" TagName="UserControl_Header" %>
<%@ Register Src="~/UserControls/UserControl_Labs.ascx" TagPrefix="SKU" TagName="UserControl_Labs" %>
<%@ Register Src="~/UserControls/UserControl_News.ascx" TagPrefix="SKU" TagName="UserControl_News" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <SKU:UserControl_Header runat="server" id="UserControl_Header" ></SKU:UserControl_Header>
        <SKU:UserControl_News runat="server" id="UserControl_News" ></SKU:UserControl_News>
        <SKU:UserControl_Labs runat="server" id="UserControl_Labs" ></SKU:UserControl_Labs>

    </div>
    </form>
</body>
</html>
