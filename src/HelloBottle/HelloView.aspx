<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="HelloView.aspx.cs"
	Inherits="HelloBottle.HelloView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div>
		<h1>
			Hello Bottle Example</h1>
		<h2>
			<%= Model.Hello %></h2>
	</div>
</asp:Content>
