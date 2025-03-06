// 01. Apocalypse Preparation
// https://judge.softuni.org/Contests/Practice/Index/3913#0

namespace _22.ExamPreparation
{
    internal class ApocalypsePreparation
    {
        static void Main(string[] args)
        {
            Queue<int> textiles = new Queue<int>(
                Console.ReadLine()
                    .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                    .Select(int.Parse));
            Stack<int> medicaments = new Stack<int>(
                Console.ReadLine()
                    .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                    .Select(int.Parse));
            List<Item> items = new List<Item>();
            Item bandage = new Item("Bandage", 0);
            Item patch = new Item("Patch", 0);
            Item medkit = new Item("MedKit", 0);
            items.Add(bandage);
            items.Add(patch);
            items.Add(medkit);
            CraftItems(textiles, medicaments, bandage, patch, medkit);
            PrintDepletedResourceTypes(textiles, medicaments);
            PrintCraftedItemsByQuantityThenByName(items);

            if (medicaments.Any())
            {
                Console.WriteLine($"Medicaments left: {string.Join(", ", medicaments)}");
            }

            if (textiles.Any())
            {
                Console.WriteLine($"Textiles left: {string.Join(", ", textiles)}");
            }
        }

        private static void PrintCraftedItemsByQuantityThenByName(List<Item> items)
        {
            List<Item> itemsToPrint = items
                .Where(x => x.Quantity > 0)
                .OrderByDescending(x => x.Quantity)
                .ThenBy(x => x.Type)
                .ToList();
            foreach (Item item in itemsToPrint)
            {
                Console.WriteLine($"{item.Type} - {item.Quantity}");
            }
        }

        private static void PrintDepletedResourceTypes(Queue<int> textiles, Stack<int> medicaments)
        {
            if (!textiles.Any() && !medicaments.Any())
            {
                Console.WriteLine("Textiles and medicaments are both empty.");
            }
            else if (!textiles.Any())
            {
                Console.WriteLine("Textiles are empty.");
            }
            else if (!medicaments.Any())
            {
                Console.WriteLine("Medicaments are empty.");
            }
            else
            {
                throw new Exception("RESOURCE COLLECTIONS AREN'T EMPTY");
            }
        }

        private static void CraftItems(
            Queue<int> textiles, 
            Stack<int> medicaments, 
            Item bandage, 
            Item patch, 
            Item medkit
        )
        {
            while (textiles.Count != 0 && medicaments.Count != 0)
            {
                int textileCurrent = textiles.Dequeue();
                int medicamentCurrent = medicaments.Pop();
                int sum = textileCurrent + medicamentCurrent;

                if (sum == 30)
                {
                    patch.Quantity++;
                }
                else if (sum == 40)
                {
                    bandage.Quantity++;
                }
                else if (sum >= 100)
                {
                    medkit.Quantity++;
                    sum -= 100;
                    int nextMedicament;
                    if (medicaments.Any())
                    {
                        nextMedicament = medicaments.Pop();
                        nextMedicament += sum;
                        medicaments.Push(nextMedicament);
                    }
                }
                else
                {
                    medicamentCurrent += 10;
                    medicaments.Push(medicamentCurrent);
                }
            }
        }
    }

    public class Item
    {
        public Item(string type, int quantity)
        {
            Type = type;
            Quantity = quantity;
        }

        public int Quantity { get; set; }
        public string Type { get; set; }
    }
}