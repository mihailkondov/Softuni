// 06. Animals - Classes

using System.Text;

namespace Animals
{
    public interface IProduceSound
    {
        public abstract string ProduceSound();
    }

    // Level 0 (parent classes)
    public abstract class Animal : IProduceSound
    {
        public const string male = "Male";
        public const string female = "Female";
        private int _age;

        public Animal(string name, int age, string gender)
        {
            Name = name;
            Age = age;
            Gender = gender;
        }

        public string Name { get; set; }
        public int Age
        {
            get => _age;
            set
            {
                if (value <= 0)
                {
                    throw new ArgumentException("Invalid input!");
                }

                _age = value;
            }
        }
        public string Gender { get; set; }

        public abstract string ProduceSound();

        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine(this.GetType().Name);
            sb.AppendLine($"{Name} {Age} {Gender}");
            sb.Append(this.ProduceSound());
            return sb.ToString().TrimEnd();
        }
    }

    // Level 1 Child classes
    public class Cat : Animal
    {
        public Cat(string name, int age, string gender)
            : base(name, age, gender)
        {

        }

        public override string ProduceSound()
        {
            return "Meow meow";
        }
    }

    public class Dog : Animal
    {
        public Dog(string name, int age, string gender)
            : base(name, age, gender)
        {

        }

        public override string ProduceSound()
        {
            return "Woof!";
        }
    }

    public class Frog : Animal
    {
        public Frog(string name, int age, string gender)
            : base(name, age, gender)
        {

        }

        public override string ProduceSound()
        {
            return "Ribbit";
        }
    }

    // Level 2 child classes
    public class Kitten : Cat
    {
        public Kitten(string name, int age)
            : base(name, age, female)
        {

        }

        public override string ProduceSound()
        {
            return "Meow";
        }
    }

    public class Tomcat : Cat
    {
        public Tomcat(string name, int age)
            : base(name, age, male)
        {

        }

        public override string ProduceSound()
        {
            return "MEOW";
        }
    }
}

