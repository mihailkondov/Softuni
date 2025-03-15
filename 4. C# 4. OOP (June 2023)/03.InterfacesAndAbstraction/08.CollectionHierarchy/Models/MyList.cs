
using _08.CollectionHierarchy.Models.Interfaces;

namespace _08.CollectionHierarchy.Models
{
    public class MyList : IMyList
    {
        List<string> _collection;
        public MyList()
        {
            _collection = new List<string>();
        }

        public int Used => _collection.Count;

        public int Add(string s)
        {
            _collection.Insert(0, s);
            return 0;
        }

        public string Remove()
        {
            string item = _collection[0];
            _collection.RemoveAt(0);
            return item;
        }
    }
}
