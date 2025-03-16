using _01.VehiclesExtension.Models.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _01.VehiclesExtension.Models.Interfaces
{
    internal interface IBus : IVehicle
    {
        string DriveEmpty(double parameter);
    }
}
