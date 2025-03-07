﻿// 01. Person - Startup

namespace _01.Person
{
    internal class StartUp
    {
        static void Main()
        {
            string name = Console.ReadLine();
            int age = int.Parse(Console.ReadLine());
            if (age < 0)
            {
                Console.WriteLine("Age must be positive!");
            }
            else if (age > 15)
            {
                Person person = new Person(name, age);
                Console.WriteLine(person);
            }
            else
            {
                Child child = new Child(name, age);
                Console.WriteLine(child);
            }
        }
    }
}