         BR      main 
x:       .EQUATE 30          ; constant
y:       .EQUATE 1           ; local variable #2d
z:       .EQUATE 0           ; local variable #1c 
;
main:    SUBSP   3,i         ; push #y #z
         DECI    y,s         ; scanf("%d", &y)

         LDWA    x,i         ; z = x + y + 2
         ADDA    y,s
         ADDA    2,i
         STBA    z,s

         LDBA    z,s         ; printf("%c\n", z)
         STBA    charOut,d
         LDBA    '\n',i
         STBA    charOut,d

         ADDSP   3,i         ; pop #z #y
         STOP
         .END
         
