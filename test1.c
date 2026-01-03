/* Generated C Code */
#include <stdio.h>
#include <stdlib.h>

int main() {
    int x;
    int i;
    int t1, t2, t3, t4, t5, t6, t7, t8;

    x = 10;
    t1 = (x == 10);
    if (!t1) goto ELSE1;
    t2 = printf("Wow It is 10");
    goto ENDIF2;
ELSE1:;
    t3 = printf("It is not 10");
ENDIF2:;
    t4 = printf("\n");
    i = 0;
FOR_START3:;
    t5 = (i < 10);
    if (!t5) goto FOR_END5;
    t6 = printf("%d", i);
    t7 = printf("\n");
FOR_UPDATE4:;
    t8 = i + 1;
    i = t8;
    goto FOR_START3;
FOR_END5:;
    return 0;
}
