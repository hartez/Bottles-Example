<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="EncryptionView.aspx.cs" Inherits="FubuMVC.Bottles.Example.EncryptionView" %>
<%@ Import Namespace="FubuMVC.Bottles.Example" %>
<%@ Import Namespace="FubuMVC.Core.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
	<h1>Enter the text to be encrypted:</h1>
	
	<%=this.FormFor<EncryptionRequestModel>() %>
	
	<%=this.LabelFor<EncryptionRequestModel>(m => m.Original) %>
	<%=this.InputFor<EncryptionRequestModel>(m => m.Original).Attr("style", "width:500px") %>
	
	<br/>

	<input type="submit" value="Encrypt"/>

	<%=this.EndForm() %>
	
	<h1>Original:</h1>
	<p><%=Model.Original %></p>
	
	<h1>Encrypted:</h1>
	<p><%=Model.Encrypted %></p>
</asp:Content>
