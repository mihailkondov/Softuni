// 02. Change List

namespace _02.ChangeList
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string inputString = Console.ReadLine();
            List<int> list = inputString
                .Split(' ')
                .Select(x => int.Parse(x))
                .ToList();
            while (true)
            {
                inputString = Console.ReadLine();
                string[] command = inputString.Split(' ').ToArray();

                if (command[0] == "Insert")
                {
                    int newNumber = int.Parse(command[1]);
                    int position = int.Parse(command[2]);
                    list.Insert(position, newNumber);
                }
                else if (command[0] == "Delete")
                {
                    int numberToRemove = int.Parse(command[1]);
                    list.RemoveAll(x => x == numberToRemove);
                }
                else if (command[0] == "end")
                {
                    break;
                }
            }

            Console.WriteLine(string.Join(" ", list));
        }
    }
}