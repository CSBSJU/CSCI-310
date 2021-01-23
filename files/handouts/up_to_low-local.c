#include <stdio.h>

int main() {
  const int x = 30;
  int y;
  char z;

  scanf("%d", &y);
  z = (char)(x + y + 2);
  printf("%c\n", z);

  return 0;
}
