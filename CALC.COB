IDENTIFICATION DIVISION.
       PROGRAM-ID. CALC.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1          PIC 9(5)V99.
       01 NUM2          PIC 9(5)V99.
       01 RESULT        PIC 9(5)V99.
       01 OPERATOR      PIC X.
       01 REM          PIC 9(5)V99.
       
       PROCEDURE DIVISION.
       MAIN-LOGIC SECTION.
           DISPLAY "Enter first number: "
           ACCEPT NUM1
           DISPLAY "Enter operator (+, -, *, /): "
           ACCEPT OPERATOR
           DISPLAY "Enter second number: "
           ACCEPT NUM2
           
           EVALUATE OPERATOR
               WHEN "+"
                   ADD NUM1 TO NUM2 GIVING RESULT
               WHEN "-"
                   SUBTRACT NUM2 FROM NUM1 GIVING RESULT
               WHEN "*"
                   MULTIPLY NUM1 BY NUM2 GIVING RESULT
               WHEN "/"
                   DIVIDE NUM1 BY NUM2 GIVING RESULT
           END-EVALUATE
           
           COMPUTE REM = RESULT - (RESULT / 2 * 2)
           IF REM = 0
               DISPLAY "Result: " RESULT " (EVEN)"
           ELSE
               DISPLAY "Result: " RESULT " (ODD)"
           END-IF
           
           STOP RUN.