import java.io.*;

public class HelloTest
{
  public static void main(String[] args)
  {
    try {
      FileReader f = new FileReader("hello.txt");
      char[] cbuf = new char[102400];
      int size = f.read(cbuf, 0, cbuf.length);
      StringBuffer b = new StringBuffer();
      b.append(cbuf, 0, size);
      System.out.print(b.toString());
      f.close();
    } catch (FileNotFoundException e) {
    } catch (IOException e) {
    }
  }
}
