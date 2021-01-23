         BR      main
a:       .BLOCK  4           ;global variable #2d2a
;
;******* int min(int n, int x[])
retVal:  .EQUATE ?           ;return value #2d
n:       .EQUATE ?           ;formal parameter #2d
x:       .EQUATE ?           ;formal parameter #2h
m:       .EQUATE ?           ;local variable #2d
min:     SUBSP   2,i         ;push #m
         LDWX    0,i         ;m = x[0]
         ASLX
         LDWA    x,?
         STWA    m,s
         LDWX    1,i         ;if (x[1] < m)
         ASLX
         LDWA    x,?
         CPWA    m,s
         BRGE    endIf
         LDWX    1,i
         ASLX
         LDWA    x,?
         STWA    m,s
endIf:   ???                 ;return m
         ???
         ADDSP   2,i         ;pop #m
         RET
;
;******* main()
main:    LDWX    0,i         ;scanf("%d", &a[0])
         ASLX
         DECI    a,x
         LDWX    1,i         ;scanf("%d", &a[1])
         ASLX
         DECI    a,x
         ???                 ;move 2
         ???           
         ???                 ;move a
         ???          
         SUBSP   ?,i         ;push #retVal #n #x
         CALL    min         ;min(2, a)
         ADDSP   ?,i         ;pop #x #n #retVal
         DECO    -2,s        ;print("%d\n", min(2, a))
         LDBA    '\n',i
         STBA    charOut,d
         STOP
         .END
