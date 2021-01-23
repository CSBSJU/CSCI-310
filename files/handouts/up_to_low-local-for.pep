         BR      main 
x:       .EQUATE 30          ; constant
y:       .EQUATE 5           ; local variable #2d
z:       .EQUATE 4           ; local variable #1c 
n:       .EQUATE 2           ; local variable #2d 
i:       .EQUATE 0           ; local variable #2d
;
main:    SUBSP   7,i         ; push #y #z #n #i
         DECI    n,s         ; scanf("%d", &n)

         LDWA    0,i         ; for (i = 0;
         STWA    i,s
for:     CPWA    n,s         ; i < n
         BRGE    endFor

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

endIf:   LDWA    i,s         ; i++
         ADDA    1,i
         STWA    i,s
         BR      for

endFor:  STRO    msg2,d      ; printf("all done\n")
         ADDSP   7,i         ; pop #i #n #z #y
         STOP

msg1:    .ASCII  "invalid character\n\x00"
msg2:    .ASCII  "all done\n\x00"
         .END
         
