         BR      main 
x:       .EQUATE 30          ; why not .WORD 30
y:       .BLOCK  2           ; global variable #2d
z:       .BLOCK  1           ; global variable #1c 
;
main:    DECI    y,d         ; scanf("%d", &y)

         LDWA    x,i         ; z = x + y + 2
         ADDA    y,d
         ADDA    2,i
         STBA    z,d

         LDBA    z,d         ; printf("%c\n", z)
         STBA    charOut,d
         LDBA    '\n',i
         STBA    charOut,d

         STOP
         .END
         