namespace RandomSentencesGenerator
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] names = { "Gosho", "Pesho", "Ivan", "Dragan", "Monica", "Vanina", "Toni", "Maria", "Vanessa" };
            string[] places = { "Sofia", "Plovdiv", "Varna", "Burgas", "Ruse", "Bulgaria", "the Philipines", "Japan", "Italy", "Korea" };
            string[] actions = { "goes to work", "likes to play tennis", "prefers boys over girls", "doesn't like this program very much", "is feeling sick", "climbs trees", "shovels very fast", "likes swimming", "is driving", "hits the road", "is feeling happy" };
            string[] details = { "early in the morning", "late at night", "at noon", "at home around dinner time", "in the kitchen", "anywhere, all the time really" };

            while (true)
            {
                string randomName = GetRandomWord(names);
                string randomPlace = GetRandomWord(places);
                string randomAction = GetRandomWord(actions);
                string randomDetails = GetRandomWord(details);
                string sentence = randomName;

                bool hasPlace = GetRandomBool();
                bool hasDetails = GetRandomBool();

                if (hasPlace)
                {
                    sentence += " from " + randomPlace;
                }
                sentence += " " + randomAction;

                if (hasDetails)
                {
                    sentence += " " + randomDetails;
                }
                sentence += ".";

                Console.WriteLine(sentence);
                Console.WriteLine("Press [Enter] to generate a new one.");
                Console.ReadLine();
            }
        }
        static string GetRandomWord(string[] words)
        {
            Random random = new Random();
            int randomIndex = random.Next(words.Length);
            string result = words[randomIndex];
            return result;
        }

        static bool GetRandomBool()
        {
            Random random = new Random();
            int randomInt = random.Next(2);
            if (randomInt == 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}