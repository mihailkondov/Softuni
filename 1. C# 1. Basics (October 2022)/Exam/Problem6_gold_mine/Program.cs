using System;

namespace Problem6_gold_mine
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());//broi lokacii
            for(int i =0; i<n; i++) //za vsqka lokaciq opredelqm:
            {
                double ochakvanSrDobiv = double.Parse(Console.ReadLine()); //ochakvan sreden dobiv
                int brDni= int.Parse(Console.ReadLine()); // dni kopaene na lokaciqta
                double obshtoDobiv=0; //shte dobavqm izkopanoto vseki den v tazi promenliva
                for(int j =0; j<brDni; j++) // za vseki den na lokaciqta
                {
                    double izkopanoZaDenq = double.Parse(Console.ReadLine());  //izkopavam
                    obshtoDobiv+= izkopanoZaDenq;                               // pribiram v kofata
                }
                double realSredenDobiv = obshtoDobiv / brDni;           //smqtam za 1 den sredno izkopano
                if(realSredenDobiv>= ochakvanSrDobiv)
                {
                    Console.WriteLine($"Good job! Average gold per day: {realSredenDobiv:F2}.");
                }
                else
                {
                    Console.WriteLine($"You need {ochakvanSrDobiv- realSredenDobiv:F2} gold.");
                }
            }
        }
    }
}
