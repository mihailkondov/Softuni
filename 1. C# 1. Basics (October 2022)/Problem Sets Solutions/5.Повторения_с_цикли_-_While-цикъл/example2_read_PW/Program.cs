using System;

namespace example2_read_PW
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter username:");
            string username = Console.ReadLine();
            Console.WriteLine($"Hello, {username}! Please enter the password");
            string inputPassword = Console.ReadLine();
            string password = "123456";
            while(password != inputPassword)
            {
                 inputPassword = Console.ReadLine();
            }
            Console.WriteLine("Welcum"); 
        }
    }
}
