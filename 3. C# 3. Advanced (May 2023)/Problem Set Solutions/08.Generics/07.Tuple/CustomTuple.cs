namespace _07.Tuple
{
    internal class CustomTuple<T1, T2>
    {
        private T1 _item1;
        private T2 _item2;

        public CustomTuple(T1 item1, T2 item2)
        {
            this._item1 = item1;
            this._item2 = item2;
        }

        public T1 Item1 { get => _item1; set => _item1 = value; }
        public T2 Item2 { get => _item2; set => _item2 = value; }

        public override string ToString()
        {
            return $"{Item1} -> {Item2}";
        }
    }
}
