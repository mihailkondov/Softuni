using _08.CollectionHierarchy.Models.Interfaces;

namespace _08.CollectionHierarchy.Models
{
    public class AddCollection : IAdd
    {
        List<string> _collection;

        public AddCollection()
        {
            _collection = new List<string>();
        }

        public virtual int Add(string s)
        {
            _collection.Add(s);
            return _collection.Count - 1;
        }
    }
}
