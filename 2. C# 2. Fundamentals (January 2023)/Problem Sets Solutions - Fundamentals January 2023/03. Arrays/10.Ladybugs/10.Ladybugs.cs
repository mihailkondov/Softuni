// 10. Ladybugs

namespace _10.Ladybugs
{
    public class Program
    {
        public static void Main()
        {
            bool testing = false;

            int fieldLength;
            int[] field;
            int[] population;

            if (testing)
            {
                Console.WriteLine("Testing mode:");
                population = new[] { 1, 2, 3, 4 };
                field = new[] { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
                fieldLength = field.Length;
            }
            else
            {
                fieldLength = int.Parse(Console.ReadLine());
                field = new int[fieldLength];
                for (int x = 0; x < fieldLength; x++)
                {
                    field[x] = 0;
                }

                population = Console.ReadLine()
                    .Split(' ')
                    .Select(int.Parse)
                    .ToArray();
            }

            // THIS PART IS VERY IMPORTANT AND NOT MENTIONED IN THE PROBLEM DESCRIPTION!!!
            // Place ladybugs on the field -> the user will attempt to place them outside
            for (int i = 0; i < population.Length; i++)
            {
                if (population[i] >= 0 && population[i] < fieldLength) // only populate inside of array
                {
                    field[population[i]] = 1;
                }
            }

            if (testing)
                PrintField(field);

            string userCommand = string.Empty;
            string[] commandArray;
            while ((userCommand = Console.ReadLine()) != "end")
            {
                commandArray = userCommand
                    .Split(' ', StringSplitOptions.RemoveEmptyEntries)
                    .ToArray();

                bool stepIsValid = int.TryParse(commandArray[2], out int step);
                bool indexIsValid = int.TryParse(commandArray[0], out int index);

                // set direction
                int direction = 1;
                if ((commandArray[1] == "left" && step > 0) ||
                    (commandArray[1] == "right" && step < 0))
                {
                    direction = -1;
                }

                // now that the direction is fixed, remove the sign from step.
                step = Math.Abs(step);

                if (index < fieldLength && index >= 0)
                {
                    if (field[index] == 1) // ladybug picked
                    {
                        field[index] = 0;

                        int newposition = index + step * direction;
                        bool stillInside = (newposition >= 0) && (newposition < fieldLength);
                        if (stillInside)
                        {
                            while (field[newposition] == 1)
                            {
                                newposition = newposition + direction * step;
                                if (newposition < 0 || newposition >= fieldLength)
                                {
                                    break;
                                }
                            }
                        }

                        if (newposition >= 0 && newposition < fieldLength)
                        {
                            field[newposition] = 1;
                        }
                    }
                }

                if (testing)
                    PrintField(field);
            }
            // Print field at the end
            PrintField(field);
        }

        public static void PrintField(int[] field)
        {
            Console.WriteLine(string.Join(' ', field));
        }
    }
}
