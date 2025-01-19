/*  
    09. Spice Must Flow

    Spice must flow. It must be extracted from the scorching sands of
Arrakis, under the constant threat of giant sandworms. To make the work as efficient as possible, the Duke has
tasked you with the creation of management software.

Create a program that calculates the total amount of spice that can be extracted from a source. The source has a
starting yield, which indicates how much spice can be mined on the first day. After it has been mined for a day, the
yield drops by 10, meaning on the second day it’ll produce 10 less spice than on the first, on the third day 10 less
than on the second, and so on (see examples). A source is considered profitable only while its yield is at least 100 –
when less than 100 spices are expected in a day, abandon the source.
The mining crew consumes 26 spices every day at the end of their shift and an additional 26 after the mine has been
exhausted. Note that the workers cannot consume more spice than there is in storage.
When the operation is complete, print on the console, on two separate lines, how many days the mine has operated
and the total amount of spice extracted.
 
Input:
    You will receive a number, representing the starting yield of the source.
Output:
    Print on the console, on two separate lines, how many days the mine has operated and the total amount of spice
    extracted.
Constraints:
    The starting yield will be a positive integer within the range [0…2147483647].

 */


namespace _09.SpiceMustFlow
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int yieldPerDay = int.Parse(Console.ReadLine());
            int[] result = MineSpice(yieldPerDay);
            Console.WriteLine(result[0]); // days of mining
            Console.WriteLine(result[1]); // spice extracted
        }

        private static int[] MineSpice(int yield)
        {
            int profit = 0;
            int days = 0;
            while (yield >= 100)
            {
                days++;
                profit += yield; // daily harvest
                yield -= 10; // reduce source profitability
                profit -= 26; // worker consumation
            }
            // wrap up
            profit -= 26;
            if (profit < 0)
            { 
                profit = 0; 
            }

            int[] result = new int[2] { days, profit };
            return result;
        }
    }
}
