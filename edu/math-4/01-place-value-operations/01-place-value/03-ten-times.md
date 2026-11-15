# Ten times as much

```lesson
(objective "Explain that a digit in one place is worth 10 times what it is worth in the place to its right, such as 700 = 10 x 70.")
(standards "4.NBT.A.1")
(minutes 20)
```

You can explain why each place is worth 10 times the place to its right.

10 ones make 1 ten. 10 tens make 1 hundred. 10 hundreds make 1
thousand. Each block is 10 of the block before it.

```figure
(rect 30 98 6 6 'good) (frame 30 98 6 6 'ink 1)
(base-ten 80 74 0 1 0)
(base-ten 130 74 1 0 0)
(for-range 0 10 (lambda (i)
  (rect (+ 210 (* 2 i)) (- 74 (* 2 i)) 30 30 'warm)
  (frame (+ 210 (* 2 i)) (- 74 (* 2 i)) 30 30 'ink 1)))
(label 33 130 "1" 'body)
(label 82 130 "10" 'body)
(label 145 130 "100" 'body)
(label 235 130 "1,000" 'body)
(label 58 160 "× 10" 'small)
(label 112 160 "× 10" 'small)
(label 182 160 "× 10" 'small)
(caption "one, ten, hundred, thousand")
```

```check
(number
  (ask "How many hundreds make 1 thousand?")
  (answer 10) (from "1000 / 100")
  (wrong-if 100 "100 hundreds is 10,000. It takes 10 hundreds to make 1,000.")
  (wrong-if 1000 "1,000 is the value of a thousand. Count the hundreds flats in it: 10.")
  (hint "Look at the thousand: it is a stack of hundreds.")
  (hint "Count the flats in the stack."))
```

---

## Move a digit left

Put a 7 in the ones place. It is worth 7. Move it one place left, and
it is worth 70. One more place, and it is worth 700.

Each move to the left makes the digit worth 10 times as much.

```figure
(define k (slider 'k 0 5 2 "Move the 7" 1))
(define v (* 7 (expt 10 k)))
(m4p1-chart 40 v 6 k)
(label 160 150 (string-append "7 " (list-ref '("ones" "tens" "hundreds" "thousands" "ten thousands" "hundred thousands") k)) 'body)
(label 160 178 (string-append "is worth " (m4p1-num v)) 'body 'bold)
(if (> k 0) (label 160 206 (string-append "= 10 × " (m4p1-num (/ v 10))) 'body))
```

```check
(number
  (ask "In 770, the first 7 is worth 700. The second 7 is worth 70. How many times as much is the first 7 worth?")
  (answer 10) (from "700 / 70")
  (wrong-if 630 "630 is 700 - 70, how much more. The question asks how many times as much: 10 × 70 = 700.")
  (wrong-if 100 "The 2 sevens are next to each other, only 1 place apart. One place is 10 times.")
  (hint "What times 70 gives 700?"))
```

---

## 10 times the place to the right

Look at 700 and 70. The 7 in 700 is one place left of the 7 in 70.

$$ 700 = 10 * 70 $$

This is true for every digit and every place. A digit is worth 10 times
what it would be worth one place to its right.

```check
(number
  (ask "Fill in the missing number: 4,000 = 10 × ?")
  (answer 400) (from "4000 / 10") (true "10 * 400 = 4000")
  (wrong-if 40 "10 × 40 is only 400. The 4 needs to move just one place right: from thousands to hundreds.")
  (wrong-if 40000 "That moves the 4 left, to the ten thousands. The missing number is one place to the right.")
  (hint "The 4 in 4,000 is in the thousands place.")
  (hint "Move it one place right: the hundreds."))
```

---

## Two places apart

Two places left is 10 times, and then 10 times again. That is 100
times as much.

In 2,020, the first 2 is worth 2,000 and the second is worth 20.

$$ 2000 = 100 * 20 $$

```check
(number
  (ask "In 3,030, the first 3 is worth how many times as much as the second 3?")
  (answer 100) (from "3000 / 30")
  (wrong-if 10 "The 2 threes are 2 places apart: thousands and tens. That is 10 times, then 10 times again.")
  (wrong-if 2970 "2,970 is 3,000 - 30, how much more. Ask how many times: 3,000 = ? × 30.")
  (hint "The first 3 is worth 3,000. The second is worth 30.")
  (hint "10 × 10 = 100."))
```

---

## Worked example

```example
(example
  (problem "In 55,000, compare the two 5s.")
  (step "The first 5 is in the ten thousands place: 50,000.")
  (step "The second 5 is in the thousands place: 5,000.")
  (step "They are 1 place apart, so 50,000 = 10 × 5,000.")
  (answer "The first 5 is worth 10 times as much as the second."))
```

```example
(example
  (problem "Fill in: 60,000 = 10 × ?")
  (step "The 6 in 60,000 is in the ten thousands place.")
  (step "Move it one place right, to the thousands.")
  (step (number (ask "So what is the missing number?") (answer 6000) (from "60000 / 10") (true "10 * 6000 = 60000")
    (wrong-if 600 "10 × 600 is only 6,000. Move the 6 just one place right: 6,000.")))
  (answer "60,000 = 10 × 6,000"))
```

---

## Practice

```check
(number
  (ask "In 880, how many times as much is the first 8 worth as the second?")
  (answer 10) (from "800 / 80")
  (wrong-if 720 "720 is 800 - 80, how much more. How many times: 800 = ? × 80.")
  (hint "The first 8 is worth 800. The second is worth 80."))
```

```check
(number
  (ask "Fill in the missing number: 10 × 900 = ?")
  (answer 9000) (from "10 * 900")
  (wrong-if 900 "10 × 900 moves the 9 one place left: from hundreds to thousands.")
  (wrong-if 90000 "That moves the 9 two places left. 10 times is only one place: 9,000.")
  (hint "10 times moves each digit one place left."))
```

---

```check
(choice
  (ask "Which is true?")
  (right "The 2 in 200 is worth 10 times the 2 in 20." (true "200 = 10 * 20"))
  (wrong "The 2 in 200 is worth 2 times the 2 in 20." (false "200 = 2 * 20")
    "2 × 20 is only 40. The 2 moved one place left, so it is worth 10 times as much.")
  (wrong "The 2 in 200 is worth 100 times the 2 in 20." (false "200 = 100 * 20")
    "100 × 20 is 2,000. The 2s are only 1 place apart: 10 times.")
  (hint "200 and 20: how many places apart are the 2s?"))
```

```check
(number
  (ask "A digit is worth 50,000. What is the same digit worth one place to the right?")
  (answer 5000) (from "50000 / 10") (true "10 * 5000 = 50000")
  (wrong-if 500000 "500,000 is one place to the left. One place to the right, the digit is worth 5,000, since 10 × 5,000 = 50,000.")
  (wrong-if 500 "That is 2 places to the right. One place right is 5,000.")
  (hint "50,000 = 10 × ?"))
```

So: a digit moved one place left is worth 10 times as much.
