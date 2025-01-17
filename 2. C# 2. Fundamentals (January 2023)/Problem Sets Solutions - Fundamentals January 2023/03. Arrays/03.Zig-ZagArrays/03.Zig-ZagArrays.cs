// 03. Zig-Zag Arrays

bool success = int.TryParse(Console.ReadLine(), out int n);
if (success)
{
    int[] a = new int[n];
    int[] b = new int[n];
    for (int i = 0; i < n; i++)
    {
        string input = Console.ReadLine();
        string[] c = input.Split(" ").ToArray();
        if (i % 2 == 0)
        {
            a[i] = int.Parse(c[0]);
            b[i] = int.Parse(c[1]);
        }
        else
        {
            b[i] = int.Parse(c[0]);
            a[i] = int.Parse(c[1]);
        }
    }
    for (int i = 0; i < n - 1; i++)
    {
        Console.Write(a[i]);
        Console.Write(" ");
    }
    Console.WriteLine(a[n - 1]);
    for (int i = 0; i < n - 1; i++)
    {
        Console.Write(b[i]);
        Console.Write(" ");
    }
    Console.WriteLine(b[n - 1]);
}