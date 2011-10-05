public class MemTest
{
  static int INNER = 10000;
  static int LOOPS = 1*1000*1000;
  
  public static void main(String[] args)
  {
    try { Thread.sleep(1000); } catch (InterruptedException e) {}
    
    for (int i = 0; i < LOOPS; i++) {
      byte[] a = new byte[INNER];
    }
  }
}
