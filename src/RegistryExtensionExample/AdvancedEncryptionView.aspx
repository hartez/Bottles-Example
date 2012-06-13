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
	
	<p>This is an example of replacing functionality in the parent application with a Bottle. The parent application has a default implementation using ROT-13; this bottle replaces that with a more complex AES encryption scheme.</p>
	
	<p>When this Bottle is enabled, the registry (see Registry.cs) adds the encryption handler route and views defined in this Bottle to the application. It also extends the parent application's registry with a policy which removes the default encryption routes and views (see RegistryExtension.cs). To turn this module off and see the default encryption module in the parent application, just change the 'IgnoreThisBottle' value in Registry.cs to 'true', then rebuild the solution. (You may also have to force the application pool to recycle by modifying the web.config.)</p>
	
	<p><a class="back" href="/">Back to the home page</a></p>
</asp:Content>
