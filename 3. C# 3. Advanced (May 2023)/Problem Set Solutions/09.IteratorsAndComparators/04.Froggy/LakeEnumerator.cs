using System.Collections;

namespace _04.Froggy
{
    internal class LakeEnumerator<T> : IEnumerator<T>
    {
        private List<T> stones;
        private List<int> order;
        int index;

        public LakeEnumerator(List<T> stones)
        {
            this.stones = stones;
            order = new List<int>();
            index = -1;
            for (int i = 0; i < stones.Count; i++)
            {

                if (i % 2 == 0)
                {
                    order.Add(i);
                }
            }

            for (int i = stones.Count - 1; i >= 0; i--)
            {
                if (i % 2 == 1)
                {
                    order.Add(i);
                }
            }
        }

        public T Current => stones[order[index]];

        object IEnumerator.Current => Current;

        public void Dispose() { }

        public bool MoveNext()
        {
            if (index + 1 == order.Count)
            {
                return false;
            }

            index++;
            return true;
        }

        public void Reset()
        {
            index = 0;
        }
    }
}