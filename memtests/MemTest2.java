public class MemTest2
{
  static int INNER = 10000;
  static int LOOPS = 1*1000*1000;
  
  public static void main(String[] args)
  {
    try { Thread.sleep(1000); } catch (InterruptedException e) {}
    
    byte[][] aa = new byte[1000][];
    for (int i = 0; i < LOOPS; i++) {
      byte[] a = new byte[INNER];
      aa[i % 1000] = a;
    }
  }
}
