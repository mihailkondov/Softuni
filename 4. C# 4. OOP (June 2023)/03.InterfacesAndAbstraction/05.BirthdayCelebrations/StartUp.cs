// 05. Birthday Celebrations

using _05.BirthdayCelebrations.Models;
using _05.BirthdayCelebrations.Models.Interfaces;

namespace _05.BirthdayCelebrations
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            List<IBirthday> Birthables = new List<IBirthday>();

            string input;
            while ((input = Console.ReadLine()!) != "End")
            {
                string[] data = input.Split(" ", StringSplitOptions.RemoveEmptyEntries);

                if (data[0] == "Pet")
                {
                    string name = data[1];
                    string birthday = data[2];
                    Pet pet = new Pet(name, birthday);
                    Birthables.Add(pet);
                }
                else if (data[0] == "Citizen")
                {
                    string name = data[1];
                    int age = int.Parse(data[2]);
                    string id = data[3];
                    string birthday = data[4];
                    Citizen citizen = new Citizen(name, age, id, birthday);
                    Birthables.Add(citizen);
                }
            }

            int birthYearInput = int.Parse(Console.ReadLine()!);
            foreach (var birthable in Birthables.Where(x => x.GetBirthYear() == birthYearInput))
            {
                Console.WriteLine(birthable.GetBirthday());
            }
        }
    }
}