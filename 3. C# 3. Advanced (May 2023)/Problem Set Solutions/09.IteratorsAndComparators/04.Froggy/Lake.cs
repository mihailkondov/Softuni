using System.Collections;

namespace _04.Froggy;

internal class Lake<T> : IEnumerable<T>
{
    private List<T> stones;

    public Lake(IEnumerable<T> stones)
    {
        this.stones = new List<T>(stones);
    }

    public IEnumerator<T> GetEnumerator()
    {
        return new LakeEnumerator<T>(this.stones);
    }

    IEnumerator IEnumerable.GetEnumerator()
    {
        return GetEnumerator();
    }
}
