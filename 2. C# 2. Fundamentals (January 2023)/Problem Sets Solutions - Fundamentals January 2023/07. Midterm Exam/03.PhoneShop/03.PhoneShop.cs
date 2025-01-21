namespace _03.PhoneShop
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<string> storage = Console.ReadLine()
                .Split(", ")
                .ToList();
            while(true)
            {
                string input = Console.ReadLine();
                string[] command = input.Split(" - ");
                if(input == "End")
                {
                    string toPrint = string.Join(", ", storage);
                    Console.WriteLine(toPrint);
                    break;
                }
                else if (command[0] == "Add")
                {
                    bool typeIsPresent = storage.Contains(command[1]);
                    if (!typeIsPresent)
                    {
                        storage.Add(command[1]);
                    }
                }
                else if (command[0] == "Remove")
                {
                    if (storage.Contains(command[1]))
                    {
                        storage.Remove(command[1]);
                    }
                }
                else if (command[0] == "Bonus phone")
                {
                    string[] currentPhones = command[1].Split(":").ToArray();
                    string oldPhone = currentPhones[0];
                    string newPhone = currentPhones[1];
                    if (storage.Contains(oldPhone)){ 
                        storage.Insert(storage.IndexOf(oldPhone) + 1, newPhone);
                    }
                    // ako bugva proveri moje li da dobavq na posledna poziciq
                }
                else if (command[0] == "Last")
                {
                    int index = storage.IndexOf(command[1]);
                    if(index > -1)
                    {
                        storage.Add(storage[index]);
                        storage.RemoveAt(index);
                    }
                }
            }
        }
    }
}