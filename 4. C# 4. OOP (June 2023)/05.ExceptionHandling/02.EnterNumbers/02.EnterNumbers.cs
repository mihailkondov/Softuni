// 02. Enter Numbers

List<int> ints = new List<int>();
int min = 1;
do
{
    try
    {
        if (ints.Count > 0)
        {
            min = ints[ints.Count - 1];
        }
        int newNumber = ReadNumber(min, 100);
        ints.Add(newNumber);
    }
    catch (FormatException)
    {
        Console.WriteLine("Invalid Number!");
    }
    catch (ArgumentException ae)
    {
        Console.WriteLine(ae.Message);
    }
} while (ints.Count < 10);

Console.WriteLine(string.Join(", ", ints));

static int ReadNumber(int start, int end)
{
    int n;
    n = int.Parse(Console.ReadLine());
    if (n <= start || n >= end)
    {
        throw new ArgumentException($"Your number is not in range {start} - 100!");
    }
    return n;
}