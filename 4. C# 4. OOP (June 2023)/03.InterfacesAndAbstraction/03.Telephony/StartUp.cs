// 03. Telephony - StartUp

using _03.Telephony.Models;
using _03.Telephony.Models.Interfaces;

namespace _03.Telephony
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            string[] phoneNumbers = Console.ReadLine().Split(" ", StringSplitOptions.RemoveEmptyEntries);
            string[] websites = Console.ReadLine().Split(" ", StringSplitOptions.RemoveEmptyEntries);

            ICallCapable phone;
            foreach (string phoneNumber in phoneNumbers)
            {
                try
                {
                    if (!phoneNumber.All(char.IsDigit))
                    {
                        throw new ArgumentException("Invalid number!");
                    }

                    if (phoneNumber.Length == 7)
                    {
                        phone = new StationaryPhone();
                        string output = phone.Call(phoneNumber);
                        Console.WriteLine(output);
                    }
                    else if (phoneNumber.Length == 10)
                    {
                        phone = new Smartphone();
                        string output = phone.Call(phoneNumber);
                        Console.WriteLine(output);
                    }
                }
                catch (ArgumentException ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }

            IWebsurfingCapable smartphone;
            foreach (string website in websites)
            {
                try
                {
                    if (website.Any(char.IsDigit))
                    {
                        throw new ArgumentException("Invalid URL!");

                    }

                    smartphone = new Smartphone();
                    Console.WriteLine(smartphone.Browse(website));
                }
                catch (ArgumentException ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
        }
    }
}