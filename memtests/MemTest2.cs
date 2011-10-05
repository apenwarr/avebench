using System.Threading;

public class MemTest2
{
  static int INNER = 10000;
  static int LOOPS = 1*1000*1000;
  
  public static void Main(string[] args)
  {
    System.Threading.Thread.Sleep(1000);
    
    byte[][] aa = new byte[1000][];
    for (int i = 0; i < LOOPS; i++) {
      byte[] a = new byte[INNER];
      aa[i % 1000] = a;
    }
  }
}
