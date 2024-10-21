using System;

namespace Example5_scam_bot
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            int scamAmount = 0;
            int i = 0;
            while (i<n)
            {
                int vnoska = int.Parse(Console.ReadLine());
                if(vnoska>=0)
                {
                    Console.WriteLine($"Increase: {vnoska}");
                    scamAmount += vnoska;
                    i++;
                }
                else
                {
                    Console.WriteLine("Invalid operation!  bank only take  Bank not give back money at this time !");
                }
                
            }           
            Console.WriteLine($"All your funds are now belong to us ({scamAmount})");
        }
    }
}
