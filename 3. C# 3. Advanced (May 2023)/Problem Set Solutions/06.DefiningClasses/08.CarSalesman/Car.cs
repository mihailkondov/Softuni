using System.Text;

namespace _08.CarSalesman
{
    public class Car
    {
        public Car(string model, Engine engine)
        {
            Model = model;
            Engine = engine;
        }
        public string Model { get; set; }
        public Engine Engine { get; set; }
        public int? Weight { get; set; } = null;
        public string? Color { get; set; } = null;

        public override string ToString()
        {
            string colorString = (Color == null ? "n/a" : Color);
            string weightString = Weight.HasValue ? Weight.Value.ToString() : "n/a";
            StringBuilder sb = new StringBuilder();
            sb.AppendLine(Model + ":");
            sb.Append(Engine.ToString());
            sb.AppendLine($"  Weight: {weightString}");
            sb.Append($"  Color: {colorString}");

            return sb.ToString();
        }
    }
}
