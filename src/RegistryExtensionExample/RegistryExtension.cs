using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FubuMVC.Core;
using FubuMVC.Core.Registration;
using FubuMVC.Core.Registration.Nodes;

namespace RegistryExtensionExample
{
	public class RegistryExtension : IFubuRegistryExtension
	{
		public void Configure(FubuRegistry registry)
		{
			if (!Registry.IgnoreThisBottle)
			{
				registry
					.Policies
					.Add<RemoveDefaultEncryption>();
			}
		}
	}

	public class RemoveDefaultEncryption : IConfigurationAction
	{
		public void Configure(BehaviorGraph graph)
		{
			graph.Behaviors.Where(chain =>
				{
					ActionCall call = chain.FirstCall();

					return call != null
					       && call.HandlerType.Assembly != typeof (RegistryExtension).Assembly
					       && call.HandlerType.Name == "EncryptionHandler";
				}).ToList()
				.Each(graph.RemoveChain);
		}
	}
}
