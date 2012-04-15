using FubuMVC.Core;
using FubuMVC.WebForms;

namespace HelloBottle
{
	public class HelloView : FubuPage<HelloViewModel>
	{
	}

	public class HelloHandler
	{
		public HelloViewModel get_hello(HelloInputModel input)
		{
			if (input.Language == "Spanish")
			{
				return new HelloViewModel {Hello = "Hola, mundo!"};
			}

			if(input.Language == "Czech")
			{
				return new HelloViewModel { Hello = "Ahoj světe!" };
			}

			return new HelloViewModel {Hello = "Hello, world!"};
		}
	}

	public class HelloViewModel
	{
		public string Hello { get; set; }
	}

	public class HelloInputModel
	{
		[QueryString]
		public string Language { get; set; }
	}
}