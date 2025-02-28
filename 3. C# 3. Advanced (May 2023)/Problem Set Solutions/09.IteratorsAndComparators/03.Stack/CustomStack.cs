
using System.Collections;

namespace _03.Stack;

internal class CustomStack<T> : IEnumerable<T>
{
    private const int InitialCapacity = 4;
    T[] array;
    public CustomStack(params T[] items)
    {
        if (items.Length > 0)
        {
            array = items;
            Count = array.Length;
            Capacity = array.Length;
        }
        else
        {
            array = new T[InitialCapacity];
            Count = 0;
            Capacity = InitialCapacity;
        }

    }

    public int Count { get; private set; }
    public int Capacity { get; private set; }

    public IEnumerator<T> GetEnumerator()
    {
        return new CustomStackIterator<T>(array, Count);
    }

    // Public Methods

    public T Pop()
    {
        if (Count == 0)
            throw new InvalidOperationException("No elements");

        Count--;
        return array[Count];
    }

    public void Push(T item)
    {
        if (Count == Capacity)
        {
            ExpandCapacity();
        }

        array[Count++] = item;
    }

    // Private Methods
    private void ExpandCapacity()
    {
        T[] copy = new T[Capacity * 2];
        for (int i = 0; i < Count; i++)
        {
            copy[i] = array[i];
        }
        array = copy;
    }

    IEnumerator IEnumerable.GetEnumerator()
    {
        return GetEnumerator();
    }
}

