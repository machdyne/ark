# Dividing by powers of ten

```lesson
(objective "Divide a whole number that ends in zeros by 10, 100 or 1,000, such as 52,000 ÷ 1,000 = 52, and explain how each digit moves to a place to the right.")
(standards "5.NBT.A.2" "5.NBT.A.1")
(minutes 25)
```

You can divide a number that ends in zeros by 10, 100 or 1,000.

Dividing by 10 gives 1/10 of the number. Each digit moves one place to
the right. 5 thousands become 5 hundreds, 2 hundreds become 2 tens.

$$ 5200 ÷ 10 = 520 $$

```figure
(define p (slider 'p 1 3 3 "Places right" 1))
(m5p1-shift 20 130 52000 (- p) 5 0 0 0)
(label 160 222 (string-append "52,000 ÷ " (m5p1-num (expt 10 p)) " = " (m5p1-num (/ 52000 (expt 10 p)))) 'body 'bold)
```

```check
(number
  (ask "What is 3,600 ÷ 10?")
  (answer 360) (from "3600 ÷ 10") (true "360 * 10 = 3600")
  (wrong-if 36000 "That is 3,600 × 10. Dividing makes the number smaller: each digit moves one place right.")
  (wrong-if 36 "That divides by 100, two places. Dividing by 10 moves each digit only one place: 360.")
  (hint "The 3 thousands become 3 hundreds.")
  (hint "The 6 hundreds become 6 tens."))
```

---

## Two and three places

Dividing by 100 moves each digit 2 places right. Dividing by 1,000
moves each digit 3 places right.

$$ 52000 ÷ 1000 = 52 $$

The 5 goes from ten thousands to tens. The 2 goes from thousands to
ones. The 3 zeros at the end are no longer needed.

```check
(number
  (ask "What is 47,000 ÷ 1,000?")
  (answer 47) (from "47000 ÷ 1000") (true "47 * 1000 = 47000")
  (wrong-if 470 "That divides by 100, two places. 1,000 moves each digit 3 places: the 7 goes from thousands to ones.")
  (wrong-if 47000000 "That multiplies by 1,000. Dividing moves digits to the right, so the number gets smaller.")
  (hint "1,000 has 3 zeros, so each digit moves 3 places right.")
  (hint "The 7 is in the thousands place. 3 places right is the ones."))
```

---

## Check with multiplying

Multiplying and dividing are inverse operations. So check a quotient by
multiplying back.

$52 * 1000 = 52000$, so $52000 ÷ 1000 = 52$ is right.

```check
(choice
  (ask "Kai says 80,000 ÷ 100 = 80. Is he right?")
  (right "No: 800 × 100 = 80,000, so the answer is 800." (true "80000 ÷ 100 = 800"))
  (wrong "Yes: 80 × 100 = 80,000." (false "80 * 100 = 80000")
    "80 × 100 is only 8,000. Dividing by 100 moves the 8 two places right: from ten thousands to hundreds.")
  (wrong "No: the answer is 8." (false "80000 ÷ 100 = 8")
    "8 × 100 is 800. Dividing by 100 takes away only 2 zeros.")
  (hint "Multiply his answer by 100. Do you get 80,000?"))
```

---

## Worked example

```example
(example
  (problem "Find 90,000 ÷ 100.")
  (step "Dividing by 100 moves each digit 2 places right.")
  (step "The 9 goes from ten thousands to hundreds: 900.")
  (step "Check: 900 × 100 = 90,000.")
  (answer "90,000 ÷ 100 = 900"))
```

```example
(example
  (problem "Find 640,000 ÷ 1,000.")
  (step "Dividing by 1,000 moves each digit 3 places right.")
  (step "The 6 goes from hundred thousands to hundreds.")
  (step (number (ask "So 640,000 ÷ 1,000 = ?") (answer 640) (from "640000 ÷ 1000") (true "640 * 1000 = 640000")
    (wrong-if 64 "That moves the digits 4 places. 1,000 is 3 places: 640.")))
  (answer "640,000 ÷ 1,000 = 640"))
```

---

## Practice

```check
(number
  (ask "What is 7,000 ÷ 100?")
  (answer 70) (from "7000 ÷ 100") (true "70 * 100 = 7000")
  (wrong-if 700 "That divides by 10. 100 moves the 7 two places: from thousands to tens.")
  (wrong-if 7 "That divides by 1,000. 100 moves the 7 only 2 places.")
  (hint "Check: what times 100 is 7,000?"))
```

```check
(number
  (ask "What is 250,000 ÷ 10?")
  (answer 25000) (from "250000 ÷ 10") (true "25000 * 10 = 250000")
  (wrong-if 2500 "That divides by 100. 10 moves each digit only one place.")
  (hint "Each digit moves one place right."))
```

---

```check
(number
  (ask "Fill in the missing number: 38,000 ÷ ? = 38")
  (answer 1000) (from "38000 ÷ 38") (true "38 * 1000 = 38000")
  (wrong-if 3 "38,000 has 3 zeros at the end, but you divide by a number: 1,000.")
  (wrong-if 100 "38,000 ÷ 100 is 380. The digits moved 3 places: 1,000.")
  (hint "How many places did the 8 move?"))
```

```check
(choice
  (ask "When you divide 6,000 by 10, what happens to the 6?")
  (right "It moves from the thousands to the hundreds." (true "6000 ÷ 10 = 600"))
  (wrong "It moves from the thousands to the ten thousands." (false "6000 ÷ 10 = 60000")
    "Moving left makes it worth more. Dividing makes it worth less: it moves right.")
  (wrong "It stays where it is, and a 0 is crossed out." (false "6000 ÷ 10 = 6000")
    "Crossing out a 0 is a shortcut you can see. What really happens is that each digit moves one place right.")
  (hint "Is 6,000 ÷ 10 bigger or smaller than 6,000?"))
```

So: dividing by 10, 100 or 1,000 moves each digit 1, 2 or 3 places to
the right.
