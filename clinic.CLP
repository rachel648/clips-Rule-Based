CLIPS> (defrule Name
=>
(printout t "Please Enter your Name:" crlf)
(assert (Name(readline))))
CLIPS> (defrule Question
=>
(printout t "Are you feeling cough(yes/no) :" crlf)
(assert(symptom(read))))
(assert(symptom(read))))
CLIPS> (defrule yes
?ver<-(symptom ?sm&cough|sneezing|fever)
(Name ?nam)
=>
(retract ?ver)
(printout t "Dear " ?nam " You Suffer in Asthma " crlf))