
bool ok = false;
int input = 0;
while (!ok)
{
    ok = int.TryParse(Console.ReadLine(), out int input1);
    input = input1;
}

//print digits
int input2 = input;
int sumOfFactorials = 0;
int i = 0;
if (input == 0)
{
    sumOfFactorials = 1;
}
else
{
    while (input2 > 0)
    {
        // calculate factorial 
        i = input2 % 10;
        for (int j = i - 1; j > 1; j--)
        {
            i = j * i;
        }

        if (i == 0)
        {
            sumOfFactorials++;
        }
        sumOfFactorials += i;
        input2 /= 10;
    }
}

bool isStrong = sumOfFactorials == input;
if (isStrong)
{
    Console.WriteLine($"yes");
}
else
{
    Console.WriteLine($"no");
}

