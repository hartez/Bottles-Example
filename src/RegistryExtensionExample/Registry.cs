using FubuMVC.Core;
using FubuMVC.WebForms;

namespace RegistryExtensionExample
{
	public class Registry : FubuPackageRegistry
	{
		// This is just to make it easy for people to switch between the default
		// functionality and the Bottle for this demo; this isn't recommended for 
		// real-life applications
		public static bool IgnoreThisBottle = false;

		public Registry()
		{
			if (!IgnoreThisBottle)
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
}