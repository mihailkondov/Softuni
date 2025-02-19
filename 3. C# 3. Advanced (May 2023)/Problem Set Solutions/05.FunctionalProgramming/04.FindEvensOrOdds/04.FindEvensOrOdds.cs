/* 04. Find Evens Or Odds

 You are given a lower and an upper bound for a range of integer numbers.
 Then a command specifies if you need to list all even or odd numbers in the given range.

 Use Predicate<T>.
*/

// Declare methods
Predicate<int> isOdd = (x) =>
{
    return Math.Abs(x) % 2 == 1;
};

Func<string, int, bool> userConditionIsMet = (string command, int x) =>
{
    if (command == "odd")
    {
        return isOdd(x);
    }
    if (command == "even")
    {
        return !isOdd(x);
    }
    else throw new ArgumentException("Invalid command");
};

// Read input
int[] bound = Console.ReadLine()!
    .Split(' ', StringSplitOptions.RemoveEmptyEntries)
    .Select(int.Parse)
    .ToArray();
string command = Console.ReadLine()!;

// Calculate result
var range = Enumerable.Range(bound[0], bound[1] - bound[0] + 1)
    .Where(x => userConditionIsMet(command, x));

// Print output
string output = string.Join(" ", range);
Console.WriteLine(output);
