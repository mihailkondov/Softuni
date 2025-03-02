// 01. Recursive Array Sum

Func<int[], int>? recursiveSum = null; // This line is needed to be able to do recursive calls
recursiveSum = (int[] array) =>
{
    if (array.Length == 1)
    {
        return array[0];
    }

    return array[0] + recursiveSum!(array[1..]);
};

int[] input = Console.ReadLine().Split().Select(int.Parse).ToArray();
int output = recursiveSum(input);
Console.WriteLine(output);