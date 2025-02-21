namespace _09.PokemonTrainer
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Dictionary<string, Trainer> trainers = new Dictionary<string, Trainer>();
            string input = string.Empty;
            while ((input = Console.ReadLine()) != "Tournament")
            {
                // "{trainerName} {pokemonName} {pokemonElement} {pokemonHealth}
                string[] iArr = input.Split(' ').ToArray();
                string trainerName = iArr[0];
                string pokemonName = iArr[1];
                string pokemonElement = iArr[2];
                int pokemonHealth = int.Parse(iArr[3]);
                Pokemon pokemon = new Pokemon(pokemonName, pokemonElement, pokemonHealth);
                if (!trainers.ContainsKey(trainerName))
                {
                    Trainer trainer = new Trainer(trainerName);
                    trainers.Add(trainerName, trainer);
                }
                trainers[trainerName].Pokemons.Add(pokemon);
            }

            while ((input = Console.ReadLine()) != "End")
            {
                foreach (var trainer in trainers.Values)
                {
                    Pokemon? elementalPokemon = trainer.Pokemons.FirstOrDefault(p => p.Element == input);
                    if (elementalPokemon != null)
                    {
                        trainer.NumberOfBadges++;
                    }
                    else
                    {
                        foreach (Pokemon pokemon in trainer.Pokemons)
                        {
                            pokemon.Health -= 10;
                        }

                        trainer.Pokemons.RemoveAll(p => p.Health <= 0);
                    }
                }
            }

            foreach (var trainer in trainers.Values
                .OrderByDescending(t => t.NumberOfBadges)) 
            {
                Console.WriteLine($"{trainer.Name} {trainer.NumberOfBadges} {trainer.Pokemons.Count}");
            }
        }
    }
}
