﻿using _07.MilitaryElite.Models.Interfaces;
namespace _07.MilitaryElite.Models
{
    public abstract class Soldier : ISoldier
    {
        public Soldier(int id, string firstName, string lastName)
        {
            Id = id;
            FirstName = firstName;
            LastName = lastName;
        }

        public int Id { get; private set; }
        public string FirstName { get; private set; }
        public string LastName { get; private set; }

        public override string ToString() => $"Name: {FirstName} {LastName} Id: {Id}";
    }
}
