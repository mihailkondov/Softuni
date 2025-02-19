/* 
    06. Reverse And Exclude

Create a program that reverses a collection and removes elements 
that are divisible by a given integer n.
Use predicates/functions.

 */

// Declare custom functions
Func<int, int, bool> divisible = (int x, int y) =>
{
    int rest = x % y;
    return rest == 0;
};

// Input
ICollection<int> numbers = Console.ReadLine()
    .Split()
    .Select(int.Parse)
    .ToList();
int divisor = int.Parse(Console.ReadLine());

// Perform calculations
ICollection<int> output = numbers.Where(x => !divisible(x, divisor)).Reverse().ToList();

// Print output
Console.WriteLine(string.Join(' ', output));