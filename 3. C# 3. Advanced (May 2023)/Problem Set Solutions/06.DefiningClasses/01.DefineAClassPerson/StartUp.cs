namespace DefiningClasses
{
    public class StartUp
    {
        static void Main(string[] args)
        {
            Person peter = new Person();
            {
                peter.Name = "Peter";
                peter.Age = 20;
            }

            Person george = new Person("George", 18);
            Person jose = new Person();

            jose.Age = 43;
            jose.Name = "Jose";
        }
    }
}