﻿namespace _07.RawData
{
    /// <summary>
    /// Each tire should have two properties: age and pressure.
    /// </summary>
    public class Tire
    {
        public Tire(int age, double pressure)
        {
            Age = age;
            Pressure = pressure;
        }
        public int Age { get; set; }
        public double Pressure { get; set; }
    }
}