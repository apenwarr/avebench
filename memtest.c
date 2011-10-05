#include <unistd.h>
#include <stdlib.h>
#include <string.h>

#define INNER (10000)
#define LOOPS (1*1000*1000)


int main()
{
  int i;
  
  sleep(1);
  
  for (i = 0; i < LOOPS; i++) {
    char *a = malloc(INNER);
    memset(a, 0, INNER);
    free(a);
  }
  
  return 0;
}
