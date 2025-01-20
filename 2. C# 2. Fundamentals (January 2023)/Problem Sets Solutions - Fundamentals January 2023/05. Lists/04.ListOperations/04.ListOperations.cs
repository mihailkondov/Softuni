// 04. ListOperations

List<int> list = Console.ReadLine()
    .Split(' ')
    .Select(int.Parse)
    .ToList();

while (true)
{
    string[] commandParameters = Console.ReadLine()
        .Split(' ')
        .ToArray();
    string command = commandParameters[0];

    if (command == "Add")
    {
        list.Add(int.Parse(commandParameters[1]));
    }
    else if (command == "Insert")
    {
        int index = int.Parse(commandParameters[2]);
        if (index <= list.Count && index >= 0)
        {
            int number = int.Parse(commandParameters[1]);
            list.Insert(index, number);
        }
        else
        {
            Console.WriteLine("Invalid index");
        }
    }
    else if (command == "Remove")
    {
        int index = int.Parse(commandParameters[1]);
        if (index < list.Count && index >= 0)
        {
            list.RemoveAt(index);
        }
        else
        {
            Console.WriteLine("Invalid index");
        }
    }
    else if (command == "Shift" && list.Count > 1)
    {
        int steps = int.Parse(commandParameters[2]);

        if (commandParameters[1] == "left")
        {
            for (int i = 0; i < steps; i++)
            {
                int basket = list[0];
                list.RemoveAt(0);
                list.Add(basket);
            }
        }
        else if (commandParameters[1] == "right")
        {
            for (int i = 0; i < steps; i++)
            {
                int basket = list[list.Count - 1];
                list.RemoveAt(list.Count - 1);
                list.Insert(0, basket);
            }
        }
    }
    else if (command == "End")
    {
        break;
    }
}

Console.WriteLine(string.Join(" ", list));