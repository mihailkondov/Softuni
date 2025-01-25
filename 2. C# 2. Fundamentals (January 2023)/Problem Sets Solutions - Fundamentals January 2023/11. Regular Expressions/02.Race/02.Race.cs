// 02. Race

using System.Text.RegularExpressions;
using System.Text;

namespace _02.Race
{
    internal class Program
    {
        static void Main(string[] args)
        {

            string[] participants = Console.ReadLine().Split(", ");
            List<Runner> runnerList = new List<Runner>();
            List<string> runs = new List<string>();
            foreach (string participant in participants)
            {
                Runner newParticipant = new Runner(participant);
                runnerList.Add(newParticipant);
            }

            string input;
            while ((input = Console.ReadLine()) != "end of race")
            {
                runs.Add(input);
            }

            foreach (Runner participant in runnerList)
            {
                foreach (var run in runs)
                {
                    if (RunFitsPerson(run, participant.Name))
                    {
                        participant.Distance += Distance(run);
                    }
                }
                ;
            }

            List<Runner> runnersByDistance = runnerList.OrderByDescending(x => x.Distance).ToList();

            Console.WriteLine($"1st place: {runnersByDistance[0].Name}");
            Console.WriteLine($"2nd place: {runnersByDistance[1].Name}");
            Console.WriteLine($"3rd place: {runnersByDistance[2].Name}");
        }

        static bool RunFitsPerson(string input, string inputName)
        {
            string regexNameString = "[" + inputName + "]" + "+";
            Regex regexName = new Regex(regexNameString);
            MatchCollection matches = regexName.Matches(input);
            StringBuilder name = new StringBuilder();
            foreach (Match match in matches)
            {
                if (match.Success)
                {
                    name.Append(match.Value);
                }
            }
            string newName = name.ToString();
            bool same = inputName.Equals(newName);
            return same;
        }

        static int Distance(string input)
        {
            Regex regexDig = new Regex(@"\d");
            MatchCollection matches = regexDig.Matches(input);
            int[] distances = new int[matches.Count];
            int totalDistance = 0;
            for (int i = 0; i < matches.Count; i++)
            {
                distances[i] = int.Parse(matches[i].Value);
                totalDistance += distances[i];
            }
            return totalDistance;
        }
    }
    public class Runner
    {
        public Runner(string name)
        {
            Name = name;
            Distance = 0;
        }

        public int Distance { get; set; }
        public string Name { get; set; }
    }
}