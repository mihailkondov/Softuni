// 04. Array Rotation

string input = Console.ReadLine();
int rotations = int.Parse(Console.ReadLine());
string[] givenArray = input.Split(" ");
int length = givenArray.Length;

for (int j = 0; j < rotations; j++)
{
    string container = givenArray[0];
    for (int i = 0; i < length - 1; i++)
    {
        givenArray[i] = givenArray[i + 1];
    }
    givenArray[length - 1] = container;
}

for (int i = 0; i < length - 1; i++)
{
    Console.Write(givenArray[i] + " ");
}
Console.WriteLine(givenArray[length - 1]);
