namespace _09.IteratorsAndComparators
{
    internal class ListyIterator<T>
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
            if (!HasNext())
            {
                return false;
            }

            index++;
            return true;
        }

        public bool HasNext()
        {
            if (index < List.Count - 1)
                return true;
            return false;
        }

        public void Print()
        {
            if (List.Count == 0)
            {
                throw new InvalidOperationException("Invalid Operation!");
            }

            Console.WriteLine(List[index]);
        }
    }

}
