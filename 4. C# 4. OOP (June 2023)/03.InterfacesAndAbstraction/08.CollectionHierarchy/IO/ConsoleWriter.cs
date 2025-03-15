using _08.CollectionHierarchy.IO.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _08.CollectionHierarchy.IO
{
    public class ConsoleWriter : IWriter
    {
        public void WriteLine(string value)
        {
            Console.WriteLine(value);
        }
    }
}
