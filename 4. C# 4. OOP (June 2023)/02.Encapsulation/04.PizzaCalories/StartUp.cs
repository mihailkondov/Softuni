/* 
    04. Pizza Calories

// Test input:

Dough White Chewy 100
Dough Tip500 Chewy 100
Dough White Chewy 240
END

// Expected output:

330.00
Invalid type of dough.
Dough weight should be in the range [1..200].

// Test input 2:
Pizza Meatless
Dough Wholegrain Crispy 100
Topping Veggies 50
Topping Cheese 50
END

// Expected output 2:
Meatless - 370.00 Calories.

 */

using _04.PizzaCalories.Classes;

namespace _04.PizzaCalories
{
    internal class StartUp
    {
        static void Main(string[] args)
        {
            string input;
            Pizza? pizza = null;
            while ((input = Console.ReadLine()!) != "END")
            {
                try
                {
                    string[] cmdArgs = input.Split();
                    if (cmdArgs[0] == "Pizza")
                    {
                        string name = cmdArgs[1];
                        pizza = new Pizza(name);
                    }
                    else if (cmdArgs[0] == "Dough")
                    {
                        // This is for Step 2
                        if (pizza == null)
                        {
                            DoughTest(cmdArgs);
                            continue;
                        }

                        Dough dough = new Dough(cmdArgs[1], cmdArgs[2], double.Parse(cmdArgs[3]));
                        pizza.Dough = dough;
                    }
                    else if (cmdArgs[0] == "Topping")
                    {
                        // This is for Step 4 test:
                        if (pizza == null)
                        {
                            Topping topping;
                            double grams = double.Parse(cmdArgs[2]);
                            try
                            {
                                topping = new Topping(cmdArgs[1], grams);
                                Console.WriteLine($"{topping.Calories():F2}");
                            }
                            catch (ArgumentException ex)
                            {
                                Console.WriteLine(ex.Message);
                            }
                        }
                        else
                        {
                            pizza.AddTopping(new Topping(cmdArgs[1], double.Parse(cmdArgs[2])));
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    return;
                }
            }

            if (pizza == null)
            {
                return;
            }

            Console.WriteLine($"{pizza.Name} - {pizza.TotalCalories:F2} Calories.");
        }

        private static Dough DoughTest(string[] cmdArgs)
        {
            try
            {
                string type = cmdArgs[1];
                string modifier = cmdArgs[2];
                double grams = double.Parse(cmdArgs[3]);
                Dough dough = new Dough(type, modifier, grams);
                Console.WriteLine($"{dough.CaloriesPerGram * grams:F2}");
                return dough;
            }
            catch (ArgumentException ex)
            {
                Console.WriteLine(ex.Message);
            }
            return null;
        }
    }
}