// 02. Articles

namespace _02.Articles
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] initialArticle = Console.ReadLine()
                .Split(", ");
            Article article = new Article() 
            { 
                Title = initialArticle[0],
                Content= initialArticle[1],
                Author = initialArticle[2]
            };

            int n = int.Parse(Console.ReadLine()); //number of commands
            for(int i = 0; i < n; i++)
            {
                string[] command = Console.ReadLine().Split(": ");
                if (command[0] == "Edit")
                {
                    article.Content = command[1];
                }
                else if (command[0] == "ChangeAuthor")
                {
                    article.Author = command[1];
                }
                else if (command[0] == "Rename")
                {
                    article.Title = command[1];
                }
                
            }
            Console.WriteLine(article.ToString());
        }
    }

    class Article
    {
        public Article()
        {

        }

        public Article(string title, string content, string author)
        {
            this.Title = title;
            this.Content = content;
            this.Author = author;
        }

        public string Title { get; set; }
        public string Content { get; set; }
        public string Author { get; set; }

        public override string ToString()
        {
            string result = $"{this.Title} - {this.Content}: {this.Author}";
            return result;
        }
    }
}