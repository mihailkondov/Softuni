// 03. House Party

int lines = int.Parse(Console.ReadLine());
List<string> command;
List<string> guestlist = new List<string>();
for (int i = 0; i < lines; i++)
{
    command = Console.ReadLine()
        .Split(' ')
        .ToList();
    string name = command[0];
    if (command[2] == "going!")
    {
        if (guestlist.Contains(name))
        {
            Console.WriteLine($"{name} is already in the list!");
        }
        else
        {
            guestlist.Add(name);
        }
    }
    else if (command[2] == "not")
    {
        if (guestlist.Contains(name))
        {
            guestlist.Remove(name);
        }
        else
        {
            Console.WriteLine($"{name} is not in the list!");
        }
    }
}

Console.WriteLine(string.Join(Environment.NewLine, guestlist));