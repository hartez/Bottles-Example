using FubuMVC.Core;
using FubuMVC.WebForms;

namespace HelloBottle
{
	public class Registry : FubuPackageRegistry
	{
		public Registry()
		{
			Actions.IncludeTypes(x => x.Name.EndsWith("Handler"));

			Routes
				.IgnoreControllerNamespaceEntirely();

			Import<WebFormsEngine>();

			Views
				.TryToAttachWithDefaultConventions();
		}
	}
}