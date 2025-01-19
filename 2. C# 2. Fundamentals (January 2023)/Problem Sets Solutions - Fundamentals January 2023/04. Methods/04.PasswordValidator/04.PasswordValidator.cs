// 04. Password Validator

namespace _04.PasswordValidator
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string password = Console.ReadLine();
            bool lengthIsValid = LengthIsValid(password);
            bool onlyLettersDigits = OnlyLettersDigits(password);
            bool hasTwoDigits = HasTwoDigits(password);
            bool valid = lengthIsValid && onlyLettersDigits && hasTwoDigits;
            if (valid)
            {
                Console.WriteLine("Password is valid");
            }
        }

        static bool LengthIsValid(string password)
        {
            if (password.Length < 6 || password.Length > 10)
            {
                Console.WriteLine("Password must be between 6 and 10 characters");
                return false;
            }

            return true;
        }

        static bool OnlyLettersDigits(string password)
        {
            char[] charsPassword = password.ToCharArray();
            bool digit = false;
            bool letter = false;
            bool valid = true;
            for (int i = 0; i < password.Length; i++)
            {
                digit = Char.IsDigit(charsPassword[i]);
                letter = Char.IsLetter(charsPassword[i]);
                if (!digit && !letter)
                {
                    valid = false;
                    Console.WriteLine("Password must consist only of letters and digits");
                    break;
                }
            }
            return valid;
        }

        static bool HasTwoDigits(string password)
        {
            bool hasTwoDigits = true;
            char[] charsPassword = password.ToCharArray();
            int numberOfDigits = 0;
            for (int i = 0; i < password.Length; i++)
            {
                if (Char.IsDigit(charsPassword[i]))
                {
                    numberOfDigits++;
                }
            }

            if (numberOfDigits < 2)
            {
                hasTwoDigits = false;
                Console.WriteLine("Password must have at least 2 digits");
            }

            return hasTwoDigits;
        }
    }
}