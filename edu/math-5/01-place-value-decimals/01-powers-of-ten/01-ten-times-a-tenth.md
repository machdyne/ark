# Ten times, and a tenth

```lesson
(objective "Explain that a digit in one place is worth 10 times what it is worth in the place to its right and 1/10 of what it is worth in the place to its left, such as 700 = 10 x 70 and 70 is 1/10 of 700.")
(standards "5.NBT.A.1")
(minutes 20)
```

You can explain what a digit is worth when it moves one place.

Put a 7 in the tens place: it is worth 70. Move it one place left, to
the hundreds: it is worth 700.

$$ 700 = 10 * 70 $$

Each place is worth 10 times the place to its right.

```figure
(define k (slider 'k 0 5 2 "Move the 7" 1))
(define v (* 7 (expt 10 k)))
(m5p1-chart 30 v 5 0 0 k)
(label 160 140 (string-append "the 7 is worth " (m5p1-num v)) 'body 'bold)
(if (> k 0) (label 160 168 (string-append (m5p1-num v) " = 10 × " (m5p1-num (/ v 10))) 'body))
(caption "Move the 7 with the slider")
```

```check
(number
  (ask "A 4 is in the hundreds place. It moves one place to the left. What is it worth now?")
  (answer 4000) (from "10 * 400")
  (wrong-if 40 "40 is one place to the right. One place to the left is 10 times as much: 10 × 400.")
  (wrong-if 40000 "That is 2 places to the left. One place is 10 times: 4,000.")
  (hint "In the hundreds place, the 4 is worth 400.")
  (hint "One place left is 10 times as much: 10 × 400."))
```

---

## A tenth of the place to the left

Now go the other way. Move the 7 from the hundreds to the tens. It is
worth 70, which is 1/10 of 700.

$$ 70 = (1/10) * 700 $$

1/10 of a number is one of 10 equal parts of it. 700 cut into 10 equal
parts gives parts of 70. So you can also write $700 ÷ 10 = 70$.

```check
(number
  (ask "A 3 is worth 3,000. It moves one place to the right. What is it worth now?")
  (answer 300) (from "(1/10) * 3000") (true "3000 ÷ 10 = 300")
  (wrong-if 30000 "That is one place to the left. To the right, a digit is worth 1/10 as much.")
  (wrong-if 30 "That is 2 places to the right. One place is 1/10: 3,000 ÷ 10 = 300.")
  (hint "One place to the right is worth 1/10 as much.")
  (hint "Find 3,000 ÷ 10."))
```

---

## Both at once

The two rules say the same thing from two sides.

- 700 is 10 times 70.
- 70 is 1/10 of 700.

```check
(choice
  (ask "Which sentence is true about the two 6s in 660?")
  (right "The first 6 is worth 10 times the second 6." (true "600 = 10 * 60"))
  (wrong "The two 6s are worth the same." (false "600 = 60")
    "The same digit is worth more in a place further left. The first 6 is worth 600, the second 60.")
  (wrong "The first 6 is worth 1/10 of the second 6." (false "600 = (1/10) * 60")
    "That has it the wrong way round. The second 6 is 1/10 of the first: 60 is 1/10 of 600.")
  (hint "What is each 6 worth?")
  (hint "600 and 60."))
```

---

## Two places apart

Two places to the left is 10 times, then 10 times again: 100 times.
Two places to the right is 1/10 of 1/10: 1/100.

In 5,050, the first 5 is worth 5,000 and the second 5 is worth 50.

$$ 5000 = 100 * 50 $$

```check
(number
  (ask "In 8,080, the first 8 is worth how many times as much as the second 8?")
  (answer 100) (from "8000 ÷ 80")
  (wrong-if 10 "The two 8s are 2 places apart: thousands and tens. That is 10 times, then 10 times again.")
  (wrong-if 7920 "7,920 is 8,000 - 80, how much more. Ask how many times: 8,000 = ? × 80.")
  (hint "The first 8 is worth 8,000. The second is worth 80.")
  (hint "10 × 10 = 100."))
```

---

## Worked example

```example
(example
  (problem "In 44,000, compare the two 4s.")
  (step "The first 4 is in the ten thousands place: it is worth 40,000.")
  (step "The second 4 is in the thousands place: it is worth 4,000.")
  (step "They are 1 place apart. 40,000 = 10 × 4,000, and 4,000 is 1/10 of 40,000.")
  (answer "The first 4 is worth 10 times the second."))
```

```example
(example
  (problem "What is 1/10 of 90,000?")
  (step "The 9 is in the ten thousands place.")
  (step "1/10 moves it one place to the right, to the thousands.")
  (step (number (ask "So what is 1/10 of 90,000?") (answer 9000) (from "90000 ÷ 10") (true "10 * 9000 = 90000")
    (wrong-if 900 "That moves the 9 two places right. 1/10 is one place: 9,000.")))
  (answer "1/10 of 90,000 is 9,000."))
```

---

## Practice

```check
(number
  (ask "Fill in the missing number: 10 × 600 = ?")
  (answer 6000) (from "10 * 600")
  (wrong-if 600 "10 times moves the 6 one place left: from hundreds to thousands.")
  (wrong-if 60 "60 is 1/10 of 600. 10 times is one place to the left: 6,000.")
  (hint "10 times moves each digit one place left."))
```

```check
(number
  (ask "What is 1/10 of 2,500?")
  (answer 250) (from "(1/10) * 2500") (true "10 * 250 = 2500")
  (wrong-if 25000 "That is 10 times 2,500. 1/10 is smaller: each digit moves one place right.")
  (wrong-if 25 "That is 1/100 of 2,500, two places right. 1/10 is one place: 250.")
  (hint "Move each digit one place to the right.")
  (hint "The 2 goes from thousands to hundreds, the 5 from hundreds to tens."))
```

---

```check
(choice
  (ask "In 3,333, what is the 3 in the tens place worth, compared with the 3 in the hundreds place?")
  (right "1/10 as much" (true "30 = (1/10) * 300"))
  (wrong "10 times as much" (false "30 = 10 * 300")
    "The tens place is to the right of the hundreds. A place to the right is worth less: 30 is 1/10 of 300.")
  (wrong "The same, since both are 3s" (false "30 = 300")
    "The digit is the same, but its place is not. 30 and 300 are different values.")
  (hint "What is each 3 worth?"))
```

```check
(number
  (ask "A digit is worth 60,000. What is the same digit worth one place to the right?")
  (answer 6000) (from "60000 ÷ 10") (true "10 * 6000 = 60000")
  (wrong-if 600000 "600,000 is one place to the left. One place to the right is 1/10 as much.")
  (wrong-if 600 "That is 2 places to the right. One place right is 6,000.")
  (hint "Find 1/10 of 60,000."))
```

So: one place left is 10 times as much, and one place right is 1/10 as
much.
