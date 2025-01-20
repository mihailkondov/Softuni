namespace _18.List
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine();
            List<int> train = input
                .Split(' ')
                .Select(x => int.Parse(x))
                .ToList();
            int wagonCapacity = int.Parse(Console.ReadLine());
            while (input != "end")
            {
                input = Console.ReadLine().ToLower();
                string[] command = input.Split(' ');

                if (command[0] == "add")
                {
                    if (int.TryParse(command[1], out int steigende) && steigende <= wagonCapacity)
                    {
                        train.Add(steigende);
                    }
                }
                else if (int.TryParse(command[0], out int steigende))
                {
                    for (int i = 0; i < train.Count; i++)
                    {
                        if (train[i] + steigende <= wagonCapacity && steigende >= 0)
                        {
                            train[i] += steigende;
                            break;
                        }
                    }
                }

            }
            Console.WriteLine(string.Join(" ", train));
        }
    }
}