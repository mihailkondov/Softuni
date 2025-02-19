// 08. List Of Predicates

using System.Text;

int N = int.Parse(Console.ReadLine());
Predicate<int>[] divisors = Console.ReadLine()
    .Split()
    .Select(int.Parse)
    .Select(input => (Predicate<int>)(x => x % input == 0))
    .ToArray();

IEnumerable<int> numbers = Enumerable.Range(1, N);

StringBuilder sb = new StringBuilder();
foreach (var number in numbers)
{
    bool print = true;
    foreach (Predicate<int> divide in divisors)
    {
        if (!divide(number))
        {
            print = false;
            break;
        }
    }
    if (print)
    {
        sb.Append(number);
        sb.Append(' ');
    }
}

Console.WriteLine(sb.ToString().Trim());
