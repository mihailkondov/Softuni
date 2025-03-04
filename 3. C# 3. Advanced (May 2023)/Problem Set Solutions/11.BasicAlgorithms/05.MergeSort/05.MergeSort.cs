// 05. Merge Sort

int[] ints = Console.ReadLine()!.Split(' ').Select(int.Parse).ToArray();
MergeSort<int>.Sort(ints);
Console.WriteLine(string.Join(" ", ints));

internal class MergeSort<T> where T : IComparable<T>
{
    public static void Sort(T[] array)
    {
        if (array.Length <= 1)
            return;

        if (array.Length == 2 && array[0].CompareTo(array[1]) > 0)
        {
            T tmp = array[0];
            array[0] = array[1];
            array[1] = tmp;
            return;
        }

        int leftEndIndex = array.Length / 2 - 1;
        int rightStartIndex = array.Length / 2;

        // Sort subarrays
        T[] left = array[..(leftEndIndex + 1)];
        T[] right = array[(rightStartIndex)..];
        Sort(left);
        Sort(right);

        // Merge subarrays
        for (int i = 0, j = 0; i + j < array.Length;)
        {
            if (i + 1 > left.Length)
            {
                array[i + j] = right[j++];
            }
            else if (j + 1 > right.Length)
            {
                array[i + j] = left[i++];
            }
            else if (left[i].CompareTo(right[j]) < 0)
            {
                array[i + j] = left[i++];
            }
            else
            {
                array[i + j] = right[j++];
            }
        }
    }
}
