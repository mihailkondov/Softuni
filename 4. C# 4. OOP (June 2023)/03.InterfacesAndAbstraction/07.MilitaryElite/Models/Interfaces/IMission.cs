using _07.MilitaryElite.Enums;
namespace _07.MilitaryElite.Models.Interfaces
{
    public interface IMission
    {
        public string CodeName { get; }
        public State State { get; }
        public void CompleteMission();
    }
}
