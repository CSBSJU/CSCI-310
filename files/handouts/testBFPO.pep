         BR      main 
p1:      .BLOCK  2           ;global variable #2d 
num1:    .WORD   2           ;global variable #2d 
arr1:    .BLOCK  4           ;global variable #2d2a 
;
;******* main() 
p2:      .EQUATE 0           ;local variable #2d
num2:    .EQUATE 2           ;local variable #2d 
arr2:    .EQUATE 4           ;local variable #2d2a 
main:    SUBSP   8,i         ;puch #p2 #num2 #arr2 
  
         STRO    msg1,d      ;test immediate (ZERO: e.g. 0) 
         BFPO    0,i
         LDBA    '\n',i
         STBA    charOut,d  
  
         STRO    msg2,d      ;test direct (-ZERO: e.g.-32768) 
         LDWA    -32768,i 
         STWA    num1,d      
         BFPO    num1,d 
         LDBA    '\n',i
         STBA    charOut,d  
  
         STRO    msg3,d      ;test indirect (NaN: e.g.-1) 
         LDWA    -1,i 
         STWA    num1,d      
         LDWA    num1,i      
         STWA    p1,d 
         BFPO    p1,n 
         LDBA    '\n',i
         STBA    charOut,d  
  
         STRO    msg4,d      ;test stack-relative (NaN: e.g. 32767) 
         LDWA    32767,i 
         STWA    num2,s      
         BFPO    num2,s 
         LDBA    '\n',i
         STBA    charOut,d  
  
         STRO    msg5,d      ;test stack-deferred (Norm: e.g. 512) 
         LDWA    512,i 
         STWA    num1,d      
         LDWA    num1,i      
         STWA    p2,s  
         BFPO    p2,sf 
         LDBA    '\n',i
         STBA    charOut,d   
  
         STRO    msg6,d      ;test indexed (-Norm: e.g. -32255) 
         LDWX    0,i   
         LDWA    -32255,i 
         STWA    arr1,x 
         BFPO    arr1,x 
         LDBA    '\n',i
         STBA    charOut,d  
  
         STRO    msg7,d      ;test stack-indexed (DeNorm: e.g. 1) 
         LDWX    2,i   
         LDWA    1,i 
         STWA    arr1,sx      
         BFPO    arr1,sx 
         LDBA    '\n',i
         STBA    charOut,d  
  
         STRO    msg8,d      ;test stack-indexed deferred (-DeNorm: e.g. -32767)           
         LDWX    0,i   
         LDWA    -32767,i 
         STWA    arr1,x 
         LDWA    arr1,i 
         STWA    p2,s 
         LDWX    0,i   
         BFPO    p2,sfx 
         LDBA    '\n',i
         STBA    charOut,d  
  
         STRO    msg9,d      ;test direct (-INF: e.g.-512) 
         LDWA    -512,i 
         STWA    num1,d      
         BFPO    num1,d 
         LDBA    '\n',i
         STBA    charOut,d  
  
         STRO    msg10,d     ;test direct (+INF: e.g.32256) 
         LDWA    32256,i 
         STWA    num1,d            
         BFPO    num1,d 
         LDBA    '\n',i
         STBA    charOut,d  
  
         ADDSP   8,i         ;pop #arr2 #num2 #p2 
         STOP 
msg1:    .ASCII  "Testing i   addressing for input value 0       (Expected output:  ZERO)     : \x00" 
msg2:    .ASCII  "Testing d   addressing for input value 32768   (Expected output:  -ZERO)    : \x00" 
msg3:    .ASCII  "Testing n   addressing for input value -1      (Expected output:  NaN)      : \x00" 
msg4:    .ASCII  "Testing s   addressing for input value 32767   (Expected output:  NaN)      : \x00" 
msg5:    .ASCII  "Testing sf  addressing for input value 512     (Expected output:  Norm)     : \x00" 
msg6:    .ASCII  "Testing x   addressing for input value -32255  (Expected output:  -Norm)    : \x00" 
msg7:    .ASCII  "Testing sx  addressing for input value 1       (Expected output:  DeNorm)   : \x00" 
msg8:    .ASCII  "Testing sxf addressing for input value -32767  (Expected output:  -DeNorm)  : \x00" 
msg9:    .ASCII  "Testing d   addressing for input value -512    (Expected output:  -Inf)     : \x00" 
msg10:   .ASCII  "Testing d   addressing for input value 32256   (Expected output:  Inf)      : \x00" 
         .END 
