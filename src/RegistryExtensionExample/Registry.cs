using FubuMVC.Core;
using FubuMVC.WebForms;

namespace RegistryExtensionExample
{
	public class Registry : FubuPackageRegistry
	{
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