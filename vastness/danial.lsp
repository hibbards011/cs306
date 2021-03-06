(require 'calc.el)

    
;retrieved from: http://math.stackexchange.com/questions/1073118/find-the-leftmost-most-significant-digits-of-a-large-exponent-calculation-say


;; function we are using:
;floor(10^(exp*log(2;10)-floor(exp*log(2;10))) * 10^(numDigits-1))

;;(defun pow2digits (exp numDigits)
;;  (let ((n (* exp (log10 2)))) 
;;       (floor
;;(*
;; (expt 10 (- n (floor n)))
;; (expt 10 (- numDigits 1))))))
;;pow2digits

(defun pow2digits (exp numDigits)
  (let ((n (calc-eval "2*10^log10(2)")))
   (calc-eval "floor(10^($*log10(2) - floor($*log10(2))) * 10 ^ ($$ - 1))" nil exp numDigits)))

(defun findLowerLimit (searchNum)
  (calc-eval "floor(log($)/log(2))" nil searchNum))


(defun search (searchNum)
  (let ((numDigits (length searchNum))
	(lowerBound (findLowerLimit searchNum)))
    (pow2digits lowerBound numDigits)))


(pow2digits 99999999 27)

(calc-precision 150)

(calc-eval "10^($*log10(2) - floor($*log10(2))) * 10 ^ ($$ - 1)" nil 1000 100)

;;;;;;;;;;;;;;;;;;;;;;
;;INFO DUMP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.
; big numbers library
(require 'calc)
calc




    
;retrieved from: http://math.stackexchange.com/questions/1073118/find-the-leftmost-most-significant-digits-of-a-large-exponent-calculation-say


;; function we are using:
;floor(10^(exp*log(2;10)-floor(exp*log(2;10))) * 10^(numDigits-1))
;;(defun pow2digits (exp numDigits)
;;  (let ((n (* exp (log10 2)))) 
;;       (floor
;;(*
;; (expt 10 (- n (floor n)))
;; (expt 10 (- numDigits 1))))))
;;pow2digits

(calc-eval "10^($*log10(2) - floor($*log10(2))) * 10 ^ ($$ - 1)" nil 1000 40)

(defun pow2digits (exp numDigits)
  (let ((n (calc-eval "$*log10(2)" nil exp)))
   (calc-eval "ceil(10^($ - floor($)) * 10 ^ ($$ - 1))" nil n numDigits)))

pow2digits

(pow2digits "7" "3")
"128"


(defun findLowerLimit (searchNum)
  (calc-eval "floor(log($)/log(2))" nil searchNum))
findLowerLimit

(findLowerLimit 51)

(defun search (searchNum)
  (let ((numDigits (length searchNum))
	(lowerBound (findLowerLimit searchNum)))
    (pow2digits lowerBound numDigits)))

(search "1023")
"5120"

(length "127")
3
(findLowerLimit "127")
"6"

(search "255")
"128"


(defun findNumDigits (searchNum)
  (calc-eval "ceil(log10($))" nil searchNum))
findNumDigits

;; (defun findNumDigitsString (searchNum)
;;   (length searchNum))
;; findNumDigitsString

;; (findNumDigitsString "323")



(findNumDigits 511234)




(calc-precision 200)

(calc-eval "10^($*log10(2) - floor($*log10(2))) * 10 ^ ($$ - 1)" nil 1000 40)