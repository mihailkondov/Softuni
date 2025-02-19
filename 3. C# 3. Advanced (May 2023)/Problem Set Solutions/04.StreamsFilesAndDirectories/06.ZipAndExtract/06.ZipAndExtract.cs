// 06. Zip And Extract

namespace ZipAndExtract
{
    using System;
    using System.IO;
    using System.IO.Compression;

    public class ZipAndExtract
    {
        static void Main()
        {
            string inputFile = @"..\..\..\copyMe.png";
            string zipArchiveFile = @"..\..\..\archive.zip";
            string extractedFile = @"..\..\..\extracted.png";

            ZipFileToArchive(inputFile, zipArchiveFile);

            var fileNameOnly = Path.GetFileName(inputFile);
            ExtractFileFromArchive(zipArchiveFile, fileNameOnly, extractedFile);
        }

        public static void ZipFileToArchive(string inputFilePath, string zipArchiveFilePath)
        {
            if (!File.Exists(inputFilePath))
            {
                ZipFile.CreateFromDirectory(inputFilePath, zipArchiveFilePath);
            }
            FileStream fileStream = new FileStream(inputFilePath, mode: FileMode.Open, FileAccess.Read);
            ZipArchive zipArchive = ZipFile.Open(zipArchiveFilePath, ZipArchiveMode.Update);
            using (zipArchive)
            {
                string fileName = Path.GetFileName(inputFilePath);
                zipArchive.CreateEntryFromFile(inputFilePath, fileName);
            }
        }

        public static void ExtractFileFromArchive(string zipArchiveFilePath, string fileName, string outputFilePath)
        {
            ZipArchive openedZipFile = ZipFile.Open(zipArchiveFilePath, ZipArchiveMode.Read);
            ZipArchiveEntry zipArchiveEntry = openedZipFile.GetEntry(fileName);
            zipArchiveEntry.ExtractToFile(outputFilePath);
            openedZipFile.Dispose();
        }
    }
}
