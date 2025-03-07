// 07. Binary Search

// Read input
int[] array = Console.ReadLine()!
    .Split(' ', StringSplitOptions.RemoveEmptyEntries)
    .Select(int.Parse)
    .ToArray();
int element = int.Parse(Console.ReadLine()!);

// Calculate
int index = Search<int>.IndexOfElement(element, array);

// Print result
Console.WriteLine(index);

// Algorithm implementation
static class Search<T> where T : IComparable<T>
{
    public static int IndexOfElement(T element, T[] array)
    {
        return GetIndex(element, array, 0, array.Length - 1);
    }

    private static int GetIndex(T element, T[] array, int startIndex, int endIndex)
    {
        if (endIndex - startIndex == 0)
        {
            if (element.CompareTo(array[startIndex]) == 0)
                return startIndex;
            else
                return -1;
        }

        int resultLeft = GetIndex(element, array, startIndex, (endIndex + startIndex) / 2);
        if (resultLeft != -1)
        {
            return resultLeft;
        }

        return GetIndex(element, array, (endIndex + startIndex) / 2 + 1, endIndex);
    }
}
