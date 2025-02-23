using System.Text;

namespace _07.Workshop_ImplementingLinkedListStackAndQueue
{
    public class CustomListButBetter
    {
        // Fields
        private const int InitialCapacity = 2;

        private int[] items;

        // Constructors
        public CustomListButBetter()
        {
            this.items = new int[InitialCapacity];
        }

        // Properties
        public int Count { get; private set; }

        public int this[int index]
        {
            get
            {
                if (index >= this.Count)
                {
                    throw new ArgumentOutOfRangeException();
                }
                return this.items[index];
            }
            set
            {
                if (index >= this.Count)
                {
                    throw new ArgumentOutOfRangeException();
                }
                this.items[index] = value;
            }
        }

        // Public methods
        public void Add(int item)
        {
            if (this.Count == this.items.Length)
            {
                this.Resize();
            }

            this.items[this.Count++] = item;
        }

        public bool Contains(int element)
        {
            for (int i = 0; i < this.Count; i++)
            {
                if (this.items[i] == element)
                {
                    return true;
                }
            }
            return false;
        }

        public void Insert(int index, int element)
        {
            if (index > this.Count)
            {
                throw new ArgumentOutOfRangeException();
            }

            if (Count == items.Length)
            {
                this.Resize();
            }

            ShiftToRight(index);
            this.items[index] = element;
            this.Count++;
        }

        public void Print()
        {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < this.Count; i++)
            {
                sb.Append(items[i]);
                sb.Append(' ');
            }
            Console.WriteLine(sb.ToString().TrimEnd());
        }

        public void Print(int paddingSpaces)
        {
            StringBuilder sb = new StringBuilder();
            for (int j = 0; j < paddingSpaces; j++)
            {
                sb.Append(' ');
            }

            for (int i = 0; i < this.Count; i++)
            {
                sb.Append(items[i]);
                sb.Append(' ');
            }
            Console.WriteLine(sb.ToString().TrimEnd());
        }

        public int RemoveAt(int index)
        {
            if (index >= this.Count)
            {
                throw new ArgumentOutOfRangeException();
            }

            int item = this.items[index];
            this.items[index] = default(int);
            this.Shift(index);

            this.Count--;
            if (this.Count < this.items.Length / 4)
            {
                this.Shrink();
            }

            return item;
        }

        public void Swap(int firstIndex, int secondIndex)
        {
            if (firstIndex > this.Count || secondIndex > this.Count)
            {
                throw new ArgumentOutOfRangeException();
            }

            int tmp = this.items[firstIndex];
            this.items[firstIndex] = this.items[secondIndex];
            this.items[secondIndex] = tmp;
        }


        // Private methods
        private void Resize()
        {
            int[] copy = new int[this.items.Length * 2];

            for (int i = 0; i < this.items.Length; i++)
            {
                copy[i] = this.items[i];
            }

            this.items = copy;
        }

        private void Shift(int index)
        {
            for (int i = index; i < this.Count - 1; i++)
            {
                this.items[i] = this.items[i + 1];
            }
        }

        private void ShiftToRight(int index)
        {
            for (int i = this.Count; i >= index; i--)
            {
                this.items[i] = this.items[i - 1];
            }
        }

        void Shrink()
        {
            int[] copy = new int[items.Length / 4];
            for (int i = 0; i < copy.Length; i++)
            {
                copy[i] = items[i];
            }
            this.items = copy;
        }
    }
}
