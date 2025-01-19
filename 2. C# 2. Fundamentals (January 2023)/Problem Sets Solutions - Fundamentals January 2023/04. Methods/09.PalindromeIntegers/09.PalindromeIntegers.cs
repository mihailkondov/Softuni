namespace _09.PalindromeIntegers
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string input = string.Empty;
            while (input != "END")
            {
                input = Console.ReadLine();
                bool isInteger = int.TryParse(input, out int number);
                if (isInteger)
                {
                    bool isPalindrome = IsPalindrome(input);
                    Console.WriteLine(isPalindrome);
                }
            }
        }

        private static bool IsPalindrome(string input)
        {
            string backwards = String.Join("", input.ToCharArray().Reverse());
            bool isPalindrome;
            if (backwards == input)
            {
                isPalindrome = true;
            }
            else
            {
                isPalindrome = false;
            }
            return isPalindrome;
        }
    }
}