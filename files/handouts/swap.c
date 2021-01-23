#include <stdio.h>

void swap(int r, int s) {
  int temp;
  temp = r;
  r = s;
  s = temp;
}

void order(int x, int y) {
  if (x > y) {
    swap(x, y);
  }
}

int main() {
  int a;
  int b;
  scanf("%d", &a);
  scanf("%d", &b);
  order(a, b);
  printf("%d %d\n", a, b);
}
