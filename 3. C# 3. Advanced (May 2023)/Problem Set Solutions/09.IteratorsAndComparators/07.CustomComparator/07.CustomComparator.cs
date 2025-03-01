/* 
    7. Custom Comparator

Write a custom comparator that sorts all even numbers before all 
the odd ones in ascending order. Pass it to Array.Sort() 
function and print the result. Use functions.
 */

Comparison<int> comparison = (x, y) =>
{
    bool xIsEven = x % 2 == 0;
    bool yIsEven = y % 2 == 0;

    if (xIsEven && (!yIsEven))
        return -1;

    if (!xIsEven && yIsEven)
        return 1;

    return x - y;
};

int[] ints = Console.ReadLine()!.Split().Select(int.Parse).ToArray();
Array.Sort(array: ints, comparison: comparison);
Console.WriteLine(string.Join(" ", ints));
