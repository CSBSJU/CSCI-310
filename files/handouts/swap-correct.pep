         BR      main
;
;******* void swap(int *r, int *s)
r:       .EQUATE 6           ;formal parameter #2h
s:       .EQUATE 4           ;formal parameter #2h
temp:    .EQUATE 0           ;local variable #2d
swap:    SUBSP   2,i         ;push #temp
         LDWA    r,sf        ;temp = *r
         STWA    temp,s      
         LDWA    s,sf        ;*r = *s
         STWA    r,sf        
         LDWA    temp,s      ;*s = temp
         STWA    s,sf        
         ADDSP   2,i         ;pop #temp
         RET       
;
;******* order(int *x, int *y)
x:       .EQUATE 4           ;formal parameter #2h
y:       .EQUATE 2           ;formal parameter #2h
order:   LDWA    x,sf        ;if(x > y)
         CPWA    y,sf
         BRLE    endIf
         LDWA    x,s         ;move x
         STWA    -2,s
         LDWA    y,s         ;move y
         STWA    -4,s
         SUBSP   4,i         ;push #r #s
         CALL    swap        ;swap(x, y)
         ADDSP   4,i         ;pop #r #s
endIf:   RET
;
;******* main()
a:       .EQUATE 2           ;local variable #2d
b:       .EQUATE 0           ;local variable #2d
main:    SUBSP   4,i         ;push #a #b
         DECI    a,s         ;scanf("%d", &a)
         DECI    b,s         ;scanf("%d", &b)
         MOVSPA              ;move &a
         ADDA    a,i
         STWA    -2,s
         MOVSPA              ;move &b
         ADDA    b,i
         STWA    -4,s
         SUBSP   4,i         ;push #x #y
         CALL    order       ;order(a, b)
         ADDSP   4,i         ;pop #y #x
         DECO    a,s         ;print("%d %d\n", a, b)
         LDBA    ' ',i
         STBA    charOut,d
         DECO    b,s
         LDBA    '\n',i
         STBA    charOut,d
         ADDSP   4,i         ;pop #a #b
         STOP
         .END
