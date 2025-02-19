/*
    02. Knights Of Honor

Create a program that 
    reads a collection of names as strings from the console, 
    appends "Sir" in front of every
    name and prints it back in the console. 
Use Action<T>.
 
 */
string input = Console.ReadLine();

Action<string> printKnights = (s) =>
{
    var names = string.Join(Environment.NewLine, input.Split().Select(s => "Sir " + s));
    Console.WriteLine(names); 
};

printKnights(input);