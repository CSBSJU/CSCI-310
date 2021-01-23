         BR      main 
x:       .EQUATE 30          ; constant
y:       .EQUATE 1           ; local variable #2d
z:       .EQUATE 0           ; local variable #1c 
;
main:    SUBSP   3,i         ; push #y #z
         DECI    y,s         ; scanf("%d", &y)

if:      LDWA    y,s         ; if (y >= 65)
         CPWA    65,i
         BRLT    else

         LDWA    x,i         ; z = x + y + 2
         ADDA    y,s
         ADDA    2,i
         STBA    z,s

         LDBA    z,s         ; printf("%c\n", z)
         STBA    charOut,d
         LDBA    '\n',i
         STBA    charOut,d
         BR      endIf

else:    STRO    msg1,d      ; printf("invalid character\n")

endIf:   STRO    msg2,d      ; printf("all done\n")

         ADDSP   3,i         ; pop #z #y
         STOP

msg1:    .ASCII  "invalid character\n\x00"
msg2:    .ASCII  "all done\n\x00"
         .END
         
