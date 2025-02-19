/* 
    01. Action Point

Create a program that reads a collection of strings from the console and then prints them onto the console. 
Each name should be printed on a new line. Use Action<T>.
*/


// Read input
string input = Console.ReadLine()!;

// Define custom function
Action<string> Action = (textInput) =>
{
    string[] textArray = textInput.Split(' ', StringSplitOptions.RemoveEmptyEntries);
    foreach (string line in textArray)
    {
        Console.WriteLine(line);
    }
};

// Call function
Action(input);