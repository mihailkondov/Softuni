using _99.LoggerLibrary.Layouts;
using _99.LoggerLibrary.Layouts.Interface;

namespace _01.Logger.Factories
{
    internal static class LayoutFactory
    {
        public static ILayout CreateLayout(string type, string path)
        {
            if (type == "SimpleLayout")
            {
                return new SimpleLayout(path);

            }
            if (type == "XmlLayout")
            {
                return new XmlLayout(path);
            }

            throw new NotImplementedException();
        }
    }
}
