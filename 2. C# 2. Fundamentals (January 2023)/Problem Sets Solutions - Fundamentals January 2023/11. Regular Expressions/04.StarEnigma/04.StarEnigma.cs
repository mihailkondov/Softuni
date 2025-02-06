// 04. Star Enigma

using System.Text.RegularExpressions;

namespace _04.StarEnigma
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<string> attackedPlanets = new List<string>();
            List<string> destroyedPlanets = new List<string>();

            int messages = int.Parse(Console.ReadLine());
            for (int i = 0; i < messages; i++)
            {
                string input = Console.ReadLine();

                // Decryption
                string pattern = @"[starSTAR]";
                MatchCollection matchCollection = Regex.Matches(input, pattern);
                int decryptionKey = matchCollection.Count;

                string decryptedString = string.Join("", input.Select(c => (char)((short)c - decryptionKey)));

                // Extract message
                Regex allRegex = new Regex(@"@(?<planet>[a-zA-Z]+)[^@!:\->]*:(?<population>\d+)[^@!:\->]*!(?<attack>[AD])![^@!:\->]*->(?<soldiers>\d+)");
                // Explaination:
                /* @(?<planet>[a-zA-Z]+) Matches @ followed by a planet name:
                 * ?<planet>  this is the name of the group
                 * [a-zA-Z]+  match one or more case-insensitive letter of the latin alphabet
                 * [^@!:\->]* there may be zero or more random characters here, as long as they are not @, !, :, -, >. The \ before the - is to escape it.
                 * * the asterisk means zero, one or more characters of the group specified in the [] brackets.
                 * ^ in the bracket means excluding. The characters after ^ are not to be matched.
                 * :(?<population>\d+) look for : followed by one or more digits
                 * [^@!:\->]* same as above
                 * !(?<attack>[AD])! look for ! then A or D character followed by !
                 * ->(?<soldiers>\d+) look for -> followed by digits
                 */
                Match match = allRegex.Match(decryptedString);
                
                if(match.Success)
                {
                    string planet = match.Groups["planet"].Value;
                    int population = int.Parse(match.Groups["population"].Value);
                    string attack = match.Groups["attack"].Value;
                    int soldiers = int.Parse(match.Groups["soldiers"].Value);

                    if(attack == "A")
                    {
                        attackedPlanets.Add(planet);
                    }
                    else if (attack == "D")
                    {
                        destroyedPlanets.Add(planet);
                    }
                }
            }

            // Print results
            Console.WriteLine($"Attacked planets: {attackedPlanets.Count}");
            foreach (var planet in attackedPlanets.OrderBy(p => p))
            {
                Console.WriteLine($"-> {planet}");
            }
            Console.WriteLine($"Destroyed planets: {destroyedPlanets.Count}");
            foreach (var planet in destroyedPlanets.OrderBy(p => p))
            {
                Console.WriteLine($"-> {planet}");
            }
        }
    }
}
