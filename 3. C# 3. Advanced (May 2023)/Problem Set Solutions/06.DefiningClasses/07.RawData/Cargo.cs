namespace _07.RawData
{
    public class Cargo
    {
        /// <summary>
        /// Cargo: a class with two properties – type and weight
        /// </summary>
        /// <param name="type"></param>
        /// <param name="weight"></param>
        public Cargo(string type, int weight)
        {
            Type = type;
            Weight = weight;
        }

        public string Type { get; set; }
        public int Weight { get; set; }
    }
}