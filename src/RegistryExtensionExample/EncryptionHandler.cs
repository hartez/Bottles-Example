using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;

namespace RegistryExtensionExample
{
	public class EncryptionHandler
	{
		public AdvancedEncryptionResultModel get_encryption(AdvancedEncryptionRequestModel input)
		{
			return new AdvancedEncryptionResultModel();
		}

		public AdvancedEncryptionResultModel post_encryption(AdvancedEncryptionRequestModel input)
		{
			string iv;
			string key;
			string encrypted = Encryptor.Encrypt(input.Original, out key, out iv);

			return new AdvancedEncryptionResultModel {Original = input.Original, Encrypted = encrypted, IV = iv, Key = key};
		}
	}

	public class AdvancedEncryptionRequestModel
	{
		public string Original { get; set; }
	}

	public class AdvancedEncryptionResultModel
	{
		public string Original { get; set; }

		public string Encrypted { get; set; }

		public string Key { get; set; }

		public string IV { get; set; }
	}

	public static class Encryptor
	{
		public static string ToBracketedString(this byte[] bytes)
		{
			StringBuilder sb = new StringBuilder();
			
			foreach(byte @byte in bytes)
			{
				sb.AppendFormat("[{0}]", @byte);
			}

			return sb.ToString();
		}

		public static string Encrypt(string toEncrypt, out string key, out string iv)
		{
			// Create a new instance of the RijndaelManaged
			// class.  This generates a new key and initialization 
			// vector (IV).
			var myRijndael = new RijndaelManaged();

			// Encrypt the string to an array of bytes.
			byte[] encrypted = encryptStringToBytes_AES(toEncrypt, myRijndael.Key, myRijndael.IV);

			string returnValue
				= encrypted.ToBracketedString();

			iv = myRijndael.IV.ToBracketedString();
			key = myRijndael.Key.ToBracketedString();

			return returnValue;
		}

		// Grabbed this from http://stackoverflow.com/questions/273452/using-aes-encryption-in-c-sharp
		private static byte[] encryptStringToBytes_AES(string plainText, byte[] Key, byte[] IV)
		{
			// Check arguments.
			if (plainText == null || plainText.Length <= 0)
			{
				throw new ArgumentNullException("plainText");
			}
			if (Key == null || Key.Length <= 0)
			{
				throw new ArgumentNullException("Key");
			}
			if (IV == null || IV.Length <= 0)
			{
				throw new ArgumentNullException("Key");
			}

			// Declare the streams used
			// to encrypt to an in memory
			// array of bytes.
			MemoryStream msEncrypt = null;
			CryptoStream csEncrypt = null;
			StreamWriter swEncrypt = null;

			// Declare the RijndaelManaged object
			// used to encrypt the data.
			RijndaelManaged aesAlg = null;

			try
			{
				// Create a RijndaelManaged object
				// with the specified key and IV.
				aesAlg = new RijndaelManaged();
				aesAlg.Key = Key;
				aesAlg.IV = IV;

				// Create a decrytor to perform the stream transform.
				ICryptoTransform encryptor = aesAlg.CreateEncryptor(aesAlg.Key, aesAlg.IV);

				// Create the streams used for encryption.
				msEncrypt = new MemoryStream();
				csEncrypt = new CryptoStream(msEncrypt, encryptor, CryptoStreamMode.Write);
				swEncrypt = new StreamWriter(csEncrypt);

				//Write all data to the stream.
				swEncrypt.Write(plainText);
			}
			finally
			{
				// Clean things up.

				// Close the streams.
				if (swEncrypt != null)
				{
					swEncrypt.Close();
				}
				if (csEncrypt != null)
				{
					csEncrypt.Close();
				}
				if (msEncrypt != null)
				{
					msEncrypt.Close();
				}

				// Clear the RijndaelManaged object.
				if (aesAlg != null)
				{
					aesAlg.Clear();
				}
			}

			// Return the encrypted bytes from the memory stream.
			return msEncrypt.ToArray();
		}
	}
}