; Brett J. Mitchell
; Advanced Programming Languages - Project 1
; 27 September 2023


; Creating a non-tail recursive function named sumList that passes in the
; parameter L1. The function will sum a list, even if
; the numbers are in a sublist
(define (sumList L1)
  (if (null? L1) ; base case: return 0 if list is empty
      0
      (if (number? (car L1)) ; checks if element is a number (#t/#f)
          (+ (car L1) (sumList (cdr L1))) ; if true, add element to L1 and make a recursive call back to sumList
          (+ (sumList (car L1)) (sumList (cdr L1)))))) ; if false, add sublist to L1 and make a recursive call back to sumList

(display (sumList '((1 5) 3 (2 4 7) ((2 1) 1)))) ; display line for the function call sumList that is passing the list to the function
(newline) ; printing a newline