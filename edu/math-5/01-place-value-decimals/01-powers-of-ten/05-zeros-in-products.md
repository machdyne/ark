# Zeros in products

```lesson
(objective "Multiply a whole number by a power of ten, such as 36 x 10^3 = 36,000, and explain the pattern in the number of zeros in the product.")
(standards "5.NBT.A.2")
(minutes 25)
```

You can multiply a whole number by a power of ten and explain the zeros.

Multiply 36 by 10. Each digit moves one place left: the 3 tens become
3 hundreds, and the 6 ones become 6 tens. The ones place is now empty,
so you write a 0 there.

$$ 36 * 10 = 360 $$

```figure
(define p (slider 'p 1 3 1 "Exponent" 1))
(m5p1-shift 20 130 36 p 5 0 0 0)
(label 160 222 (string-append "36 × " (m5p1-num (expt 10 p)) " = " (m5p1-num (* 36 (expt 10 p)))) 'body 'bold)
```

```check
(number
  (ask "What is 47 × 10?")
  (answer 470) (from "47 * 10")
  (wrong-if 4710 "Do not write the 10 after 47. Each digit moves one place left, and a 0 fills the ones: 470.")
  (wrong-if 57 "That adds 10. Multiplying by 10 makes the number 10 times as big.")
  (hint "The 4 tens become 4 hundreds.")
  (hint "The 7 ones become 7 tens. Write 0 in the ones."))
```

---

## More places

Multiplying by $10^2$ is multiplying by 10, then by 10 again. Each digit
moves 2 places left. Multiplying by $10^3$ moves each digit 3 places.

$$ 36 * 10^3 = 36000 $$

The exponent tells how many places each digit moves. The empty places
fill with zeros.

```check
(number
  (ask "What is 25 × $10^2$?")
  (answer 2500) (from "25 * 10^2")
  (wrong-if 250 "That moves the digits only 1 place. The exponent 2 means 2 places: 2,500.")
  (wrong-if 50 "$10^2$ is 10 × 10, which is 100, not 2. So 25 × 100.")
  (hint "$10^2$ = 100.")
  (hint "Each digit moves 2 places left."))
```

---

## Count the zeros with care

The exponent says how many zeros you write after the number. But the
number may have zeros of its own.

$$ 50 * 10^2 = 5000 $$

50 already ends in one 0. You write 2 more. So 5,000 has 3 zeros, not 2.

```check
(number
  (ask "What is 40 × $10^3$?")
  (answer 40000) (from "40 * 10^3")
  (wrong-if 4000 "40 already has a zero. Moving each digit 3 places left gives 40,000: 4 zeros in all.")
  (wrong-if 400 "That is 40 × 10. The exponent 3 means 1,000: 3 places.")
  (hint "Write 40, then 3 more zeros.")
  (hint "40,000."))
```

---

## Worked example

```example
(example
  (problem "Find 82 × $10^4$.")
  (step "$10^4$ = 10,000, so each digit moves 4 places left.")
  (step "Write 82, then 4 zeros: 820,000.")
  (answer "82 × $10^4$ = 820,000"))
```

```example
(example
  (problem "Find 300 × $10^2$.")
  (step "Each digit moves 2 places left.")
  (step "300 has 2 zeros. Write 2 more.")
  (step (number (ask "So 300 × $10^2$ = ?") (answer 30000) (from "300 * 10^2")
    (wrong-if 3000 "300 already ends in 2 zeros. Add 2 more: 30,000.")))
  (answer "300 × $10^2$ = 30,000"))
```

---

## Practice

```check
(number
  (ask "What is 9 × $10^5$?")
  (answer 900000) (from "9 * 10^5")
  (wrong-if 45 "$10^5$ is not 5. It is 100,000. So 9 × 100,000.")
  (wrong-if 90000 "That has only 4 zeros. The exponent 5 moves the 9 five places left.")
  (hint "$10^5$ = 100,000."))
```

```check
(number
  (ask "What is 618 × $10^3$?")
  (answer 618000) (from "618 * 10^3")
  (wrong-if 61800 "That moves the digits only 2 places. The exponent 3 means 3 places.")
  (hint "Write 618, then 3 zeros."))
```

---

```check
(choice
  (ask "How many zeros are at the end of 70 × $10^4$?")
  (right "5" (true "70 * 10^4 = 700000"))
  (wrong "4" (false "70 * 10^4 = 70000")
    "The exponent gives 4 new zeros, but 70 already has one. 700,000 has 5.")
  (wrong "1" (false "70 * 10^4 = 70")
    "Multiplying by $10^4$ moves each digit 4 places left. 4 zeros are written after 70.")
  (hint "Find the product first: 70 × 10,000."))
```

```check
(number
  (ask "Fill in the missing number: 54 × ? = 5,400")
  (answer 100) (from "5400 ÷ 54")
  (true "54 * 10^2 = 5400")
  (wrong-if 2 "The exponent is 2, but the number you multiply by is $10^2 = 100$.")
  (wrong-if 10 "54 × 10 is 540. The digits moved 2 places: 100.")
  (hint "How many places did the digits of 54 move?"))
```

So: multiplying by $10^n$ moves each digit n places left, and zeros fill
the empty places.
