using System.Collections;

namespace _02.Collection
{
    internal class ListyIterator<T> : IEnumerable<T>
    {
        int index;

        public ListyIterator(ICollection<T> collection)
        {
            List = (List<T>)collection;
            index = 0;
        }

        public List<T> List { get; set; }

        public bool Move()
        {
            if (index < List.Count - 1)
            {
                index++;
                return true;
            }
            return false;
        }

        public bool HasNext()
        {
            return index < List.Count - 1;
        }

        public void Print()
        {
            if (List.Count == 0)
            {
                throw new InvalidOperationException("Invalid Operation!");
            }

            Console.WriteLine(List[index]);
        }

        public void PrintAll()
        {
            foreach (var item in this.List)
            {
                Console.Write($"{item} ");
            }
            Console.WriteLine();
        }

        public IEnumerator<T> GetEnumerator()
        {
            foreach (T item in this.List)
            {
                yield return item;
            }
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return this.GetEnumerator();
        }
    }
}
