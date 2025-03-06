// 02. The Squirrel Problem

// Read input
using System.Runtime.CompilerServices;

int n = int.Parse(Console.ReadLine()!);
string[] moves = Console.ReadLine()!.Split(", ", StringSplitOptions.RemoveEmptyEntries);
char[,] field = new char[n, n];
int[] pos = new int[2];

for (int i = 0; i < n; i++)
{
    string row = Console.ReadLine()!;
    for (int j = 0; j < n; j++)
    {
        field[i, j] = row[j];
        if (field[i, j] == 's')
        {
            pos = new int[] { i, j };
        }
    }
}

// Move squirrel
int hazelnuts = 0;
bool gameEnded = false;
foreach (string move in moves)
{
    int[] newPos = new int[2] { pos[0], pos[1] };
    switch (move)
    {
        case "up":
            newPos[0]--;
            break;
        case "down":
            newPos[0]++;
            break;
        case "left":
            newPos[1]--;
            break;
        case "right":
            newPos[1]++;
            break;
        default:
            break;
    }

    if (!IsValid(newPos, n))
    {
        Console.WriteLine("The squirrel is out of the field.");
        gameEnded = true;
        break;
    }

    if (field[newPos[0], newPos[1]] == 'h')
    {
        hazelnuts++;
        field[newPos[0], newPos[1]] = '*';
        if (hazelnuts == 3)
        {
            Console.WriteLine("Good job! You have collected all hazelnuts!");
            gameEnded = true;
            break;
        }
    }

    if (field[newPos[0], newPos[1]] == 't')
    {
        Console.WriteLine("Unfortunately, the squirrel stepped on a trap...");
        gameEnded = true;
    }

    pos = newPos;
}

if (!gameEnded)
{
    Console.WriteLine("There are more hazelnuts to collect.");
}

Console.WriteLine($"Hazelnuts collected: {hazelnuts}");

// Validate next move
static bool IsValid(int[] pos, int n)
{
    int row = pos[0];
    int col = pos[1];

    if (row < 0 || row >= n) return false;
    if (col < 0 || col >= n) return false;

    return true;
}
