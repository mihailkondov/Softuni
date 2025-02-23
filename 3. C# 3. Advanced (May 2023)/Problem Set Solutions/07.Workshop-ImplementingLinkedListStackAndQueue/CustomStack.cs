using System.Text;

namespace _07.Workshop_ImplementingLinkedListStackAndQueue
{
    internal class CustomStack
    {
        // Fields
        private const int InitialCapacity = 4;
        private int[] items;
        private int count;

        // Constructor
        public CustomStack()
        {
            items = new int[InitialCapacity];
            count = 0;
        }

        // Properties
        public int Count { get => this.count; }

        // Private Methods
        private void Resize()
        {
            int[] copy = new int[items.Length * 2];
            for (int i = 0; i < this.count; i++)
            {
                copy[i] = items[i];
            }
            items = copy;
        }

        private void Shrink()
        {
            if (this.Count > items.Length / 2)
            {
                throw new InvalidOperationException($"Invalid array shrink attempt: cannot fit {this.Count} items in an array with capacity {items.Length / 2}. This error might be due to an inapropriate call of the {nameof(this.Shrink)} method or malfunction in property {nameof(this.Count)}.");
            }

            int[] copy = new int[items.Length / 2];
            for (int i = 0; i < this.Count; i++)
            {
                copy[i] = items[i];
            }
            items = copy;
        }

        // Public Methods
        public void ForEach(Action<int> action)
        {
            for (int i = 0; i < this.count; i++)
            {
                action(items[i]);
            }
        }

        public int Peek()
        {
            if (count == 0)
            {
                throw new InvalidOperationException("CustomStack is empty.");
            }

            return items[count - 1];
        }

        public int Pop()
        {
            if (this.count == 0)
            {
                throw new InvalidOperationException("CustomStack is empty");
            }

            int result = items[--count];

            if (this.count < items.Length / 4)
            {
                this.Shrink();
            }
            return result;
        }

        public void Push(int element)
        {
            if (this.count == items.Length)
            {
                this.Resize();
            }

            items[this.count++] = element;
        }

        public string ToString(int paddingSpacesCount)
        {
            StringBuilder paddingSb = new StringBuilder();
            for (int i = 0; i < paddingSpacesCount; i++)
            {
                paddingSb.Append(' ');
            }
            string padding = paddingSb.ToString();

            StringBuilder sb = new StringBuilder();

            if (this.count == 0)
            {
                return $"{padding}No elements in stack.";
            }

            for (int i = 0; i < count; i++)
            {
                sb.Append($"{padding}{this.items[i]}");
                if (i == 0)
                {
                    sb.Append(" <- bottom");
                }
                if (i == count - 1)
                {
                    sb.Append(" <- top");
                }
                sb.AppendLine();
            }

            return sb.ToString().TrimEnd();
        }
    }
}
