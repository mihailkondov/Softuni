using System;
using System.Data.Common;
using System.Xml;

namespace Lekciq3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string howdoistop = Console.ReadLine();
            string output = "";
            switch (howdoistop)
            {
                case "monday":
                    output = "1";
                    break;
                case "tuesday":
                    output = "2";
                    break;  
                case "wednesday":
                    output = "It is the day of wednes, my dudes";
                    break;
                case "thursday":
                    output = "4";
                    break;
                case "friday":
                    output = "5";
                    break;
                case "saturday":
                        output = "6";
                    break;
                case "sunday":
                    output = "Sonntag";
                    break;
                default:
                    output = "huh?";
                    break;
            }
            Console.WriteLine($"{output}");
        }
    }
}
