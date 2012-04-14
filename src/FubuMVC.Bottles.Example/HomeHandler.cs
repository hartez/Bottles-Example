namespace FubuMVC.Bottles.Example
{
	public class HomeHandler
	{
		public HomeViewModel get_home(HomeInputModel input)
		{
			return new HomeViewModel {Text = "This is an example project to demonstrate Bottles"};
		}
	}

	public class HomeViewModel
	{
		public string Text { get; set; }
	}

	public class HomeInputModel
	{
	}
}