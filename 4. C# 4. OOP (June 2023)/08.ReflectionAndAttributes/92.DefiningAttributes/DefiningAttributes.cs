
using System.Reflection;

Type[] types = Assembly.GetExecutingAssembly().GetTypes();
Type ivansClass = types.First(t => t.GetCustomAttributes(typeof(CreatorAttribute), false)
                         .Cast<CreatorAttribute>()
                         .Any(t => t.Author == "Ivan"));
Console.WriteLine(ivansClass.Name);

Article article = new Article();

[AttributeUsage(AttributeTargets.Class)]
public class CreatorAttribute : Attribute
{
    public CreatorAttribute(string authorName)
    {
        Author = authorName;
    }
    public string Author { get; set; }
}

[Creator("Misho")]
public class Article
{
    public string Title { get; set; }
    public string Content { get; set; }

}

[Creator("Ivan")]
public class Blog
{
    public string Title { get; set; }
    public List<Article> Articles { get; set; }
}