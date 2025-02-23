namespace _07.Workshop_ImplementingLinkedListStackAndQueue
{
    public class CustomQueue
    {
        // Fields
        private const int InitialCapacity = 4;
        private const int ExpandCapacityMultiplier = 2;
        private const int ShrinkCapacityDivisor = 2;
        private const double ShrinkThreshold = ShrinkCapacityDivisor * 1.5;
        private int[] items;
        private int count;
        private int startIndex;
        private int endIndex;

        // Constructors
        public CustomQueue()
        {
            this.count = 0;
            this.items = new int[InitialCapacity];
            this.startIndex = 0;
            this.endIndex = 0;
        }

        // Properties
        public int Count { get => this.count; }
        public int Capacity { get => this.items.Length; }


        // Private Methods
        private void ExpandCapacity()
        {
            this.Resize(this.items.Length * ExpandCapacityMultiplier);
        }

        private void Resize(int newCapacity)
        {
            int[] newArray = new int[newCapacity];


            if (this.endIndex < this.startIndex )
            {
                int steps = 0;
                for ( int i = startIndex; i < this.items.Length; i++, steps++)
                {
                    newArray[startIndex - i] = this.items[i];
                }
                for ( int i = 0; i <= this.endIndex; i++ )
                {
                    newArray[i + steps] = this.items[i];
                }
            }
            else
            {
                for (int i = 0; i < count; i++)
                {
                    newArray[i] = this.items[startIndex + i];
                }
            }

            this.items = newArray;
            this.startIndex = 0;
            this.endIndex = this.count - 1;
        }

        private void ShrinkCapacity()
        {
            this.Resize(this.items.Length / ShrinkCapacityDivisor);
        }

        // Public Methods
        public void Clear()
        {
            this.items = new int[InitialCapacity];
            this.count = 0;
            this.startIndex = 0;
            this.endIndex = 0;
        }

        public int Dequeue() 
        { 
            int result = this.items[this.startIndex];
            if (this.startIndex == items.Length - 1 )
            {
                this.startIndex = 0;
            }
            else
            {
                this.startIndex++;
            }

            count--;

            if (count < this.items.Length / ShrinkThreshold)
            {
                ShrinkCapacity();
            }
            return result;
        }

        public void Enqueue(int element)
        {
            if (this.count == items.Length)
            {
                this.ExpandCapacity();
            }

            if (endIndex + 1 == items.Length)
            {
                items[0] = element;
                endIndex = 0;
                count++;
            }
            else
            {
                if (count == 0)
                {
                    endIndex = startIndex;
                }
                else
                {
                    endIndex++;
                }
                this.items[endIndex] = element;
                count++;
            }
        }

        public void ForEach(Action<int> action) 
        {
            if (this.count == 0)
            {
                return;
            }

            if (startIndex <= this.endIndex)
            {
                for (int i = startIndex; i <= endIndex; i++)
                {
                    action(items[i]);
                }
            }
            else
            {
                for (int i = startIndex; i < items.Length; i++)
                {
                    action(items[i]);
                }
                for (int i = 0; i <= endIndex; i++)
                {
                    action(items[i]);
                }
            }
        }

        public int Peek() 
        {
            return this.items[this.startIndex];
        }

    }
}
