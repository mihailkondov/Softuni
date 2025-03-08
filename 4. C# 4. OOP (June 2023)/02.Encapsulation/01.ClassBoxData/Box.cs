// 01. Class Box Data - Box

namespace _01.ClassBoxData
{
    internal class Box
    {
        double _length;
        double _width;
        double _height;

        public Box(double length, double width, double height)
        {
            Length = length;
            Width = width;
            Height = height;
        }

        public double Length 
        {
            get => _length;
            private set
            {
                if (value <= 0 )
                {
                    throw new ArgumentException($"{nameof(Length)} cannot be zero or negative.");
                }
                _length = value;
            }
        }
        public double Width
        {
            get => _width;
            private set
            {
                if (value <= 0)
                {
                    throw new ArgumentException($"{nameof(Width)} cannot be zero or negative.");
                }
                _width = value;
            }
        }
        public double Height
        {
            get => _height;
            private set
            {
                if (value <= 0)
                {
                    throw new ArgumentException($"{nameof(Height)} cannot be zero or negative.");
                }
                _height = value;
            }
        }

        public double SurfaceArea()
        {
            return (Length * Height) * 2 + (Width * Length) * 2 + (Width * Height) * 2;

        }

        public double LateralSurfaceArea()
        {
            return (Height * Width) * 2 + (Height * Length) * 2;
        }

        public double Volume()
        {
            return Height * Width * Length;
        }
    }
}
