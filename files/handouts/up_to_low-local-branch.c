#include <stdio.h>

int main() {
  const int x = 30;
  int y;
  char z;

  scanf("%d", &y);

  if (y >= 65) {
    z = (char)(x + y + 2);
    printf("%c\n", z);
  } /* else {
    printf("invalid character\n");
  } */

  printf("all done\n");

  return 0;
}
