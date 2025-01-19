// 11. Array Manipulator

namespace _11.ArrayManipulator
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine();
            int[] inputArray = input
                        .Split(' ')
                        .Select(int.Parse)
                        .ToArray();
            while (true)
            {
                input = Console.ReadLine();
                string command = input.Split(' ')[0];

                if (input == "end")
                {
                    string printable = "[" + string.Join(", ", inputArray) + "]";
                    Console.WriteLine(printable);
                    break;
                }

                if (command == "exchange")
                {
                    int index = int.Parse(input.Split(' ')[1]);
                    Exchange(inputArray, index);
                }

                if (command == "max" || command == "min")
                {
                    string type = input.Split(' ')[1];
                    OddEven(inputArray, command, type);
                }

                if (command == "first")
                {
                    int count = int.Parse(input.Split(" ")[1]);
                    string type = input.Split(" ")[2];
                    First(inputArray, count, type);
                }

                if (command == "last")
                {
                    int count = int.Parse(input.Split(" ")[1]);
                    string type = input.Split(" ")[2];
                    Last(inputArray, count, type);
                }
            }
        }

        private static void Last(int[] inputArray, int count, string type)
        {
            if (count > inputArray.Length)
            {
                Console.WriteLine("Invalid count");
                return;
            }
            int zeroEvenOneOdd = 0;
            int OddEvenCount = 0;

            if (type == "odd")
            {
                zeroEvenOneOdd = 1;
            }

            for (int i = 0; i < inputArray.Length; i++)
            {
                if (inputArray[i] % 2 == zeroEvenOneOdd)
                {
                    OddEvenCount++;
                }
            }

            int[] printList = new int[OddEvenCount];

            for (int i = inputArray.Length - 1; i >= 0; i--)
            {
                if (inputArray[i] % 2 == zeroEvenOneOdd)
                {
                    printList[OddEvenCount - 1] = inputArray[i]; 
                    OddEvenCount--;
                }
            }

            if (count > printList.Length)
            {
                count = printList.Length;
            }

            Console.Write("[");
            for (int i = 0; i < count; i++)
            {
                if (i == 0)
                {
                    Console.Write(printList[printList.Length - count + i]);
                }
                else
                {
                    Console.Write(", ");
                    Console.Write(printList[printList.Length - count + i]);
                }
            }
            Console.WriteLine("]");
        }

        private static void First(int[] inputArray, int count, string type)
        {
            if (count > inputArray.Length)
            {
                Console.WriteLine("Invalid count");
                return;
            }
            Console.Write("[");
            string output = string.Empty;
            int printedElements = 0;
            int zeroEvenOneOdd = 0;
            int[] ints = new int[inputArray.Length];
            if (type == "odd")
            {
                zeroEvenOneOdd = 1;
            }

            bool firstElement = true;
            for (int i = 0; i < inputArray.Length && printedElements < count; i++)
            {
                if (inputArray[i] % 2 == zeroEvenOneOdd)
                {
                    if (firstElement)
                    {
                        output = "" + inputArray[i];
                        firstElement = false;
                    }
                    else
                    {
                        output = output + ", " + inputArray[i];
                    }
                    printedElements++;
                }
            }
            Console.WriteLine(output + "]");
        }

        private static void OddEven(int[] inputArray, string command, string type)
        {
            int indexOfInterest = -1;
            bool error = false;
            if (command == "max" && type == "odd")
            {
                int maxOdd = int.MinValue;
                for (int i = 0; i < inputArray.Length; i++)
                {
                    if (inputArray[i] % 2 == 1)
                    {
                        if (maxOdd <= inputArray[i])
                        {
                            maxOdd = inputArray[i];
                            indexOfInterest = i;
                        }
                    }
                }
            }
            else if (command == "max" && type == "even")
            {
                int maxEven = int.MinValue;
                for (int i = 0; i < inputArray.Length; i++)
                {
                    if (inputArray[i] % 2 == 0)
                    {
                        if (maxEven <= inputArray[i])
                        {
                            maxEven = inputArray[i];
                            indexOfInterest = i;
                        }
                    }
                }
            }
            else if (command == "min" && type == "odd")
            {
                int minOdd = int.MaxValue;
                for (int i = 0; i < inputArray.Length; i++)
                {
                    if (inputArray[i] % 2 == 1)
                    {
                        if (minOdd >= inputArray[i])
                        {
                            minOdd = inputArray[i];
                            indexOfInterest = i;
                        }
                    }
                }
            }
            else if (command == "min" && type == "even")
            {
                int minEven = int.MaxValue;
                for (int i = 0; i < inputArray.Length; i++)
                {
                    if (inputArray[i] % 2 == 0)
                    {
                        if (minEven >= inputArray[i])
                        {
                            minEven = inputArray[i];
                            indexOfInterest = i;
                        }
                    }
                }
            }
            else
            {
                Console.WriteLine("Error: Bad argument in OddEven Function");
                error = true;
            }

            if (!error)
            {
                if (indexOfInterest != -1)
                {
                    Console.WriteLine(indexOfInterest);
                }
                else
                {
                    Console.WriteLine("No matches");
                }
            }
        }

        private static void Exchange(int[] inputArray, int splitIndex = 0)
        {
            if (splitIndex < 0 || splitIndex >= inputArray.Length)
            {
                Console.WriteLine("Invalid index");
                return;
            }

            int[] left = new int[splitIndex + 1];
            int[] right = new int[inputArray.Length - splitIndex - 1];
            int i = 0;
            while (i < left.Length)
            {
                left[i] = inputArray[i];
                i++;
            }
            for (int j = 0; i < inputArray.Length; j++, i++)
            {
                right[j] = inputArray[i];
            }


            i = 0;
            while (i < right.Length)
            {
                inputArray[i] = right[i];
                i++;
            }
            for (int j = 0; i < inputArray.Length; j++, i++)
            {
                inputArray[i] = left[j];
            }
        }
    }
}