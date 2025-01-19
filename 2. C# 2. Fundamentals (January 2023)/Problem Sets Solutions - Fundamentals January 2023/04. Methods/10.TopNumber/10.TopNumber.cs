// 10. Top Number

namespace _10.TopNumber
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int inputInt = int.Parse(Console.ReadLine());
            for (int i = 1; i <= inputInt; i++)
            {
                bool isTopNumber = IsTopNumber(i);
                if (isTopNumber)
                {
                    Console.WriteLine(i);
                }
            }
        }

        static bool IsTopNumber(int a)
        {
            bool divisbleBy8 = false;
            bool hasOddDigit = false;
            int sumOfDigits = 0;

            while (a > 0)
            {
                int digit = a % 10;
                if (hasOddDigit == false)
                {
                    hasOddDigit = digit % 2 == 1;
                }
                sumOfDigits += digit;
                a /= 10;
            }

            if (sumOfDigits % 8 == 0)
            {
                divisbleBy8 = true;
            }

            bool approved = divisbleBy8 && hasOddDigit;
            return approved;
        }
    }
}