/*
    04. Directory Traversal

Write a program that traverses a given directory for all files with the given extension. 
Search through the first level of the directory only. 
Write information about each found file in a text file named report.txt and 
it should be saved on the Desktop. 
The files should be grouped by their extension. 
Extensions should be ordered by 
    the count of their files descending, 
    then by name alphabetically. 
Files under an extension should be ordered by their size.
report.txt should be saved on the Desktop. 
Ensure the desktop path is always valid, regardless of the user.
 */

namespace DirectoryTraversal
{
    using System;
    using System.Collections.Generic;
    using System.IO;
    using System.Linq;
    using System.Security.Cryptography.X509Certificates;
    using System.Text;

    public class DirectoryTraversal
    {
        static void Main()
        {
            string path = Console.ReadLine();
            string reportFileName = @"\report.txt";

            string reportContent = TraverseDirectory(path);
            Console.WriteLine(reportContent);

            WriteReportToDesktop(reportContent, reportFileName);
        }

        public static string TraverseDirectory(string inputFolderPath)
        {
            inputFolderPath = inputFolderPath.Replace(@"\", "\\");
            inputFolderPath = inputFolderPath.Replace(@"/", "\\");

            var fileNames = Directory.GetFiles(inputFolderPath);
            Dictionary<string, int> extensionFrequency = new Dictionary<string, int>();
            Dictionary<string, string> filenamesAndExtentions = new Dictionary<string, string>();
            foreach (string fileName in fileNames)
            {
                int dotPos = fileName.LastIndexOf('.');

                string extension = fileName.Substring(dotPos + 1);
                if (extensionFrequency.ContainsKey(extension))
                {
                    extensionFrequency[extension]++;
                }
                else
                {
                    extensionFrequency.Add(extension, 1);
                }

                filenamesAndExtentions.Add(fileName, extension);
            }

            StringBuilder sb = new StringBuilder();
            foreach (KeyValuePair<string, int> fileType in extensionFrequency
                .OrderByDescending(kvp => kvp.Value))
            {
                sb.AppendLine($".{fileType.Key}");
                foreach (var fileNameExtension in filenamesAndExtentions
                    .Where(kvp => kvp.Value == fileType.Key)
                    .OrderBy(kvp => kvp.Key)
                )
                {
                    long fileSize = new FileInfo(fileNameExtension.Key).Length;
                    double fileSizeKb = (double)fileSize / 1000;
                    string fullName = fileNameExtension.Key;
                    int indexOfLastSlash = fullName.LastIndexOf('\\');
                    string shortName = fullName.Substring(indexOfLastSlash + 1);
                    sb.AppendLine($"--{shortName} - {fileSizeKb}kb");
                }
            }
            string result = sb.ToString();
            return result;
        }

        public static void WriteReportToDesktop(string textContent, string reportFileName)
        {
            string desktopDirectoryPath = Environment.GetFolderPath(Environment.SpecialFolder.Desktop);
            File.WriteAllText(desktopDirectoryPath + reportFileName, textContent);
        }
    }
}
