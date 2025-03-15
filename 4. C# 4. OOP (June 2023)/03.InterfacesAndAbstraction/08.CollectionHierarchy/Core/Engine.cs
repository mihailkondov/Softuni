// 08. Collection Hierarchy

using _08.CollectionHierarchy.Core.Interfaces;
using _08.CollectionHierarchy.IO.Interfaces;
using _08.CollectionHierarchy.Models;
using _08.CollectionHierarchy.Models.Interfaces;
using System.Runtime.CompilerServices;

namespace _08.CollectionHierarchy.Core
{
    public class Engine : IEngine
    {
        private IReader _reader;
        private IWriter _writer;

        public Engine(IReader reader, IWriter writer)
        {
            _reader = reader;
            _writer = writer;
        }

        public void Run()
        {
            const int NumberOfClasses = 3;

            // Read input
            ReadUserInput(out string[] input, out int N);

            // Reserve memory
            IAdd addCollection = new AddCollection();
            IRemove addRemoveCollection = new AddRemoveCollection();
            IMyList myList = new MyList();
            int[][] addArrays = new int[NumberOfClasses][];
            int L = input.Length;
            for (int i = 0; i < NumberOfClasses; i++)
            {
                addArrays[i] = new int[L];
            }

            // Perform calculations
            for (int i = 0; i < L; i++)
            {
                addArrays[0][i] = addCollection.Add(input[i]);
                addArrays[1][i] = addRemoveCollection.Add(input[i]);
                addArrays[2][i] = myList.Add(input[i]);
            }

            string[] removeOutput = new string[N];
            string[] myListOutput = new string[N];
            for (int i = 0; i < N; i++)
            {
                removeOutput[i] = addRemoveCollection.Remove();
                myListOutput[i] = myList.Remove();
            }

            // Print output
            for (int i = 0; i < NumberOfClasses; i++)
            {
                _writer.WriteLine(string.Join(' ', addArrays[i]));
            }
            _writer.WriteLine(string.Join(' ', removeOutput));
            _writer.WriteLine(string.Join(' ', myListOutput));
        }

        private void ReadUserInput(out string[] input, out int N)
        {
            input = _reader.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries);
            N = int.Parse(_reader.ReadLine());
        }
    }
}
