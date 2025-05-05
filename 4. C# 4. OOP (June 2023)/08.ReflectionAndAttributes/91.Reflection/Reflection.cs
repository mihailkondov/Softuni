// Trying out some reflection functionality

using System.Reflection;

namespace TestReflection;
class Reflection
{
    public static void Main()
    {
        Type personType;
        // Accessing name of the type when name is know
        personType = typeof(Person);
        Console.WriteLine(personType.Name);

        // Accessing name of the type when name is not known
        personType = Type.GetType("TestReflection.Person")!; // This will break if I only write Person
        Console.WriteLine(personType.Name);

        // Getting the type from an instance of the object
        var person = new Person();
        personType = person.GetType();
        Console.WriteLine(personType.Name);

        // Getting name with then namespace
        string fullName = typeof(Person).FullName!;
        Console.WriteLine(fullName);

        // Get base type:
        Type baseType = personType.BaseType!;
        Console.WriteLine("The person base type is:");
        Console.Write('\t');
        Console.WriteLine(baseType.Name);

        // Get interfaces
        Console.WriteLine("Discovering all interfaces for person using reflection:");
        Type[] interfaces = personType.GetInterfaces();
        foreach (var i in interfaces)
        {
            Console.Write('\t');
            Console.WriteLine(i.Name);
        }

        // Instantiating a person using reflection
        Console.WriteLine("Instantiating a person using reflection:");
        var reflectedPerson = Activator.CreateInstance(personType);

        string name = "Reflection Man";
        Console.WriteLine($"Changing name of person created to {name}:");
        reflectedPerson!.GetType().GetProperty("Name")?.SetValue(reflectedPerson, name);
        Console.Write('\t');
        Console.WriteLine($"Name changed.");

        Console.WriteLine("Reading a value of a property of an unknown type using reflection: (reading the name I just changed)");
        Console.Write('\t');
        Console.WriteLine(reflectedPerson.GetType().GetProperty("Name")?.GetValue(reflectedPerson));

        // Accessing a private field using reflection
        var secret = personType.GetField("favoriteTaylorSwitfSong", BindingFlags.NonPublic | BindingFlags.Instance)!.GetValue(reflectedPerson);
        Console.WriteLine("Reading a private field from the outside using reflection:");
        Console.Write('\t');
        Console.WriteLine(secret);

        // Accessing all fields:
        Console.WriteLine("Accessing all fields: ");
        FieldInfo[] allFields= personType.GetFields(BindingFlags.Instance | BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
        foreach (FieldInfo field in allFields)
        {
            string fieldName = field.Name;
            string fieldContent = field.GetValue(reflectedPerson)?.ToString()!;
            Console.WriteLine($"\t{fieldName}: {fieldContent}");
        }

        // Checking access modifiers:
        Console.WriteLine($"Field {allFields[0].Name} is private: {allFields[0].IsPrivate}");
        /*
            Some other possible states - all are flag bits:
                field.IsPrivate // private
                field.IsPublic // public
                field.IsNonPublic // everything but public
                field.IsFamily // protected
                field.IsAssembly // internal
         */

        // Instantiating objects using a specific constructor:
        Type type = reflectedPerson.GetType();
        Type[] ctorSig = new Type[] { typeof(string), typeof(string), typeof(int), typeof(string) };
        ConstructorInfo constructor = type.GetConstructor(ctorSig)!;

        Person johnSmith = (Person)constructor.Invoke(new object[] { "John", "Smith", 20, "I don't like Taylor Swift, but it has to be Shake It Off."});
        Console.WriteLine(johnSmith);

        // Calling methods using reflection
        Console.WriteLine($"Invoking the sleep method on {reflectedPerson.GetType().GetProperty("Name")!.GetValue(reflectedPerson)}:");
        MethodInfo[] methodInfo = reflectedPerson.GetType().GetMethods();
        MethodInfo sleepMethod = methodInfo.FirstOrDefault(m => m.Name == "Sleep")!;
        sleepMethod.Invoke(reflectedPerson, null);

        Console.WriteLine("Invoking a method with parameters: johnSmith.IncreaseAge(10):");
        MethodInfo inceraseAgeMethod = methodInfo.First(m => m.Name == nameof(Person.IncreaseAge));
        var increaseAgeResult = inceraseAgeMethod.Invoke(johnSmith, new object[] { 10 });
        int johnsNewAge = (int) increaseAgeResult!;
        Console.WriteLine($"\t{johnSmith.Name} is now {johnsNewAge} years old.");

        // 
    }
}

public class Person : Mammal
{
    private string surname = "Surname not instantiated correctly.";
    private string favoriteTaylorSwitfSong = "This is confidential information! But it's Blank Space.";
    public string? Name { get; set; }
    public string Surname 
    {
        get => surname; 
        set => surname = value; 
    }

    public Person()
    {
        Console.WriteLine("\tShhh! HO!");
    }

    public Person(string name, string surname, int age, string secret)
    {
        Name = name;
        Surname = surname;
        Age = age;
        this.favoriteTaylorSwitfSong = secret;
    }

    public void DisplayInfo()
    {
        Console.WriteLine($"Name: {Name}, Age: {Age}");
    }

    public override string ToString()
    {
        return $"Name: {Name}, Surname: {Surname}, Age: {Age}";
    }
}

public class Mammal : ISleep
{
    public int Age { get; set; }

    public void Sleep()
    {
        Console.WriteLine($"\tSleeping...");
    }

    public int IncreaseAge(int years)
    {
        this.Age += years;
        return Age;
    }
}

public interface ISleep
{
    void Sleep();
}