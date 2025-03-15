
using _08.CollectionHierarchy.Models.Interfaces;

namespace _08.CollectionHierarchy.Models
{
    public class AddRemoveCollection : IRemove
    {
        List<string> _collection;

        public AddRemoveCollection()
        {
            _collection = new List<string>();
        }

        public int Add(string s)
        {
            _collection.Insert(0, s);
            return 0;
        }

        public string Remove()
        {
            string element = _collection[_collection.Count - 1];
            _collection.RemoveAt(_collection.Count - 1);
            return element;
        }
    }
}
