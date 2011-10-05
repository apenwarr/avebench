using System.Threading;

public class HelloTest
{
  public static void Main(string[] args)
  {
    string s = System.IO.File.ReadAllText("hello.txt");
    System.Console.Write(s);
  }
}
