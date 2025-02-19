// 05. Copy Directory

namespace CopyDirectory
{
    using System;
    using System.IO;

    public class CopyDirectory
    {
        static void Main()
        {
            string inputPath = @$"{Console.ReadLine()}";
            string outputPath = @$"{Console.ReadLine()}";

            CopyAllFiles(inputPath, outputPath);
        }

        public static void CopyAllFiles(string inputPath, string outputPath)
        {
            string folderName = Path.GetDirectoryName(inputPath);
            if (Directory.Exists(outputPath))
            {
                Directory.Delete(outputPath, true);
            }

            Directory.CreateDirectory(outputPath);
            string[] filePaths = Directory.GetFiles(inputPath);
            foreach (string filePath in filePaths)
            {
                string fileName = Path.GetFileName(filePath);
                int size = 0;
                byte[] buffer = new byte[1024];
                FileStream inputStream = new FileStream(filePath, mode: FileMode.Open, FileAccess.Read);
                FileStream outputStream = new FileStream(outputPath + '\\' + fileName, FileMode.Create);
                using (inputStream)
                {
                    using (outputStream)
                    {
                        while ((size = inputStream.Read(buffer, 0, buffer.Length)) != 0)
                        {
                            outputStream.Write(buffer, 0, size);
                        }
                    }
                }
            }
        }
    }
}
