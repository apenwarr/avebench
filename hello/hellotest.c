#include <stdio.h>

int main()
{
  char buf[102400];
  size_t size;

  FILE *f = fopen("hello.txt", "rb");
  size = fread(buf, 1, sizeof(buf), f);
  fwrite(buf, 1, size, stdout);
  fclose(f);
  
  return 0;
}
