// 06. Cards Game

List<int> hand1 = Console.ReadLine()
    .Split(' ')
    .Select(int.Parse)
    .ToList();
List<int> hand2 = Console.ReadLine()
    .Split(' ')
    .Select(int.Parse)
    .ToList();

while (hand1.Count > 0 && hand2.Count > 0)
{
    if (hand1[0] > hand2[0])
    {
        int basket = hand1[0];
        hand1.Add(basket);

        basket = hand2[0];
        hand1.Add(basket);

        hand1.RemoveAt(0);
        hand2.RemoveAt(0);
    }
    else if (hand1[0] < hand2[0])
    {
        int basket = hand2[0];
        hand2.Add(basket);

        basket = hand1[0];
        hand2.Add(basket);

        hand1.RemoveAt(0);
        hand2.RemoveAt(0);
    }
    else
    {
        hand1.RemoveAt(0);
        hand2.RemoveAt(0);
    }
}

if (hand1.Count > hand2.Count)
{
    int sum = hand1.Sum();
    Console.WriteLine($"First player wins! Sum: {sum}");
}
else if (hand1.Count < hand2.Count)
{
    int sum = hand2.Sum();
    Console.WriteLine($"Second player wins! Sum: {sum}");
}