﻿using _04.WildFarm.Models.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _04.WildFarm.Models.Food
{
    public class Fruit : Food, IEdible
    {
        public Fruit(int quantity) 
            : base(quantity)
        {
        }
    }
}
