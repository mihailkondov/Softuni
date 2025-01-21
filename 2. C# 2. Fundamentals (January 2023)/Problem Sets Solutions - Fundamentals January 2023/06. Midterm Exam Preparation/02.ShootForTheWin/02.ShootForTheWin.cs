// 20. C# Fundamentals - Midterm Exam Preparation
// Link to contest on Judge:
// https://judge.softuni.org/Contests/4913/Mid-Exam-Preparation-2-RS

// 02. Shoot For The Win

namespace _02.ShootForTheWin
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<int> targets = Console.ReadLine()
                .Split(' ')
                .Select(int.Parse)
                .ToList();
            int count = 0;
            while (true)
            {
                string input = Console.ReadLine();
                if (input == "End")
                {
                    string printTargets = string.Join(" ", targets);
                    Console.WriteLine($"Shot targets: {count} -> {printTargets}");
                    break;
                }
                else
                {
                    int index = int.Parse(input);

                    if (index >= 0 &&
                        index < targets.Count &&
                        targets[index] != -1)
                    {
                        int current = targets[index];
                        for (int i = 0; i < targets.Count; i++)
                        {
                            if (targets[i] > current && targets[i] != -1)
                            {
                                targets[i] -= current;
                            }
                            else if (targets[i] <= current && targets[i] != -1)
                            {
                                targets[i] += current;
                            }
                        }
                        targets[index] = -1;
                        count++;
                    }
                }
            }
        }
    }
}