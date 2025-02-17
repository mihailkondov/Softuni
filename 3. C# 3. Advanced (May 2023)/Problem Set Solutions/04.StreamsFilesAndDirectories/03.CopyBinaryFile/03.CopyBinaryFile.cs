// 03. Copy Binary File

namespace CopyBinaryFile
{
    using System.IO;
    public class CopyBinaryFile
    {
        static void Main()
        {
            string inputFilePath = @"..\..\..\copyMe.png";
            string outputFilePath = @"..\..\..\copyMe-copy.png";

            CopyFile(inputFilePath, outputFilePath);
        }

        public static void CopyFile(string inputFilePath, string outputFilePath)
        {
            using FileStream inputStream = new FileStream(inputFilePath, FileMode.Open);
            using FileStream outputStream = new FileStream(outputFilePath, FileMode.Create);

            int size = 0;
            byte[] buffer = new byte[1024];
            while ((size = inputStream.Read(buffer, 0, buffer.Length)) != 0)
            {
                outputStream.Write(buffer, 0, size);
            }
        }
    }
}
