// 06. Money Transactions

Dictionary<int, double> accounts = Console.ReadLine()!
    .Split(",")
    .Select(x => x.Trim())
    .Select(x => x.Split('-'))
    .ToDictionary(
        sa => int.Parse(sa[0]),
        sa => double.Parse(sa[1])
    );

string[] input;
while ((input = Console.ReadLine()!.Split(' '))[0] != "End")
{
    string command = input[0];
    int accountNumber = int.Parse(input[1]);
    double sum = double.Parse(input[2]);

    try
    {
        if (!accounts.ContainsKey(accountNumber))
        {
            throw new KeyNotFoundException("Invalid account!");
        }

        if (command == "Deposit")
        {
            accounts[accountNumber] += sum;
            Console.WriteLine($"Account {accountNumber} has new balance: {accounts[accountNumber]:F2}");
        }
        else if (command == "Withdraw")
        {
            if (accounts[accountNumber] < sum)
            {
                throw new InvalidOperationException("Insufficient balance!");
            }
            accounts[accountNumber] -= sum;
            Console.WriteLine($"Account {accountNumber} has new balance: {accounts[accountNumber]:F2}");
        }
        else
        {
            throw new InvalidOperationException("Invalid command!");
        }
    }
    catch (InvalidOperationException ex)
    {
        Console.WriteLine(ex.Message);
    }
    catch (KeyNotFoundException ex)
    {
        Console.WriteLine(ex.Message);
    }
    finally
    {
        Console.WriteLine("Enter another command");
    }
}