using System.Text;

namespace _06.SongsQueue
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Queue<string> queue = new(Console.ReadLine().Split(", ", StringSplitOptions.RemoveEmptyEntries));
            string cmd;
            while ((cmd = Console.ReadLine()) != "end")
            {
                string[] cmdArr = cmd.Split(' ', StringSplitOptions.RemoveEmptyEntries).ToArray();
                string cmd1 = cmdArr[0];
                if (cmd1 == "Play")
                {
                    if (queue.Any())
                    {
                        queue.Dequeue();
                    }

                    if (!queue.Any())
                    {
                        Console.WriteLine("No more songs!");
                        break;
                    }
                }
                else if (cmd1 == "Add")
                {
                    Queue<string> cmdQ = new Queue<string>(cmdArr);
                    cmdQ.Dequeue();
                    string songName = string.Join(' ', cmdQ.ToArray());
                    if (queue.Contains(songName))
                    {
                        Console.WriteLine($"{songName} is already contained!");
                    }
                    else
                    {
                        queue.Enqueue(songName);
                    }
                }
                else if (cmd1 == "Show")
                {
                    StringBuilder output = new StringBuilder();
                    foreach (var song in queue)
                    {
                        output.Append(song.ToString());
                        output.Append(',');
                        output.Append(' ');
                    }
                    output.Remove(output.Length - 2, 2);
                    Console.WriteLine(output.ToString());
                }
            }
        }
    }
}