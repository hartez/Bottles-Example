using FubuMVC.Core;
using FubuMVC.WebForms;

namespace FubuMVC.Bottles.Example
{
	public class Registry : FubuRegistry
	{
		public Registry()
		{
			Actions.IncludeTypes(x => x.Name.EndsWith("Handler"));

			Routes
				.HomeIs<HomeInputModel>()
				.IgnoreControllerNamespaceEntirely();

			Import<WebFormsEngine>();

			Views
				.TryToAttachViewsInPackages()
				.TryToAttachWithDefaultConventions();
		}
	}
}