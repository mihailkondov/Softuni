using System;

namespace Example5_glasniBukvi
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int output=0;
            string input = Console.ReadLine();
            for(int i=0; i<input.Length; i++)
            {
                char c = input[i];
                switch(c)
                {
                    case 'a':
                        output += 1;
                        break;
                    case 'e':
                        output += 2;
                        break;                    
                    case 'i':
                        output += 3;
                        break;                    
                    case 'o':
                        output += 4;
                        break;
                    case 'u':
                        output += 5;
                        break;
                    default:
                        break;
                }
            }
            Console.WriteLine(output);
        }
    }
}
