// 03. Articles 2.0

namespace _02.Articles
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine()); //number of commands
            Article[] articles = new Article[n];
            for (int i = 0; i < n; i++)
            {
                string[] command = Console.ReadLine().Split(", ");
                Article article = new Article(command[0], command[1], command[2]);
                articles[i] = article;
            }

            PrintListOfArticles(articles);
        }

        private static void PrintListOfArticles(Article[] articles)
        {
            for(int i = 0; i<articles.Length; i++)
            {
                Console.WriteLine($"{articles[i].Title} - {articles[i].Content}: {articles[i].Author}");
            }
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