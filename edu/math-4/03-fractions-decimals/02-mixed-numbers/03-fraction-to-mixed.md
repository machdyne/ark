# Fraction to mixed number

```lesson
(objective "Write a fraction greater than 1 as a mixed number, such as 11/4 = 2 3/4, by taking out the wholes.")
(standards "4.NF.B.3b")
(minutes 20)
```

You can write a fraction greater than 1 as a mixed number by taking
out the wholes.

$11/4$ is 11 fourths. Every 4 fourths make 1 whole. Take out 2 wholes:
that uses 8 fourths. 3 fourths are left.

$$ 11/4 = 4/4 + 4/4 + 3/4 = 2 3/4 $$

```figure
(m4p3-wholes 60 30 220 32 11 4 'warm)
(math 30 47 "1" 20)
(math 30 87 "1" 20)
(math 30 127 "3/4" 16)
(math 160 200 "11/4 = 2 3/4" 22)
```

```check
(number
  (ask "How many wholes can you take out of" (math "7/3") "?")
  (answer 2) (true "3 * 2 + 1 = 7")
  (wrong-if 7 "7 is the number of thirds. Every 3 thirds make 1 whole.")
  (wrong-if 3 "3 wholes would need 9 thirds. You have only 7.")
  (hint "How many groups of 3 are in 7?"))
```

---

## Divide to find the wholes

The number of wholes is how many times the denominator fits into the
numerator. That is a division. The remainder is the parts left.

11 ÷ 4 = 2 R 3. So $11/4 = 2 3/4$. Move the slider.

```figure
(define k (slider 'k 5 15 11 "Fourths" 1))
(define w (quotient k 4))
(define r (modulo k 4))
(m4p3-wholes 60 10 220 26 k 4 'warm)
(math 160 215 (string-append (m4p3-s k 4) " = " (fmt w 0) (if (> r 0) (string-append " " (m4p3-s r 4)) "")) 22)
```

```check
(number
  (ask "Write" (math "13/5") "as a mixed number. Type it like 2 1/4.")
  (answer 2.6) (from "13/5")
  (wrong-if 3 "3 wholes need 15 fifths. You have 13: 2 wholes and 3 fifths.")
  (wrong-if 2 "Do not forget the 3 fifths left over.")
  (wrong-if 3.4 "3 2/5 swaps the quotient and the remainder. 13 ÷ 5 = 2 R 3: 2 wholes, 3 fifths.")
  (hint "13 ÷ 5 = ? R ?"))
```

---

## Worked example

```example
(example
  (problem "Write 9/2 as a mixed number.")
  (step "9 ÷ 2 = 4 R 1.")
  (step "4 wholes, and 1 half left.")
  (answer "9/2 = 4 1/2."))
```

```example
(example
  (problem "Write 17/6 as a mixed number.")
  (step "17 ÷ 6 = 2 R 5.")
  (step (number (ask "So 17/6 = ? Type it like 2 1/4.")
    (answer 2.8333333) (within 0.001) (from "17/6")
    (wrong-if 5.3333333 "5 2/6 swaps them. The quotient is the wholes and the remainder is the sixths: 2 5/6.")))
  (answer "17/6 = 2 5/6."))
```

---

## Practice

```check
(number
  (ask "Write" (math "10/3") "as a mixed number.")
  (answer 3.3333333) (within 0.001) (from "10/3")
  (wrong-if 3 "3 wholes use 9 thirds. 1 third is left: 3 1/3.")
  (hint "10 ÷ 3 = 3 R ?"))
```

```check
(number
  (ask "Write" (math "15/8") "as a mixed number.")
  (answer 1.875) (from "15/8")
  (wrong-if 2 "2 wholes would need 16 eighths. You have 15.")
  (hint "15 ÷ 8 = 1 R ?"))
```

---

```check
(number
  (ask "Write" (math "12/4") "as a whole number.")
  (answer 3) (from "12/4")
  (wrong-if 8 "That is 12 - 4. Every 4 fourths make 1 whole: 12 ÷ 4.")
  (hint "12 ÷ 4 has no remainder."))
```

```check
(choice
  (ask "Which is equal to" (math "23/10") "?")
  (right "2 3/10" (true "23/10 = 2 3/10"))
  (wrong "23 1/10" (false "23/10 = 23 1/10")
    "23/10 is 23 tenths, not 23 wholes. 10 tenths make 1 whole.")
  (wrong "3 2/10" (false "23/10 = 3 2/10")
    "This swaps the digits. 23 ÷ 10 = 2 R 3: 2 wholes and 3 tenths.")
  (hint "23 ÷ 10 = ? R ?"))
```

So: to write a fraction greater than 1 as a mixed number, divide: the
quotient is the wholes and the remainder is the parts left.
