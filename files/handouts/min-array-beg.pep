         BR      main
a:       .BLOCK  4           ;global variable #2d2a
;
;******* main()
main:    LDWX    0,i         ;scanf("%d", &a[0])
         ASLX
         DECI    a,x
         LDWX    1,i         ;scanf("%d", &a[1])
         ASLX
         DECI    a,x
; FILL IN THIS CODE
         LDBA    '\n',i
         STBA    charOut,d
         STOP
         .END
