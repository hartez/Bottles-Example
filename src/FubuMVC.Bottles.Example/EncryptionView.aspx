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
	
	<p>This is the default encryption section that's built into the main example application. It takes the form input and runs it through an ROT-13 routine to 'encrypt' the data. If you're seeing this view, it means that the 'RegistryExtensionExample' bottle is disabled. To enable it, go to Registry.cs in the RegistryExtensionExample project and set 'IgnoreThisBottle' to false. Rebuild the solution (you may also need to force the application pool to recycle by modifying the web.config). You should see the 'advanced' encryption module from the Bottle replacing the default functionality from the parent application.</p>
	
	<p><a class="back" href="/">Back to the home page</a></p>
</asp:Content>
