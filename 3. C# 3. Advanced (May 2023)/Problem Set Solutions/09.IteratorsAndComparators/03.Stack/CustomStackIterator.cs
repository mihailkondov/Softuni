
using System.Collections;

namespace _03.Stack
{
    internal class CustomStackIterator<T> : IEnumerator<T>
    {
        T[] array;
        int startIndex;
        int index;
        public CustomStackIterator(T[] array, int startIndex)
        {
            this.array = array;
            this.startIndex = startIndex;
            this.index = startIndex;
        }
        public T Current => array[index];

        object IEnumerator.Current => this.Current;

        public void Dispose()
        {
            throw new NotImplementedException();
        }

        public bool MoveNext()
        {
            return index-- - 1 >= 0;
        }

        public void Reset()
        {
            index = startIndex;
        }
    }
}