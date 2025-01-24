// 05. Multiply Big Number

// Warning: graphic content, do not read without adult supervision.
using System.Text;

namespace _05.MultiplyBigNumber
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string bigNumber = Console.ReadLine();
            int smallNumber = int.Parse(Console.ReadLine());
            int naum1 = 0;
            StringBuilder sb = new StringBuilder();


            for (int i = bigNumber.Length - 1; i >= 0; i--)
            {
                int digit = bigNumber[i] - 48;       
                int res18 = digit * smallNumber;

                int newDigitInt = res18 + naum1;
                naum1 = (res18 + naum1) / 10;
                char newDigit = (char)(newDigitInt % 10 + 48);
                sb.Append(newDigit);
                if (i == 0 && naum1 != 0)
                {
                    newDigit = (char)(naum1 + 48);
                    sb.Append(newDigit);
                }
            }

            StringBuilder output = new StringBuilder();
            bool firstNumber = false;
            for (int i = sb.Length - 1; i >= 0; i--)
            {
                if (sb[i] != 0)
                    firstNumber = true;
                if (firstNumber)
                    output.Append(sb[i]);
            }

            if (!firstNumber)
            {
                Console.WriteLine(0);
            }

            bool firstNonZeroFound = false;
            for (int i = 0; i < output.Length; i++)
            {
                if (!firstNonZeroFound)
                {
                    if (output[i] != '0')
                    {
                        firstNonZeroFound = true;
                        Console.Write(output[i]);
                    }
                }
                else
                {
                    Console.Write(output[i]);
                }
            }

            if (!firstNonZeroFound)
            {
                Console.WriteLine(0);
            }
        }
    }
}
