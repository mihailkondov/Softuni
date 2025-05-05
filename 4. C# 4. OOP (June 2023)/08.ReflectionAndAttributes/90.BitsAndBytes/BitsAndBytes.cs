// Exploring bits and bytes

bool a = false;
byte[] y = BitConverter.GetBytes(a);

bool b = true;
byte[] x = BitConverter.GetBytes(b);

Console.WriteLine(y[0]);
Console.WriteLine(x[0]);

byte c = (byte)'a';
Console.WriteLine(c);


