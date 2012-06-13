using System.Collections.Generic;
using System.Linq;
using FubuMVC.Core;
using FubuMVC.Core.Registration;
using FubuMVC.Core.Registration.Nodes;

namespace RegistryExtensionExample
{
	public class RegistryExtension : IFubuRegistryExtension
	{
		#region IFubuRegistryExtension Members

		public void Configure(FubuRegistry registry)
		{
			if (!Registry.IgnoreThisBottle)
			{
				// Modify the parent application's registry by adding a new policy
				registry
					.Policies
					.Add<RemoveDefaultEncryption>();
			}
		}

		#endregion
	}

	public class RemoveDefaultEncryption : IConfigurationAction
	{
		#region IConfigurationAction Members

		public void Configure(BehaviorGraph graph)
		{
			// This policy finds the actions from the EncryptionHandler class in the 
			// parent application and removes them; They'll be replaced by the actions defined in 
			// this Bottle 
			graph.Behaviors.Where(chain =>
				{
					ActionCall call = chain.FirstCall();

					return call != null
					       && call.HandlerType.Assembly != typeof (RegistryExtension).Assembly
					       && call.HandlerType.Name == "EncryptionHandler";
				}).ToList()
				.Each(graph.RemoveChain);
		}

		#endregion
	}
}