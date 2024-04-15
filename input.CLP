;; Define a rule to read input from the keyboard and assert a corresponding fact
(defrule read-input
  =>
  (printout t "Enter a value: ")
  (bind ?input (read)) ;; Read input from the keyboard
  (assert (input-fact (value ?input))) ;; Assert a fact containing the input value
)

;; Define a rule to process the input fact
(defrule process-input
  ?input-fact <- (input-fact (value ?value))
  =>
  (printout t "Input value: " ?value crlf)
)

;; Run the engine
