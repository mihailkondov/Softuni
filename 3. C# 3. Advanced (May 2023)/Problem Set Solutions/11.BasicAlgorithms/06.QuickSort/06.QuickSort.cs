// 06. Quick Sort

/*
NOTE:

The last 2-3 tests in Judge are checking if the algorithm is fast enough.
To pass them I implemented the following tricks:
    1. Check if the array is already sorted and skip the sorting if it is, since a sorted array is the worst case scenario for quicksort perfrmance and is also a common condition. 
    2. Randomize the pivot point. This helps a bit when there are biases in the data, like when the array is mostly sorted - then I get closer to a median value
    3. Pick first element, middle element and last element and use their median as a pivot point - higher chance to avoid worst case scenarios.
Since there is some randomness involved in picking the pivot points, it is not guaranteed that the last 2 tests on Judge will always pass. In case they don't, reupload the solution untill they pass.
 */

int[] array;
// Read user input
 array = Console.ReadLine()!.Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();

// here are some test inputs as an example:
// array = new int[] { 7, 3, 5, 4, 1, 2, 3, 9, 8, 1, 19, 29, 10, 5, 0, -1, -18, -5, 5 };
// array = new int[] { 5, 3, 6, 4, 1, 2 };
// array = new int[] { 5, 1, 8, 2, 4, 9, 7, 3 };

QuickSort(array);

// Print result
Console.WriteLine(string.Join(" ", array));

void QuickSort(int[] array)
{
    // Check if already sorted:
    for (int i = 0; i < array.Length - 2; i++)
    {
        if (array[i] <= array[i + 1])
        {
            continue;
        }
        else
        {
            QuickSortInternal(array, 0, array.Length - 1);
            break;
        }
    }
}
void QuickSortInternal(int[] array, int startIndex, int endIndex)
{
    if (endIndex - startIndex < 1)
        return;

    if (endIndex - startIndex == 1)
    {
        if (array[startIndex] > array[endIndex])
            Swap(array, startIndex, endIndex);
        return;
    }

    Random random = new Random();
    int randomPivotIndex = random.Next(startIndex, endIndex);
    Swap(array, startIndex, randomPivotIndex);
    OptimizePivot(array, startIndex, endIndex);

    int low = startIndex + 1;
    int hi = endIndex;
    int pivotPosition = startIndex;
    while (low < hi)
    {
        if (array[low] < array[pivotPosition])
        {
            Swap(array, low++, pivotPosition++);
        }
        else
        {
            Swap(array, low, hi--);
        }
    }

    if (array[pivotPosition] > array[low])
        Swap(array, pivotPosition++, low);

    if (pivotPosition - 1 - startIndex > 0)
        QuickSortInternal(array, startIndex, pivotPosition - 1);

    if (endIndex - pivotPosition - 1 > 0)
        QuickSortInternal(array, hi, endIndex);
}

void Swap(int[] array, int index1, int index2)
{
    int tmp = array[index1];
    array[index1] = array[index2];
    array[index2] = tmp;
}


void OptimizePivot(int[] array, int startIndex, int endIndex)
{
    int pivotIndex = GetPivotIndex(array, startIndex, endIndex);
    if (pivotIndex != startIndex)
    {
        Swap(array, startIndex, pivotIndex);
    }
}

int GetPivotIndex(int[] array, int startIndex, int endIndex)
{
    int middleIndex = (endIndex - startIndex) / 2;
    if (array[startIndex] > array[endIndex] && array[endIndex] > array[middleIndex])
        return endIndex;

    if (array[startIndex] > array[middleIndex] && array[middleIndex] > array[middleIndex])
        return middleIndex;

    if (array[middleIndex] > array[endIndex] && array[endIndex] > array[startIndex])
        return endIndex;

    if (array[middleIndex] > array[startIndex] && array[startIndex] > array[endIndex])
        return startIndex;

    if (array[endIndex] > array[startIndex] && array[startIndex] > array[middleIndex])
        return startIndex;

    return startIndex;
}
