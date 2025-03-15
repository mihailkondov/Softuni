namespace _07.MilitaryElite.Models.Interfaces
{
    public interface ILieutenantGeneral : IPrivate
    {
        public IReadOnlyCollection<IPrivate> Privates { get; }
    }
}
