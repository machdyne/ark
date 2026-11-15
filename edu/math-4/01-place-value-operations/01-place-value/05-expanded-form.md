# Expanded form

```lesson
(objective "Write a number in expanded form, such as 40,306 = 40,000 + 300 + 6, and back in standard form.")
(standards "4.NBT.A.2")
(minutes 20)
(keywords "expanded form")
```

You can write a number as the sum of what its digits are worth.

A number written as a sum of the values of its digits is in
**expanded form**. Each part is one digit times its place.

52,618 = 50,000 + 2,000 + 600 + 10 + 8

Move the slider to add the parts one at a time.

```figure
(define s (slider 's 1 5 5 "Parts" 1))
(m4p1-chart 30 52618 5 (- 5 s))
(define parts '("50,000" "2,000" "600" "10" "8"))
(define (sum l i) (if (or (null? l) (>= i s)) "" (string-append (if (> i 0) " + " "") (car l) (sum (cdr l) (+ i 1)))))
(label 160 140 (sum parts 0) 'small)
(label 160 175 (string-append "= " (m4p1-num (list-ref '(50000 52000 52600 52610 52618) (- s 1)))) 'body 'bold)
```

```check
(choice
  (ask "Which is 3,472 in expanded form?")
  (right "3,000 + 400 + 70 + 2" (true "3000 + 400 + 70 + 2 = 3472"))
  (wrong "3 + 4 + 7 + 2" (false "3 + 4 + 7 + 2 = 3472")
    "That adds the digits, not their values. The 3 is in the thousands place, so it is worth 3,000.")
  (wrong "3,000 + 400 + 700 + 2" (false "3000 + 400 + 700 + 2 = 3472")
    "The 7 is in the tens place, so it is worth 70, not 700.")
  (hint "What is each digit worth in its place?"))
```

---

## Leave out the zeros

A zero is worth nothing, so expanded form leaves it out.

40,306 = 40,000 + 300 + 6

There are no thousands and no tens, so there is no part for them.

```check
(number
  (ask "Write in standard form: 70,000 + 500 + 9.")
  (answer 70509) (from "70000 + 500 + 9")
  (wrong-if 759 "The 7 is worth 70,000, so it goes in the ten thousands place. Fill the empty places with zeros.")
  (wrong-if 75009 "500 is 5 hundreds, so the 5 goes right after the comma: 70,509.")
  (hint "Which places have no part? Put a 0 in each.")
  (hint "7 ten thousands, 0 thousands, 5 hundreds, 0 tens, 9 ones."))
```

---

## Parts in any order

Adding gives the same sum in any order. So the parts can come mixed up.
Put each one in its place.

8 + 600 + 20,000 = 20,608

```check
(number
  (ask "Write in standard form: 5 + 90 + 300,000 + 4,000.")
  (answer 304095) (from "5 + 90 + 300000 + 4000")
  (wrong-if 590300 "Put each part in its place, not in the order it is written. 300,000 has the biggest place, so it comes first.")
  (wrong-if 34095 "300,000 is hundred thousands. You need a 0 for the ten thousands: 304,095.")
  (hint "Start with the biggest part: 300,000.")
  (hint "Then 4 thousands, 0 hundreds, 9 tens, 5 ones."))
```

---

## A missing part

63,215 = 60,000 + ? + 200 + 10 + 5

Which digit has no part yet? The 3, in the thousands place. So the
missing part is 3,000.

```check
(number
  (ask "Fill in: 48,526 = 40,000 + 8,000 + ? + 20 + 6")
  (answer 500) (from "48526 - 40000 - 8000 - 20 - 6")
  (wrong-if 5 "5 is the digit. In the hundreds place it is worth 500.")
  (wrong-if 5000 "The 5 is in the hundreds place, just after the comma. It is worth 500.")
  (hint "Which digit has no part yet?")
  (hint "The 5 is in the hundreds place."))
```

---

## Worked example

```example
(example
  (problem "Write 607,040 in expanded form.")
  (step "The 6 is in the hundred thousands place: 600,000.")
  (step "The 7 is in the thousands place: 7,000. The 4 is in the tens place: 40.")
  (step "The zeros have no parts.")
  (answer "607,040 = 600,000 + 7,000 + 40"))
```

```example
(example
  (problem "Write 90,000 + 800 + 3 in standard form.")
  (step "9 ten thousands, 0 thousands.")
  (step "8 hundreds, 0 tens, 3 ones.")
  (step (number (ask "What is the number?") (answer 90803) (from "90000 + 800 + 3")
    (wrong-if 983 "Each part keeps its place. 90,000 needs 5 digits, so fill the gaps with zeros.")))
  (answer "90,803"))
```

---

## Practice

```check
(choice
  (ask "Which is 25,030 in expanded form?")
  (right "20,000 + 5,000 + 30" (true "20000 + 5000 + 30 = 25030"))
  (wrong "20,000 + 5,000 + 300" (false "20000 + 5000 + 300 = 25030")
    "The 3 is in the tens place, so it is worth 30. The hundreds digit is 0.")
  (wrong "2 + 5 + 3" (false "2 + 5 + 3 = 25030")
    "That adds the digits, not their values. Each digit is worth the digit times its place.")
  (hint "The hundreds digit is 0."))
```

```check
(number
  (ask "Write in standard form: 800,000 + 60 + 1.")
  (answer 800061) (from "800000 + 60 + 1")
  (wrong-if 861 "800,000 is 8 hundred thousands. Fill the empty places with zeros: 800,061.")
  (wrong-if 806001 "60 is 6 tens, the 2nd place from the right: 800,061.")
  (hint "8 hundred thousands, then zeros, then 6 tens and 1 one."))
```

---

```check
(number
  (ask "Fill in: 91,407 = 90,000 + 1,000 + 400 + ?")
  (answer 7) (from "91407 - 90000 - 1000 - 400")
  (wrong-if 70 "The 7 is in the ones place, so it is worth 7. The tens digit is 0.")
  (wrong-if 0 "The 0 has no part. The part still missing is for the 7.")
  (hint "Which digit has no part yet?"))
```

```check
(number
  (ask "What is 300,000 + 20,000 + 9,000 + 100 in standard form?")
  (answer 329100) (from "300000 + 20000 + 9000 + 100")
  (wrong-if 32910 "300,000 has 6 digits. The answer has 6 digits too: 329,100.")
  (hint "3 hundred thousands, 2 ten thousands, 9 thousands, 1 hundred."))
```

So: expanded form adds up what each digit is worth, and zeros have no part.
