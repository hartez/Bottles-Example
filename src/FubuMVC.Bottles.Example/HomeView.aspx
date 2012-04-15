<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="HomeView.aspx.cs" Inherits="FubuMVC.Bottles.Example.HomeView" %>
<%@ Import Namespace="HelloBottle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
		<h2>This is an example project to demonstrate Bottles</h2>
		
		<p><a href="<%= Urls.UrlFor(new HelloInputModel()) %>">Check out the 'Hello, World' bottle</a></p>
		
    </div>
</asp:Content>
