<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="HelloView.aspx.cs"
	Inherits="HelloBottle.HelloView" %>
<%@ Import Namespace="FubuMVC.Core.UI" %>
<%@ Import Namespace="HelloBottle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<% this.Asset("hellostyles"); %>
	<%= this.WriteAssetTags() %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div>
		<h1>
			Hello Bottle</h1>
		<h2>
			<%= Model.Hello %></h2>
			
		<h3>This bottle implements a very simple 'hello, world' handler. It can also say hello in <a href="<%= Urls.UrlFor(new HelloInputModel(){Language = "Spanish"}) %>">Spanish</a> and <a href="<%= Urls.UrlFor(new HelloInputModel(){Language = "Czech"}) %>">Czech</a></h3>

		<h4>Here's a quick explanation of all the parts of the project. It assumes some familiarity with FubuMVC stuff like the registry and the asset pipeline:</h4>
		
		<ul>
			<li>The '.package-manifest' file tells BottleRunner which files to package up. In addition to the assemblies, we're also packaging up the view (an .aspx markup file), a .css file (following the Content/Styles folder convention), and the .asset.config file that defines the our assets for the asset pipeline.</li>
		
			<li>Take a look at the post-build step in the HelloBottle project. It's using BottleRunner.exe (which comes with the Bottles nuget package) to package up the content and assemblies for HelloBottle as a .zip file and push them to the fubu-content folder in the FubuMVC.Bottles.Example project.</li>
		
			<li>Also, notice that our Registry derives from FubuPackageRegistry (instead of FubuRegistry).</li>
			
			<li>Remember that the bottles get loaded at application start; if you've modified your bottle and rebuilt and your changes aren't showing up, you might need to force an application restart. Modifying the web.config and saving will do it.</li>
			
			<li>If your bottle isn't loading, check <a href="/_fubu/packaging ">the Package Loading Log</a>; it'll give you a pretty good idea of what's happening under the hood.</li>
		</ul>
		
		<p><a class="back" href="/">Back to the home page</a></p>
	</div>
</asp:Content>
