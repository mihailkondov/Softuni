namespace _08.AnonymousThreat
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<string> inputList = Console.ReadLine()
                .Split(" ", StringSplitOptions.RemoveEmptyEntries)
                .ToList();
            string input;
            while (true)
            {
                input = Console.ReadLine();
                string[] command = input.Split(' ');

                if (command[0] == "merge" && command.Length == 3)
                {
                    int startIndex = int.Parse(command[1]);
                    if (startIndex < 0)
                    {
                        startIndex = 0;
                    }

                    int endIndex = int.Parse(command[2]);
                    if (endIndex >= inputList.Count)
                    {
                        endIndex = inputList.Count - 1;
                        if (startIndex > endIndex)
                        {
                            startIndex = endIndex;
                        }
                    }

                    List<string> toMerge = new List<string>();
                    int steps = endIndex - startIndex;
                    for (int i = 0; i <= steps; i++)
                    {
                        toMerge.Insert(i, inputList[startIndex + i]);
                    }
                    toMerge.RemoveAll(x => x == "");
                    string merged = string.Join("", toMerge);
                    for (int i = endIndex; i >= startIndex; i--)
                    {
                        inputList.RemoveAt(i);
                    }
                    inputList.Insert(startIndex, merged);
                }
                else if (command[0] == "divide")
                {
                    int index = int.Parse(command[1]);
                    int partitions = int.Parse(command[2]);
                    if (index >= 0 &&
                        index < inputList.Count &&
                        partitions > 0)
                    {
                        string word = inputList[index];
                        inputList.RemoveAt(index);
                        List<string> toAppend = ToAppend(word, partitions);
                        for (int i = 0; i < toAppend.Count; i++)
                        {
                            inputList.Insert(index + i, toAppend[i]);
                        }
                    }
                }
                else if (command[0] == "3:1")
                {
                    Console.WriteLine(string.Join(" ", inputList).Trim());
                    break;
                }
            }
        }
        static List<string> ToAppend(string inputString, int partitions)
        {
            int length = inputString.Length;
            int partsLength = length / partitions;
            int lastFragmentLength = partsLength + length % partitions;
            List<string> wordsToInsert = new List<string>();

            if (partsLength > 0)
            {
                for (int i = 0; i < partitions - 1; i++)
                {
                    string word = string.Empty;
                    for (int j = 0; j < partsLength; j++)
                    {
                        word += inputString[i * partsLength + j];
                    }
                    wordsToInsert.Add(word);
                }
            }

            string lastWord = string.Empty;
            for (int i = 0; i < lastFragmentLength; i++)
            {
                lastWord += inputString[length - lastFragmentLength + i];
            }
            wordsToInsert.Add(lastWord);
            return wordsToInsert;
        }
    }
}