// 10. SoftUni Course Planning

namespace _10.SoftUniCoursePlanning
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine();
            List<string> courses = ReadInitialCourses(input);

            while ((input = Console.ReadLine()) != "course start")
            {
                string[] tokens = input.Split(':').ToArray();
                string command = tokens[0];
                if (command == "Add")
                {
                    Add(tokens[1], courses);
                }
                else if (command == "Insert")
                {
                    InsertAt(tokens[1], tokens[2], courses);
                }
                else if (command == "Remove")
                {
                    Remove(tokens[1], courses);
                }
                else if (command == "Swap")
                {
                    Swap(tokens[1], tokens[2], courses);
                }
                else if (command == "Exercise")
                {
                    Exercise(tokens[1], courses);
                }
            }
            PrintList(courses);
        }

        private static void Exercise(string courseTitle, List<string> courses)
        {
            Add(courseTitle, courses); // Add checks if course is already added, that's why there is no condition here

            int courseIndex = courses.IndexOf(courseTitle);
            string exerciseTitle = $"{courseTitle}-Exercise";
            int exerciseIndex = courses.IndexOf(exerciseTitle);
            if (exerciseIndex == -1)
            {
                courses.Insert(courseIndex + 1, exerciseTitle);
            }
        }

        public static void Add(string courseTitle, List<string> courses)
        {
            if (!courses.Contains(courseTitle))
            {
                courses.Add(courseTitle);
            }
        }

        public static void InsertAt(string courseTitle, string indexString, List<string> courses)
        {
            int index = int.Parse(indexString);

            if (!courses.Contains(courseTitle))
            {
                courses.Insert(index, courseTitle);
            }
        }

        private static void PrintList(List<string> courses)
        {
            for (int i = 0; i < courses.Count; i++)
            {
                Console.WriteLine($"{i + 1}.{courses[i]}");
            }
        }

        public static List<string> ReadInitialCourses(string inputString)
        {
            List<string> list = new List<string>();
            var input = inputString.Split(", ").ToList();
            foreach (var c in input)
            {
                list.Add(c);
            }
            return list;
        }

        public static void Remove(string courseTitle, List<string> courses)
        {
            courses.Remove(courseTitle);
            courses.Remove(courseTitle + "-Exercise");
        }

        private static void Swap(string course1, string course2, List<string> courses)
        {
            // Swap courses
            int i1 = courses.IndexOf(course1);
            int i2 = courses.IndexOf(course2);
            if (i1 == -1 || i2 == -1)
            {
                return;
            }

            courses[i1] = course2;
            courses[i2] = course1;

            // Swap exercises
            string exerciseTitle1 = course1 + "-Exercise";
            string exerciseTitle2 = course2 + "-Exercise";

            if (courses.Contains(exerciseTitle1))
            {
                courses.Remove(exerciseTitle1);
                courses.Insert(i2 + 1, exerciseTitle1);
            }

            if (courses.Contains(exerciseTitle2))
            {
                courses.Remove(exerciseTitle2);
                courses.Insert(i1 + 1, exerciseTitle2);
            }
        }
    }
}
