// 02. Recursive Factorial

Func<long, long>? recursiveFactorial = null;
recursiveFactorial = (long x) =>
{
    if (x == 0)
        return 1;
    else
        return x * recursiveFactorial!(x - 1);
};

int input = int.Parse(Console.ReadLine()!);
long output = recursiveFactorial(input);
Console.WriteLine(output);