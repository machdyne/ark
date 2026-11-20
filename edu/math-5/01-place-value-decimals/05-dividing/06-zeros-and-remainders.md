# Zeros and remainders

```lesson
(objective "Divide when the quotient has a zero or there is a remainder, such as 4,230 ÷ 21 = 201 R 9.")
(standards "5.NBT.B.6")
(minutes 25)
```

You can divide when the quotient has a 0 or when something is left
over.

Find 4,230 ÷ 21 place by place.

1. Hundreds: 42 hundreds ÷ 21 = 2 hundreds. $21 * 200 = 4200$. Left: 30.
2. Tens: 3 tens ÷ 21. 21 does not fit in 3 tens: write **0** tens.
3. Ones: 21 fits into 30 once. $21 * 1 = 21$. Left: 9.

9 is less than 21, so you stop. The quotient is 201 and the remainder
is 9: 4,230 ÷ 21 = 201 R 9.

```figure
(define k (slider 'k 0 2 2 "Steps" 1))
(m5p1-quot 160 30 4230 21 '(200 1) k)
(label 160 165 (if (= k 2) "200 + 1 = 201, and 9 is left" "") 'body 'bold)
(label 160 195 (if (= k 2) "4,230 ÷ 21 = 201 R 9" "") 'body 'bold)
```

```check
(number
  (ask "In 4,230 ÷ 21, what is the tens digit of the quotient?")
  (answer 0)
  (true "21 * 10 > 30")
  (wrong-if 1 "After 200 groups, only 30 is left. 10 groups of 21 is 210, too much: 0 tens.")
  (hint "After taking away 4,200, how much is left?")
  (hint "Can 10 groups of 21 fit in 30?"))
```

---

## Do not skip the 0

If you leave out the 0, the 2 slides into the tens place: 21 instead of
201. That answer is 10 times too small.

An estimate catches it: 4,230 ÷ 21 is about 4,000 ÷ 20 = 200.

```check
(choice
  (ask "Max finds 6,150 ÷ 30 = 25. Is he right?")
  (right "No: the quotient is 205. He left out the 0 tens." (true "30 * 205 = 6150"))
  (wrong "Yes: 30 × 25 = 6,150." (false "30 * 25 = 6150")
    "30 × 25 = 750, not 6,150. An estimate: 6,000 ÷ 30 = 200.")
  (wrong "No: the quotient is 250." (false "30 * 250 = 6150")
    "30 × 250 = 7,500, too big. 6,150 = 6,000 + 150, which is 200 + 5 groups.")
  (hint "Estimate: 6,000 ÷ 30."))
```

---

## The remainder

Remember: the remainder is what is left when no more whole groups fit. It
must be less than the divisor.

Prove a quotient with a remainder by multiplying and adding:

$$ 21 * 201 + 9 = 4230 $$

```check
(number
  (ask "2,587 ÷ 25 = 103 R ?. What is the remainder?")
  (answer 12) (from "2587 - 25 * 103")
  (true "2587 = 25 * 103 + 12")
  (wrong-if 37 "37 is more than 25, so one more group fits. The quotient is 103 and 12 is left.")
  (hint "25 × 103 = 2,575.")
  (hint "2,587 - 2,575."))
```

---

## Worked example

```example
(example
  (problem "Divide 7,826 ÷ 39.")
  (step "Hundreds: 78 ÷ 39 = 2. 39 × 200 = 7,800. Left: 26.")
  (step "Tens: 2 tens ÷ 39 is 0 tens. Ones: 26 ÷ 39 is 0 ones.")
  (step "26 is less than 39: it is the remainder.")
  (answer "7,826 ÷ 39 = 200 R 26"))
```

```example
(example
  (problem "Divide 3,740 ÷ 18.")
  (step "Hundreds: 18 × 2 = 36, the most that fits in 37. 18 × 200 = 3,600. Left: 140.")
  (step "Tens: 14 tens ÷ 18 is 0 tens. Ones: 18 × 7 = 126, the most that fits in 140. Left: 14.")
  (step (number (ask "What is the quotient?") (answer 207) (from "(3740 - 14) ÷ 18") (true "3740 = 18 * 207 + 14")
    (wrong-if 27 "Keep the 0 tens: 2 hundreds, 0 tens, 7 ones.")))
  (answer "3,740 ÷ 18 = 207 R 14"))
```

---

## Practice

```check
(number
  (ask "Find 3,264 ÷ 32.")
  (answer 102) (from "3264 ÷ 32") (true "32 * 102 = 3264")
  (wrong-if 12 "Hundreds come first: 32 × 100 = 3,200. Then 64 is 2 groups. 100 + 2 = 102.")
  (hint "32 × 100 = 3,200."))
```

```check
(number
  (ask "1,000 ÷ 24 = 41 R ?. What is the remainder?")
  (answer 16) (from "1000 - 24 * 41")
  (true "1000 = 24 * 41 + 16")
  (wrong-if 40 "40 is more than 24: another group fits. 24 × 41 = 984, and 16 is left.")
  (hint "24 × 41 = 984."))
```

---

```check
(number
  (ask "Find 9,135 ÷ 45.")
  (answer 203) (from "9135 ÷ 45") (true "45 * 203 = 9135")
  (wrong-if 23 "45 × 200 = 9,000, so the quotient is in the hundreds. 135 is 3 more groups: 203.")
  (hint "45 × 200 = 9,000. 9,135 - 9,000 = 135."))
```

```check
(choice
  (ask "Which can be the remainder when you divide by 28?")
  (right "27" (true "27 < 28"))
  (wrong "28" (false "28 < 28")
    "If 28 is left, one more group of 28 fits. A remainder is less than the divisor.")
  (wrong "35" (false "35 < 28")
    "35 holds another 28. A remainder must be less than 28.")
  (hint "A remainder is less than the divisor."))
```

So: write a 0 for a place where the divisor does not fit, and stop when
what is left is less than the divisor.
