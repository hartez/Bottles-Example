<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="AdvancedEncryptionView.aspx.cs" Inherits="RegistryExtensionExample.AdvancedEncryptionView" %>
<%@ Import Namespace="FubuMVC.Core.UI" %>
<%@ Import Namespace="RegistryExtensionExample" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
	<h1>Enter the text to be encrypted:</h1>
	
	<%=this.FormFor<AdvancedEncryptionRequestModel>() %>
	
	<%=this.LabelFor<AdvancedEncryptionRequestModel>(m => m.Original)%>
	<%=this.InputFor<AdvancedEncryptionRequestModel>(m => m.Original).Attr("style", "width:500px")%>
	
	<br/>

	<input type="submit" value="Encrypt"/>

	<%=this.EndForm() %>
	
	<h1>Original:</h1>
	<p><%=Model.Original %></p>
	
	<h1>Encrypted:</h1>
	<p><%=Model.Encrypted %></p>
	
	<h1>Key:</h1>
	<p><%=Model.Key %></p>
	
	<h1>IV:</h1>
	<p><%=Model.IV %></p>
</asp:Content>
