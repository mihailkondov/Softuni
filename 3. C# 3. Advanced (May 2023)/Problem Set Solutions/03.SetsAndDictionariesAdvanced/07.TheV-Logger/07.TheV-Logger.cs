// 07. The V-Logger

/*
Test Inputs:

// test input 1:
EmilConrad joined The V-Logger
VenomTheDoctor joined The V-Logger
Saffrona joined The V-Logger
Saffrona followed EmilConrad
Saffrona followed VenomTheDoctor
EmilConrad followed VenomTheDoctor
VenomTheDoctor followed VenomTheDoctor
Saffrona followed EmilConrad
Statistics

// end of test input 1 

// test input 2:
JennaMarbles joined The V-Logger
JennaMarbles followed Zoella
AmazingPhil joined The V-Logger
JennaMarbles followed AmazingPhil
Zoella joined The V-Logger
JennaMarbles followed Zoella
Zoella followed AmazingPhil
Christy followed Zoella
Zoella followed Christy
JacksGap joined The V-Logger
JacksGap followed JennaMarbles
PewDiePie joined The V-Logger
Zoella joined The V-Logger
Statistics

 */
using System.Data;

namespace _07.TheV_Logger
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // vlogger -> (
            //      followers -> list of followers
            //      following -> list of people followed
            //  )
            Dictionary<string, Dictionary<string, List<string>>> users = new();
            string input = string.Empty;
            while ((input = Console.ReadLine()) != "Statistics")
            {
                string[] inputArray = input.Split();
                string command = inputArray[1];
                if (command == "joined")
                {
                    string user = inputArray[0];
                    if (!users.ContainsKey(user))
                    {
                        Dictionary<string, List<string>> userStats = new Dictionary<string, List<string>>()
                        {
                            { "followers", new List<string>() },
                            { "following", new List<string>() }
                        };
                        users.Add(user, userStats);
                    }
                }
                else if (command == "followed")
                {
                    string followerName = inputArray[0];
                    string vloggerName = inputArray[2];
                    if (users.ContainsKey(followerName) &&
                        users.ContainsKey(vloggerName) &&
                        !users[followerName]["following"].Contains(vloggerName) &&
                        followerName != vloggerName)
                    {
                        users[followerName]["following"].Add(vloggerName);
                        users[vloggerName]["followers"].Add(followerName);
                    }
                }
            }

            // Print result
            Console.WriteLine($"The V-Logger has a total of {users.Count} vloggers in its logs.");
            bool mostFollowed = true;
            int i = 1;
            foreach (KeyValuePair<string, Dictionary<string, List<string>>> vlogger in
                users.OrderByDescending(v => v.Value["followers"].Count)
                    .ThenBy(follows => follows.Value["following"].Count)
            )
            {
                Console.WriteLine($"{i++}. {vlogger.Key} : {vlogger.Value["followers"].Count} followers, {vlogger.Value["following"].Count} following");
                if (mostFollowed)
                {
                    foreach (string follower in vlogger.Value["followers"].OrderBy(f => f))
                    {
                        Console.WriteLine($"*  {follower}");
                    }
                    mostFollowed = false;
                }
            }
        }
    }
}