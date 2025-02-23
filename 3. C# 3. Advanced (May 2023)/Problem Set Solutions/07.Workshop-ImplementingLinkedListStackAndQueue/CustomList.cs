using System.Text;

namespace _07.Workshop_ImplementingLinkedListStackAndQueue
{
    public class CustomList
    {
        int _capacity;
        int _count;
        int[] _array;

        public CustomList()
        {
            _count = 0;
            _capacity = 4;
            _array = new int[_capacity];
        }

        public int Count { get => _count; }

        public int this[int index]
        {
            get
            {
                if (index >= 0 && index < _count)
                {
                    return _array[index];
                }
                else
                {
                    throw new IndexOutOfRangeException();
                }
            }
            set
            {
                if (index >= 0 && index < _count)
                {
                    _array[index] = value;
                }
                else
                {
                    throw new IndexOutOfRangeException();
                }
            }
        }

        public void Add(int element)
        {
            if (_count >= _capacity)
            {
                int[] newArray = new int[_capacity * 2];
                _array.CopyTo(newArray, 0);
            }

            _array[_count++] = element;
        }

        public int RemoveAt(int index)
        {
            if (index < 0 || index >= _count)
            {
                throw new IndexOutOfRangeException();
            }

            int result = _array[index];

            if (_count < _array.Length / 3)
            {
                int[] workingArray = new int[_capacity / 2];
                for (int i = 0; i < index; i++)
                {
                    workingArray[i] = _array[i];
                }
                for (int i = index; i < _count - 1; i++)
                {
                    workingArray[i] = _array[i + 1];
                }
                _array = workingArray;
                _capacity = workingArray.Length;
                _count--;
                return result;
            }

            _count--;
            for (int i = index; i < _count; i++)
            {
                _array[i] = _array[i + 1];
            }
            return result;
        }

        public bool Contains(int element)
        {
            for (int i = 0; i < _count; i++)
            {
                if (_array[i] == element)
                    return true;
            }
            return false;
        }

        public void Swap(int firstIndex, int secondIndex)
        {
            if (firstIndex < 0 || firstIndex >= _count)
                throw new ArgumentOutOfRangeException();

            if (secondIndex < 0 || secondIndex >= _count)
                throw new ArgumentOutOfRangeException();

            int tmp = _array[firstIndex];
            _array[firstIndex] = _array[secondIndex];
            _array[secondIndex] = tmp;
        }

        public void Print()
        {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < _count; i++)
            {
                sb.Append(_array[i]);
                sb.Append(' ');
            }
            Console.WriteLine(sb.ToString().TrimEnd());
        }

        public void Print(int paddingSpaces)
        {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < paddingSpaces; i++)
            {
                sb.Append(' ');
            }

            for (int i = 0; i < _count; i++)
            {
                sb.Append(_array[i]);
                sb.Append(' ');
            }
            Console.WriteLine(sb.ToString().TrimEnd());
        }
    }
}
