namespace _04.GenericSwapMethodIntegers
{
    internal class Program
    {
        private static void Main(string[] args)
        {

            int n = int.Parse(Console.ReadLine());
            List<Box<int>> list = new List<Box<int>>();
            for (int i = 0; i < n; i++)
            {
                Box<int> box = new Box<int>(int.Parse(Console.ReadLine()));
                list.Add(box);
            }
            int[] indices = Console.ReadLine().Split().Select(x => int.Parse(x)).ToArray();
            Swap(list, indices[0], indices[1]);
            foreach (Box<int> box in list)
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
