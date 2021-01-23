#include <stdio.h>

int a[2];

int min(int n, int x[]) {
  int m;
 
  m = x[0];
  if (x[1] < m) {
    m = x[1];
  }

  return m;
}

int main() {
  scanf("%d", &a[0]);
  scanf("%d", &a[1]);

  printf("%d\n", min(2, a));
}
