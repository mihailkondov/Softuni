// 07. Append Arrays

var input = Console.ReadLine()
    .Split('|', StringSplitOptions.RemoveEmptyEntries)
    .Select(s =>
        s.Split(' ', StringSplitOptions.RemoveEmptyEntries).ToList()
    ).Reverse()
    .ToList();

Console.WriteLine(
    string.Join(' ',
        input.Select(x => string.Join(' ', x))
            .Where(s => !string.IsNullOrWhiteSpace(s))));
