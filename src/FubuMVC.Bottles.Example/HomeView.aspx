﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="HomeView.aspx.cs" Inherits="FubuMVC.Bottles.Example.HomeView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
		<h2>This is an example project to demonstrate Bottles</h2>
		
		<p><a href="/hello">Check out the 'Hello, World' bottle</a></p>
		
		<p><a href="/encryption">Check out the 'encryption' bottle</a></p>

    </div>
</asp:Content>
