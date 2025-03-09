// 05. Birthday Celebrations

using _05.BirthdayCelebrations.Models.Interfaces;

namespace _05.BirthdayCelebrations
{
    public class Citizen : ICheckable, IBirthday
    {
        public Citizen(string name, int age, string id, string birthday)
        {
            Name = name;
            Age = age;
            Id = id;
            Birthday = birthday;
        }

        public string Name { get; set; }
        public int Age { get; set; }
        public string Id { get; set; }
        public string Birthday { get; set; }

        public bool Check(string fakePart)
        {
            if (this.Id.EndsWith(fakePart))
            {
                return false;
            }
            return true;
        }

        public string GetBirthday()
        {
            return this.Birthday;
        }

        public int GetBirthYear()
        {
            string[] data = this.Birthday.Split('/');
            int birthYear = int.Parse(data[2]);
            return birthYear;
        }
    }
}
