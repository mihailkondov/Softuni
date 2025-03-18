// 03. Cards

// \u2660 – Spades (♠)
// \u2665 – Hearts (♥)
// \u2666 – Diamonds (♦)
// \u2663 – Clubs (♣)

List<Card?> cards = Console.ReadLine()!
    .Split(',', StringSplitOptions.RemoveEmptyEntries)
    .Select(s => s.Split(' ', StringSplitOptions.RemoveEmptyEntries))
    .Select(s =>
    {
        Card? c = null;
        try
        {
            return new Card(s[0], s[1]);
        }
        catch (ArgumentException ex)
        {
            Console.WriteLine(ex.Message);
            return c;
        }
    })
    .Where(c => c != null)
    .ToList();

Console.WriteLine(string.Join(' ', cards));


public class Card
{
    public static HashSet<string> Faces = new HashSet<string>() { "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A" };
    public static Dictionary<string, string> Suits = new Dictionary<string, string>
    {
        {"S", "\u2660" },
        {"H", "\u2665" },
        {"D", "\u2666" },
        {"C", "\u2663" },
    };

    private string _face;
    private string _suit;

    public Card(string face, string suit)
    {
        Face = face;
        Suit = suit;
        if (_face == null)
        {
            throw new Exception("Face setter didn't work as expected");
        }

        if (_suit == null)
        {
            throw new Exception("Suit setter didn't work as expected");
        }
    }
    public string Face
    {
        get => _face;
        set
        {
            if (!Faces.Contains(value))
            {
                throw new ArgumentException("Invalid card!");
            }

            _face = value;
        }
    }

    public string Suit
    {
        get => _suit;
        set
        {
            if (Suits.ContainsValue(value))
            {
                _suit = value;
            }

            if (!Suits.ContainsKey(value))
            {
                throw new ArgumentException("Invalid card!");
            }

            _suit = Suits[value];
        }
    }

    public override string ToString()
    {
        return $"[{Face}{Suit}]";
    }
}
