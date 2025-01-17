// 01. Train

int n = int.Parse(Console.ReadLine());
int[] wagons = new int[n];
string output = "";
int sum = 0;
for (int i = 0; i < n - 1; i++)
{
    wagons[i] = int.Parse(Console.ReadLine());
    output += wagons[i] + " ";
    sum += wagons[i];

}
wagons[n - 1] = int.Parse(Console.ReadLine());
sum += wagons[n - 1];
output += wagons[n - 1];

Console.WriteLine(output);
Console.WriteLine(sum);