using System.Text;

namespace _08.CarSalesman
{
    public class Engine
    {
        public Engine(string model, int power)
        {
            Model = model;
            Power = power;
        }

        public string Model { get; set; }
        public int Power { get; set; }
        public int? Displacement { get; set; } = null;
        public string? Efficiency { get; set; } = null;

        public override string ToString()
        {
            string displacementString = Displacement.HasValue ? Displacement.Value.ToString() : "n/a";
            string efficiencyString = Efficiency == null ? "n/a" : Efficiency;

            StringBuilder sb = new StringBuilder();
            sb.AppendLine($"  {Model}:");
            sb.AppendLine($"    Power: {Power}");
            sb.AppendLine($"    Displacement: {displacementString}");
            sb.AppendLine($"    Efficiency: {efficiencyString}");

            return sb.ToString();
        }
    }
}
