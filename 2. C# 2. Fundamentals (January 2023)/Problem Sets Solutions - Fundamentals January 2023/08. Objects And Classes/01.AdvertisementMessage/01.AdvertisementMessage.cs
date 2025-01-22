// 01. Advertisement Message

namespace _23.ObjectsAndClases
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] phrases = { "Excellent product.", "Such a great product.", "I always use that product.", "Best product of its category.", "Exceptional product.", "I can't live without this product." };
            string[] events = { "Now I feel good.", "I have succeeded with this product.", "Makes miracles. I am happy of the results!", "I cannot believe but now I feel awesome.", "Try it yourself, I am very satisfied.", "I feel great!" };
            string[] authors = { "Diana", "Petya", "Stella", "Elena", "Katya", "Iva", "Annie", "Eva" };
            string[] cities = { "Burgas", "Sofia", "Plovdiv", "Varna", "Ruse" };

            int numberOfSentences = int.Parse(Console.ReadLine());

            for (int i = 0; i < numberOfSentences; i++)
            {
                List<string> sentence = new List<string> {
                    RandomWord(phrases),
                    RandomWord(events),
                    RandomWord(authors),
                    "-",
                    RandomWord(cities) + ".",
                };
                Console.WriteLine(string.Join(' ', sentence));
            }
        }

        static string RandomWord(string[] words)
        {
            Random random = new Random();
            int rndIndex = random.Next(words.Length);
            string rndWord = words[rndIndex];
            return rndWord;
        }
    }
}