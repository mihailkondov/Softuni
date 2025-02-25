namespace _07.Tuple
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] input1 = Console.ReadLine()!.Split().ToArray();
            string name = input1[0] + ' ' + input1[1];
            string address = input1[2];
            CustomTuple<string, string> tuple1 = new CustomTuple<string, string>(name, address);
            Console.WriteLine(tuple1);

            string[] input2 = Console.ReadLine()!.Split().ToArray();
            string name2 = input2[0];
            int beer = int.Parse(input2[1]);
            CustomTuple<string, int> tuple2 = new CustomTuple<string, int>(name2, beer);
            Console.WriteLine(tuple2);

            string[] input3 = Console.ReadLine()!.Split().ToArray();
            int integer = int.Parse(input3[0]);
            double doubleValue = double.Parse(input3[1]);
            CustomTuple<int, double> tuple3 = new CustomTuple<int, double> (integer, doubleValue);
            Console.WriteLine(tuple3);
        }
    }
}
