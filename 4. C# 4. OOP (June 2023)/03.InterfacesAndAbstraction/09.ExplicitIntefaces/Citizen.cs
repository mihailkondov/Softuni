﻿using _09.ExplicitIntefaces.Interfaces;

namespace _09.ExplicitIntefaces
{
    public class Citizen : IPerson, IResident
    {
        public Citizen(string name, string country, int age)
        {
            Name = name;
            Country = country;
            Age = age;
        }

        public string Name { get; private set; }

        public string Country { get; private set; }

        public int Age { get; private set; }

        string IPerson.GetName() => $"{Name}";

        string IResident.GetName() => $"Mr/Ms/Mrs {Name}";
    }
}
