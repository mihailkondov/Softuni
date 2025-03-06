// 01. Ruber Duck Debuggers

// Read input
Queue<int> timePerTask = new(Console.ReadLine()!.Split().Select(int.Parse));
Stack<int> tasksForProgrammer = new(Console.ReadLine()!.Split().Select(int.Parse));

Dictionary<string, int> ducksAwarded = new Dictionary<string, int>()
{
    { "Darth Vader Ducky", 0 },
    { "Thor Ducky", 0 },
    { "Big Blue Rubber Ducky", 0 },
    { "Small Yellow Rubber Ducky", 0 },
};

// Calculations
while (timePerTask.Count > 0 && tasksForProgrammer.Count > 0)
{
    int time = timePerTask.Dequeue();
    int numberOfTasks = tasksForProgrammer.Pop();
    int programmerWorkTime = time * numberOfTasks;
    switch (programmerWorkTime)
    {
        case <= 60:
            ducksAwarded["Darth Vader Ducky"]++;
            break;
        case <= 120:
            ducksAwarded["Thor Ducky"]++;
            break;
        case <= 180:
            ducksAwarded["Big Blue Rubber Ducky"]++;
            break;
        case <= 240:
            ducksAwarded["Small Yellow Rubber Ducky"]++;
            break;
        default:
            numberOfTasks -= 2;
            tasksForProgrammer.Push(numberOfTasks);
            timePerTask.Enqueue(time);
            break;
    }
}

// Print result
Console.WriteLine("Congratulations, all tasks have been completed! Rubber ducks rewarded:");
foreach (KeyValuePair<string, int> duckType in ducksAwarded)
{
    Console.WriteLine($"{duckType.Key}: {duckType.Value}");
}