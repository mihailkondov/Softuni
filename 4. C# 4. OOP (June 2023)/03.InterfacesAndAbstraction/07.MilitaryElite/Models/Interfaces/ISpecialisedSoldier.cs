﻿using _07.MilitaryElite.Enums;

namespace _07.MilitaryElite.Models.Interfaces
{
    public interface ISpecialisedSoldier : IPrivate
    {
        public Corps Corps { get; }
    }
}
