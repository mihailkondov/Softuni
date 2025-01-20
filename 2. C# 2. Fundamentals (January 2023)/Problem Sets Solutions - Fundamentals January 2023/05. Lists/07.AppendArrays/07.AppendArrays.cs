// 07. Append Arrays

string[] input = Console.ReadLine().Split('|', StringSplitOptions.RemoveEmptyEntries);

List<string> list = new List<string>();

for (int i = 0; i < input.Length; i++)
{
    string currentString = input[input.Length - 1 - i];
    string[] currentStringArray = currentString.Split(' ', StringSplitOptions.RemoveEmptyEntries);
    string current = string.Join(" ", currentStringArray);
    list.Add(current);
}

string output = string.Join(" ", list.Where(s => !string.IsNullOrWhiteSpace(s)));
Console.WriteLine(output);