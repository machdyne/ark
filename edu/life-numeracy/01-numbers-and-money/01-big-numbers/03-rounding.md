# Rounding

```lesson
(objective "Round a whole number to the nearest 10, 100 or 1000.")
(minutes 20)
(keywords "round (a number)")
```

When an exact number is more detail than you need, you round it to a
simpler number close to it.

To **round** a number is to replace it with the nearest number that
ends in zeros: the nearest 10, 100 or 1000. A rent of 1,180 dollars is
"about 1,200 dollars" when rounded to the nearest 100.

On the number line, 1180 sits between 1100 and 1200, and it is closer
to 1200.

```figure
(define n (slider 'n 1100 1200 1180 "Number" 5))
(define r (* 100 (floor (+ (/ n 100) 0.5))))
(number-line 30 290 120 1100 1200 10 50)
(nl-mark n 'warm (fmt n 0))
(nl-mark r 'ink)
(text 160 190 (string-append "To the nearest 100: " (fmt r 0)) 'centre 'body 'bold)
(caption "Halfway, 1150, rounds up.")
```

```check
(choice
  (ask "Round 1130 to the nearest 100.")
  (right "1100")
  (wrong "1200" "1130 is only 30 past 1100 but 70 short of 1200, so 1100 is nearer. Rounding goes to the nearer one, not always up.")
  (wrong "1000" "1000 is the nearest thousand. The nearest hundreds on each side of 1130 are 1100 and 1200.")
  (hint "Set the slider to 1130. Which end is nearer?"))
```

---

## The rule: look at the next digit

You do not need a number line. To round to a place, look at the digit
just to the right of it:

- 0, 1, 2, 3 or 4: round down. The place stays; zeros follow.
- 5, 6, 7, 8 or 9: round up. The place goes up by 1; zeros follow.

A number exactly halfway, like 1150, rounds up by this rule.

```check
(number
  (ask "Round 4,762 to the nearest 1000. Type the answer without a comma.")
  (answer 5000)
  (wrong-if 4000 "Look at the digit after the thousands: it is 7, which is 5 or more. So round up to 5000.")
  (wrong-if 4800 "4800 is the nearest 100. The nearest 1000 has zeros in the hundreds, tens and ones.")
  (hint "The thousands digit is 4. What is the digit just after it?"))
```

---

## When the place goes up from 9

Rounding 3,960 to the nearest 100: the hundreds digit is 9, and the
next digit is 6, so round up. 9 hundreds plus 1 hundred is 10
hundreds, which is a thousand. So the answer is 4,000.

```example
(example
  (problem "Round 2,975 to the nearest 10.")
  (step "The tens digit is 7. The next digit is 5, so round up.")
  (step "7 tens + 1 ten = 8 tens.")
  (answer "2,980"))
```

```example
(example
  (problem "Round 6,951 to the nearest 100.")
  (step "The hundreds digit is 9. The next digit is 5, so round up.")
  (step (number (ask "What is 6,951 to the nearest 100? Type it without a comma.") (answer 7000)
    (wrong-if 6900 "The next digit is 5, so round up, not down.")
    (wrong-if 6000 "The 9 hundreds do not just become 0. 9 hundreds and 1 more is 10 hundreds, a whole thousand, which carries into the thousands: 6 thousand becomes 7 thousand.")))
  (answer "7,000"))
```

---

## Practice

```check
(number
  (ask "Round 384 to the nearest 10.")
  (answer 380)
  (wrong-if 390 "The digit after the tens is 4, which is less than 5, so round down to 380.")
  (wrong-if 400 "400 is the nearest 100. The nearest 10 keeps the tens: 380 or 390.")
  (hint "The tens digit is 8. Look at the ones digit."))
```

```check
(number
  (ask "A crowd of 18,450 people. Round it to the nearest 1000. Type it without a comma.")
  (answer 18000)
  (wrong-if 19000 "The digit after the thousands is 4 (the hundreds), so round down. The 5 further right does not count.")
  (wrong-if 18500 "18500 is 18,450 to the nearest 100. The nearest 1000 ends in three zeros.")
  (hint "The thousands digit is 8. Look only at the digit right after it."))
```

```check
(choice
  (ask "A flight costs 1,250 dollars. Rounded to the nearest 100, what is it?")
  (right "1,300 dollars")
  (wrong "1,200 dollars" "The digit after the hundreds is 5. By the rule, 5 rounds up, so 1,250 becomes 1,300.")
  (wrong "1,000 dollars" "That is the nearest 1000. To the nearest 100, look at the tens digit, 5, and round up.")
  (hint "The hundreds digit is 2. The next digit is 5."))
```

To round, look at the digit just after the place you want: 5 or more
rounds up, 4 or less rounds down.
