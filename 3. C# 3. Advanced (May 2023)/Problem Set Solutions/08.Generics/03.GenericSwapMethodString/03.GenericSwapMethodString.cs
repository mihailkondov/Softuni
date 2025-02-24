namespace _03.GenericSwapMethodString
{
    internal class Program
    {
        private static void Main(string[] args)
        {

            int n = int.Parse(Console.ReadLine());
            List<Box<string>> list = new List<Box<string>>();
            for (int i = 0; i < n; i++)
            {
                Box<string> box = new Box<string>(Console.ReadLine());
                list.Add(box);
            }
            int[] indices = Console.ReadLine().Split().Select(x => int.Parse(x)).ToArray();
            Swap(list, indices[0], indices[1]);
            foreach (Box<string> box in list)
            {
                Console.WriteLine(box.ToString());
            }
        }

        static void Swap<T>(List<T> list, int index1, int index2)
        {
            T tmp = list[index1];
            list[index1] = list[index2];
            list[index2] = tmp;
        }
    }
}
