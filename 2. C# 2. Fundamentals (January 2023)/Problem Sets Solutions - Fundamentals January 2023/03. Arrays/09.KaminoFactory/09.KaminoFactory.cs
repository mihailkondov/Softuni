// 09. Kamino Factory

namespace _09.KaminoFactory
{
    public class Program
    {
        public static void Main()
        {
            int sequenceLength  = int.Parse(Console.ReadLine());
            int[] bestSequence = new int[sequenceLength];
            for (int i = 0; i < sequenceLength; i++)
            {
                bestSequence[i] = 0;
            }

            int sampleNumber = 1;
            int bestSampleNumber = 1;
            string input;
            while ((input = Console.ReadLine()) != "Clone them!")
            {
                int[] ints = Split(input);
                int compareResult = GetBetterSequence(ints, bestSequence);
                if (compareResult == 0) 
                {
                    bestSequence = ints;
                    bestSampleNumber = sampleNumber;
                }
                sampleNumber++;
            }

            Console.WriteLine($"Best DNA sample {bestSampleNumber} with sum: {bestSequence.Sum()}.");
            Console.WriteLine(String.Join(' ', bestSequence));
        }

        /// <summary>
        /// Transforms the DNA string into an array of ints
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        public static int[] Split(string input) 
        {
            int[] result = input.Split('!', StringSplitOptions.RemoveEmptyEntries)
                .Select(x => int.Parse(x))
                .ToArray();
            return result;
        }

        /// <summary>
        /// Compares two DNA sequences and returns the better one.
        /// </summary>
        /// <param name="current"></param>
        /// <param name="bestSequence"></param>
        /// <returns>0 if first is better, 1 if second is better</returns>
        public static int GetBetterSequence(int[] current, int[] bestSequence)
        {
            int[] resBest = MeasureSequence(bestSequence);
            int[] resCurrent = MeasureSequence(current);

            // Compare length
            if (resCurrent[0] > resBest[0])
            {
                return 0;
            }

            if (resCurrent[0] < resBest[0])
            {
                return 1;
            }

            // Compare indices
            
            if (resCurrent[1] < resBest[1])
            {
                return 0;
            }

            if (resCurrent[1] > resBest[1])
            {
                return 1;
            }

            // Compare sums
            if (current.Sum() > bestSequence.Sum())
                return 0;

            if (current.Sum() < bestSequence.Sum())
                return 1;

            return 1;
        }

        /// <summary>
        /// Takes a sequence and returns the max lenght of ones and the index of their start.
        /// </summary>
        /// <param name="ints"></param>
        /// <returns>int[2] {maxLength, startIndex}</returns>
        public static int[] MeasureSequence(int[] ints)
        {
            int maxLen = 0;
            int maxStart = 0;

            int currentLen = 0;
            int currentStart = 0;

            bool newSequenceStart = true;
            for (int i = 0; i < ints.Length; i++)
            {
                if (ints[i] == 1)
                {
                    currentLen++;
                    if (newSequenceStart)
                    {
                        currentStart = i;
                    }
                    newSequenceStart = false;
                }
                else
                {

                    newSequenceStart = true;
                    currentLen = 0;
                }

                if (currentLen > maxLen)
                {
                    maxLen = currentLen;
                    maxStart = currentStart;
                }
            }

            int[] result = new int[2] { maxLen, maxStart };
            return result;
        }
    }
}