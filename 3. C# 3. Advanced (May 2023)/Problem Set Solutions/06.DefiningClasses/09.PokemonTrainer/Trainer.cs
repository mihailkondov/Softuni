namespace _09.PokemonTrainer
{
    internal class Trainer
    {
        public Trainer(string name)
        {
            Name = name;
        }

        public string Name { get; set; }
        public int NumberOfBadges { get; set; } = 0;
        public List<Pokemon> Pokemons { get; set; } = new List<Pokemon>();
    }
}
