﻿<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="HomeView.aspx.cs" Inherits="FubuMVC.Bottles.Example.HomeView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<h1><%= Model.Text %></h1>
		
		<p><a href="hello">See the hello world page</a></p>

		<p><a href="hello?Language=Spanish">See the hello world page in Spanish</a></p>
    </div>
    </form>
</body>
</html>
