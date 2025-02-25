namespace CustomDoublyLinkedList
{
    public class CustomDoublyLinkedList<T>
    {
        private class ListNode
        {
            public T Value { get; set; }
            public ListNode? NextNode { get; set; }
            public ListNode? PreviousNode { get; set; }
            public ListNode(T value)
            {
                this.Value = value;
            }
        }

        // Fields
        private ListNode? head;
        private ListNode? tail;

        // Constructor
        public CustomDoublyLinkedList()
        {
            Count = 0;
            head = null;
            tail = null;
        }

        // Properties
        public int Count { get; private set; }

        // Public methods
        public void AddFirst(T element)
        {
            if (Count == 0)
            {
                this.head = this.tail = new ListNode(element);
            }
            else
            {
                ListNode node = new ListNode(element);
                head!.PreviousNode = node;
                node.NextNode = head;
                this.head = node;
            }
            Count++;
        }

        public void AddLast(T element)
        {
            if (Count == 0)
            {
                this.tail = this.head = new ListNode(element);
            }
            else
            {
                ListNode newTail = new ListNode(element);
                newTail.PreviousNode = this.tail;
                this.tail!.NextNode = newTail;
                this.tail = newTail;
            }
            Count++;
        }
        public T RemoveFirst()
        {
            if (Count == 0)
            {
                throw new InvalidOperationException("No elements to remove from an empty list.");
            }

            T returnValue = this.head.Value;
            if (Count == 1)
            {
                this.head = null;
                this.tail = null;
            }
            else
            {
                this.head = head!.NextNode;
                head!.PreviousNode = null;
            }

            Count--;
            return returnValue;
        }
        public T RemoveLast()
        {
            if (Count == 0)
            {
                throw new InvalidOperationException("No elements to remove from an empty list.");
            }

            T returnValue = this.tail!.Value;
            if (Count == 1)
            {
                this.head = null;
                this.tail = null;
            }
            else
            {
                this.tail = this.tail!.PreviousNode;
                tail!.NextNode = null;
            }

            Count--;
            return returnValue;
        }
        public void ForEach(Action<T> action)
        {
            if (Count == 0)
            {
                return;
            }

            ListNode? node = head;
            while (node != null)
            {
                action(node.Value);
                node = node.NextNode;
            }
        }
        public T[] ToArray()
        {
            T[] array = new T[Count];
            ListNode? node = head;
            int index = 0;
            while (node != null)
            {
                array[index++] = node.Value;
                node = node.NextNode;
            }

            return array;
        }
    }
}
