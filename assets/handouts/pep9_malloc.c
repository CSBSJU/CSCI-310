#include <stdio.h>

void * pep9_malloc(int);
void pep9_free(void *);

int *a;
int *b;

int main() {
  a = pep9_malloc(sizeof(int));
  *a = 5;

  b = pep9_malloc(sizeof(int));
  *b = 4;

  *a = 2 + *b;

  printf("*a = %d\n", *a);
  printf("*b = %d\n", *b);

  pep9_free(b);

  b = pep9_malloc(sizeof(int));

  printf("*b = %d\n", *b);

  pep9_free(a);
  pep9_free(b);

  a = pep9_malloc(sizeof(int));
  b = pep9_malloc(sizeof(int));

  printf("*a = %d\n", *a);
  printf("*b = %d\n", *b);

  return 0;
}

/* ---------------------------------------------------------------------------*/

char heap[65536];
char *hpPtr = heap;

void * pep9_malloc(int size) {
  return NULL;
}

void pep9_free(void *ptr) {
}
