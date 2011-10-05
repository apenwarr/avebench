#include <unistd.h>
#include <stdlib.h>
#include <string.h>

#define INNER (10000)
#define LOOPS (1*1000*1000)


int main()
{
  int i;
  char **aa, **aap;
  
  sleep(1);
  
  aa = malloc(sizeof(char *) * 1000);
  memset(aa, 0, sizeof(char *) * 1000);
  for (i = 0; i < LOOPS; i++) {
    char *a = malloc(INNER);
    aap = aa + (i % 1000);
    if (*aap) free(*aap);
    memset(a, 0, INNER);
    *aap = a;
  }
  
  return 0;
}
