// 01. Valid Usernames

namespace _01.ValidUsernames
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] input = Console.ReadLine()
                .Split(", ", StringSplitOptions.RemoveEmptyEntries);
            List<Username> users = new List<Username>();

            for (int i = 0; i < input.Length; i++)
            {
                Username user = new Username(input[i]);
                users.Add(user);
            }

            foreach (var user in users)
            {
                if (user.Valid == true)
                {
                    Console.WriteLine($"{user.User}");
                }
            }
        }

    }
    class Username
    {
        public Username(string name)
        {
            User = name;
            Valid = CharacterCheck(name);
        }

        public bool Valid { get; set; }
        public string User { get; set; }

        static bool CharacterCheck(string input)
        {
            bool isValid;
            string current = input.ToLower();
            bool tooShort = current.Length < 3;
            if (tooShort)
                return false;
            bool tooLong = current.Length > 16;
            if (tooLong)
                return false;

            for (int j = 0; j < current.Length; j++)
            {
                if (!(
                        (current[j] > 96 && current[j] < 123) || //letter range
                        (current[j] > 47 && current[j] < 58) ||  //digits range
                        current[j] == 45 ||         //hyphen
                        current[j] == 95)           //underscore
                    )
                    return false;
            }
            return true;
        }
    }
}