// 06. Food Shortage

namespace _06.FoodShortage
{
    public class Pet : IBirthday
    {
        public Pet(string name, string birthday)
        {
            Name = name;
            Birthday = birthday;
        }

        public string Name { get; set; }
        public string Birthday { get; set; }

        public string GetBirthday()
        {
            return Birthday;
        }

        public int GetBirthYear()
        {
            string[] data = this.Birthday.Split('/');
            int birthYear = int.Parse(data[2]);
            return birthYear;
        }
    }
}
