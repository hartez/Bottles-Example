﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="HomeView.aspx.cs" Inherits="FubuMVC.Bottles.Example.HomeView" %>
<%@ Import Namespace="HelloBottle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
		<h1><%= Model.Text %></h1>
		
		<p><a href="<%= Urls.UrlFor(new HelloInputModel()) %>">See the hello world page</a></p>

		<p><a href="<%= Urls.UrlFor(new HelloInputModel(){Language = "Spanish"}) %>">See the hello world page in Spanish</a></p>
		
    </div>
</asp:Content>