// 04. Students

namespace _04.Students
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            List<Student> students = new List<Student>();
            for (int i = 0; i < n; i++)
            {
                string[] student = Console.ReadLine().Split(' ');
                Student current = new Student(student[0], student[1], float.Parse(student[2]));
                students.Add(current);
            }

            //sort by grade:
            students = students.OrderByDescending(x => x.Grade).ToList();

            for (int i = 0; i < n; i++)
            {
                Console.WriteLine($"{students[i].Name} {students[i].Surname}: {students[i].Grade:F2}");
            }
        }
    }

    public class Student
    {
        public Student(string name, string surname, float grade)
        {
            this.Name = name;
            this.Surname = surname;
            this.Grade = grade;
        }

        public string Name { get; set; }
        public string Surname { get; set; }
        public float Grade { get; set; }
    }
}