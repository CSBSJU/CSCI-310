         BR      main
a:       .BLOCK  4           ;global variable #2d2a
;
;******* int min(int n, int x[])
retVal:  .EQUATE 8           ;return value #2d
n:       .EQUATE 6           ;formal parameter #2d
x:       .EQUATE 4           ;formal parameter #2h
m:       .EQUATE 0           ;local variable #2d
min:     SUBSP   2,i         ;push #m
         LDWX    0,i         ;m = x[0]
         ASLX
         LDWA    x,sfx
         STWA    m,s
         LDWX    1,i         ;if (x[1] < m)
         ASLX
         LDWA    x,sfx
         CPWA    m,s
         BRGE    endIf
         LDWX    1,i
         ASLX
         LDWA    x,sfx
         STWA    m,s
endIf:   LDWA    m,s         ;return m
         STWA    retVal,s
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
         LDWA    2,i         ;move 2
         STWA    -4,s
         LDWA    a,i         ;move a
         STWA    -6,s
         SUBSP   6,i         ;push #retVal #n #x
         CALL    min         ;min(2, a)
         ADDSP   6,i         ;pop #x #n #retVal
         DECO    -2,s        ;print("%d\n", min(2, a))
         LDBA    '\n',i
         STBA    charOut,d
         STOP
         .END
