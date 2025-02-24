namespace _01.GenericBoxOfString
{
    public class Box<T>
    {
        T item;

        public Box(T input)
        {
            item = input;
        }

        public override string ToString()
        {
            return $"{item.GetType()}: {this.item.ToString()}";
        }
    }
}
