# Round to the nearest ten

```lesson
(objective "Round a whole number to the nearest 10 using a number line.")
(standards "3.NBT.A.1")
(minutes 20)
(keywords "round (a number)")
```

You can swap a number for the closest ten, to make it easy to work with.

Look at 43 on the number line. It is between 40 and 50. It is 3 away
from 40 and 7 away from 50. So 40 is the nearest ten.

To **round** a number to the nearest ten is to find the ten it is
closest to. 43 rounds to 40.

```figure
(number-line 30 290 110 40 50 1 10)
(nl-mark 43 'ink "43")
(arrow (nl-x 43) 140 (nl-x 40) 140 'ink 1.5)
(label 160 180 "43 is closer to 40." 'body)
```

```check
(number
  (ask "Round 48 to the nearest ten.")
  (answer 50)
  (wrong-if 40 "40 is the ten below 48. But 48 is only 2 away from 50 and 8 away from 40. 50 is nearer.")
  (wrong-if 48 "Rounding changes 48 to a ten. Which ten, 40 or 50, is closer to 48?")
  (hint "Is 48 closer to 40 or to 50?"))
```

---

## Find the 2 tens

To round, first find the 2 tens on each side of the number.

- 67 is between 60 and 70.
- 21 is between 20 and 30.
- 85 is between 80 and 90.

In a 2-digit number, the tens digit gives the ten below. Add 10 to
get the ten above.

```check
(choice
  (ask "Which 2 tens is 74 between?")
  (right "70 and 80")
  (wrong "60 and 70"
    "74 is more than 70. It has 7 tens, so it is between 70 and 80.")
  (wrong "74 and 84"
    "Tens end in 0. 74 has 7 tens: it is between 70 and 80.")
  (hint "74 has 7 tens. What is 1 more ten?"))
```

---

## Which ten is closer?

Move the slider. The arrow points to the nearest ten.

```figure
(define v (slider 'v 10 99 62 "Number" 1))
(define lo (* 10 (floor (/ v 10))))
(define d (- v lo))
(define r (if (< d 5) lo (+ lo 10)))
(number-line 30 290 110 lo (+ lo 10) 1 10)
(nl-mark v 'ink (fmt v 0))
(if (> d 0) (arrow (nl-x v) 140 (nl-x r) 140 'ink 1.5))
(label 160 180 (if (= d 5) (string-append (fmt v 0) " is halfway. Lesson 3 shows how.")
  (string-append (fmt v 0) " rounds to " (fmt r 0) ".")) 'body)
```

If the ones digit is 1, 2, 3 or 4, the number is closer to the ten
below. If it is 6, 7, 8 or 9, it is closer to the ten above.

```check
(number
  (ask "Round 62 to the nearest ten.")
  (answer 60)
  (wrong-if 70 "70 is 8 away from 62, but 60 is only 2 away. 62 is closer to 60.")
  (hint "The ones digit is 2."))
```

---

## Worked example

```example
(example
  (problem "Round 37 to the nearest ten.")
  (step "37 is between 30 and 40.")
  (step "37 is 7 away from 30 and 3 away from 40.")
  (step "40 is closer.")
  (answer "37 rounds to 40."))
```

```example
(example
  (problem "Round 81 to the nearest ten.")
  (step "81 is between 80 and 90.")
  (step "81 is 1 away from 80 and 9 away from 90.")
  (step (number (ask "What is 81 rounded to the nearest ten?") (answer 80)
    (wrong-if 90 "90 is 9 away from 81, but 80 is only 1 away.")))
  (answer "81 rounds to 80."))
```

---

## Practice

```check
(number
  (ask "Round 26 to the nearest ten.")
  (answer 30)
  (wrong-if 20 "26 is 6 away from 20 and 4 away from 30. 30 is nearer.")
  (hint "Is 26 closer to 20 or 30?"))
```

```check
(number
  (ask "Round 93 to the nearest ten.")
  (answer 90)
  (wrong-if 100 "100 is 7 away from 93, but 90 is only 3 away.")
  (hint "93 is between 90 and 100."))
```

---

```check
(number
  (ask "Round 158 to the nearest ten.")
  (answer 160)
  (wrong-if 150 "158 is 8 away from 150 and 2 away from 160. 160 is nearer.")
  (wrong-if 200 "That rounds to the nearest hundred. The nearest ten to 158 is 150 or 160.")
  (hint "158 is between 150 and 160."))
```

```check
(choice (several)
  (ask "Which numbers round to 50? Choose all.")
  (right "52")
  (right "47")
  (wrong "57"
    "57 is between 50 and 60, and 3 away from 60. It rounds to 60.")
  (wrong "41"
    "41 is 1 away from 40 and 9 away from 50. It rounds to 40.")
  (hint "Find the numbers closer to 50 than to any other ten."))
```

So: to round to the nearest ten, find the 2 tens around the number and pick the closer one.
