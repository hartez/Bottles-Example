namespace FubuMVC.Bottles.Example
{
	public class EncryptionHandler
	{
		public EncryptionResultModel get_encryption(EncryptionRequestModel input)
		{
			return new EncryptionResultModel();
		}

		public EncryptionResultModel post_encryption(EncryptionRequestModel input)
		{
			return new EncryptionResultModel(){Original = input.Original, Encrypted = Rot13.Transform(input.Original)};
		}
	}

	public class EncryptionRequestModel
	{
		public string Original { get; set; }
	}

	public class EncryptionResultModel
	{
		public string Original { get; set; }

		public string Encrypted { get; set; }
	}

	static class Rot13
	{
		/// <summary>
		/// Performs the ROT13 character rotation.
		/// Grabbed from http://www.dotnetperls.com/rot13
		/// </summary>
		public static string Transform(string value)
		{
			char[] array = value.ToCharArray();
			for (int i = 0; i < array.Length; i++)
			{
				int number = (int)array[i];

				if (number >= 'a' && number <= 'z')
				{
					if (number > 'm')
					{
						number -= 13;
					}
					else
					{
						number += 13;
					}
				}
				else if (number >= 'A' && number <= 'Z')
				{
					if (number > 'M')
					{
						number -= 13;
					}
					else
					{
						number += 13;
					}
				}
				array[i] = (char)number;
			}
			return new string(array);
		}
	}
}