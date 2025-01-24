// 07. String Explosion

using System.Text;

string input = Console.ReadLine(); 
string[] inputArray = input.Split('>');
int n = inputArray.Length;
int[] numbers = new int[n];
StringBuilder output = new StringBuilder(inputArray[0]);

for (int i = 0; i < n; i++)
{
    string current = inputArray[i];
    numbers[i] = (int)(current[0]) - '0';
}

int overshoot = 0;
for (int i = 1; i < n; i++)
{
    string current = inputArray[i];
    string nextElement;
    if (current.Length < numbers[i] + overshoot)
    {
        nextElement = ">";
        overshoot = numbers[i] - current.Length;
    }
    else
    {
        nextElement = '>' + current.Substring(numbers[i] + overshoot);
        overshoot = 0;
    }
    output.Append(nextElement);
}

Console.WriteLine(output);
