# Round to the nearest hundred

```lesson
(objective "Round a whole number to the nearest 100 using a number line.")
(standards "3.NBT.A.1")
(minutes 20)
```

You can round bigger numbers to the nearest hundred, the same way.

Look at 320. It is between 300 and 400. It is 20 away from 300 and 80
away from 400. So 320 rounds to 300.

```figure
(number-line 30 290 110 300 400 10 100)
(nl-mark 320 'ink "320")
(arrow (nl-x 320) 140 (nl-x 300) 140 'ink 1.5)
(label 160 180 "320 is closer to 300." 'body)
```

```check
(number
  (ask "Round 380 to the nearest hundred.")
  (answer 400)
  (wrong-if 300 "380 is 80 away from 300 and only 20 away from 400. 400 is closer.")
  (wrong-if 380 "380 is a multiple of 10, but not of 100. Which hundred is it closer to?")
  (hint "Is 380 closer to 300 or 400?"))
```

---

## Find the 2 hundreds

The hundreds digit gives the hundred below. Add 100 to get the hundred
above. 562 is between 500 and 600.

Then look at the tens digit. If it is 0 to 4, the number is closer to
the hundred below. If it is 6 to 9, it is closer to the hundred above.

```figure
(define v (slider 'v 100 999 562 "Number" 1))
(define lo (* 100 (floor (/ v 100))))
(define d (- v lo))
(define r (if (< d 50) lo (+ lo 100)))
(number-line 30 290 110 lo (+ lo 100) 10 100)
(nl-mark v 'ink (fmt v 0))
(if (> d 0) (arrow (nl-x v) 140 (nl-x r) 140 'ink 1.5))
(label 160 180 (if (= d 50) (string-append (fmt v 0) " is halfway. Lesson 3 shows how.")
  (string-append (fmt v 0) " rounds to " (fmt r 0) ".")) 'body)
```

```check
(number
  (ask "Round 562 to the nearest hundred.")
  (answer 600)
  (wrong-if 500 "562 is 62 away from 500 and only 38 away from 600. 600 is closer.")
  (wrong-if 560 "560 is 562 rounded to the nearest ten. To the nearest hundred, pick 500 or 600.")
  (hint "Look at the tens digit, 6."))
```

---

## Hundred or ten?

Read the question with care. 247 rounds to 250 to the nearest ten. It
rounds to 200 to the nearest hundred.

```check
(choice
  (ask "Round 718 to the nearest hundred.")
  (right "700")
  (wrong "720"
    "720 is the nearest ten. The nearest hundred is 700 or 800.")
  (wrong "800"
    "718 is only 18 more than 700. It is 82 away from 800.")
  (hint "Which hundreds is 718 between?"))
```

---

## Worked example

```example
(example
  (problem "Round 449 to the nearest hundred.")
  (step "449 is between 400 and 500.")
  (step "The tens digit is 4, so 449 is less than halfway, 450.")
  (step "400 is closer.")
  (answer "449 rounds to 400."))
```

```example
(example
  (problem "Round 873 to the nearest hundred.")
  (step "873 is between 800 and 900.")
  (step "The tens digit is 7, so it is past halfway, 850.")
  (step (number (ask "What is 873 rounded to the nearest hundred?") (answer 900)
    (wrong-if 800 "873 is 73 away from 800 and only 27 away from 900.")))
  (answer "873 rounds to 900."))
```

---

## Practice

```check
(number
  (ask "Round 230 to the nearest hundred.")
  (answer 200)
  (wrong-if 300 "230 is 30 away from 200 and 70 away from 300.")
  (hint "The tens digit is 3."))
```

```check
(number
  (ask "Round 961 to the nearest hundred.")
  (answer 1000)
  (wrong-if 900 "961 is 61 away from 900 and 39 away from 1000. 1000 is closer.")
  (wrong-if 960 "960 is the nearest ten. The nearest hundred is 900 or 1000.")
  (hint "The hundred after 900 is 1000."))
```

---

```check
(number
  (ask "Round 85 to the nearest hundred.")
  (answer 100)
  (wrong-if 0 "85 is 85 away from 0 and only 15 away from 100.")
  (wrong-if 90 "90 is the nearest ten. The nearest hundred is 0 or 100.")
  (hint "85 is between 0 and 100."))
```

So: to round to the nearest hundred, find the 2 hundreds around the number and pick the closer one.
