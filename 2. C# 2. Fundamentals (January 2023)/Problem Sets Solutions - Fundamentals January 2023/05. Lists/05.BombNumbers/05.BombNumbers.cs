// 05. Bomb Numbers

List<int> field = Console.ReadLine()
    .Split(' ', StringSplitOptions.RemoveEmptyEntries)
    .Select(int.Parse)
    .ToList();
List<int> bomb = Console.ReadLine() //0. special number; 1.power
    .Split(' ', StringSplitOptions.RemoveEmptyEntries)
    .Select(int.Parse)
    .ToList();
int detonationIndex = field.IndexOf(bomb[0]);
int bombPower = bomb[1];
int bombValue = bomb[0];

List<int> blastIndices = new List<int>();
List<int> bombIndices = new List<int>();

for (int i = 0; i < field.Count; i++)
{
    if (field[i] == bombValue)
    {
        bombIndices.Add(i);
    }
}

for (int j = 0; j < bombIndices.Count; j++)
{
    int fieldMax = field.Count - 1;
    for (int i = 0; i < 2 * bombPower + 1; i++)
    {
        int current = bombIndices[j] + bombPower - i;
        if (current >= 0 && current <= fieldMax)
        {
            blastIndices.Add(current);
        }
    }
}

blastIndices = blastIndices
    .Distinct()
    .OrderByDescending(x => x)
    .ToList();

for (int i = 0; i < blastIndices.Count; i++)
{
    field.RemoveAt(blastIndices[i]);
}

Console.WriteLine(field.Sum());