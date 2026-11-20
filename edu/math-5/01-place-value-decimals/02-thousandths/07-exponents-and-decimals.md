# Exponents and decimals

```lesson
(objective "Multiply and divide a decimal by a power of ten written with an exponent, such as 0.35 x 10^2 = 35 and 6.1 ÷ 10^2 = 0.061.")
(standards "5.NBT.A.2")
(minutes 20)
```

You can multiply and divide a decimal by a power of ten with an
exponent.

The exponent tells how many places each digit moves. $10^2$ means 100,
so each digit moves 2 places.

$$ 0.35 * 10^2 = 35 $$

The 3 tenths become 3 tens. The 5 hundredths become 5 ones.

```figure
(define p (slider 'p 1 3 2 "Exponent" 1))
(m5p1-shift 20 120 0.35 p 2 -3 -2 (min 0 (- p 2)))
(math 160 214 (string-append "0.35 * 10^" (fmt p 0) " = " (fmt (* 0.35 (expt 10 p)) (if (= p 1) 1 0))) 20)
```

```check
(text
  (ask "What is 0.48 ×" (math "10^2") "?")
  (accept "48") (accept "48.0")
  (true "0.48 * 10^2 = 48")
  (wrong-if "4.8" "That moves the digits 1 place. The exponent 2 means 2 places: 48.")
  (wrong-if "0.96" "$10^2$ is not 2. It is 100, so each digit moves 2 places left.")
  (hint "$10^2 = 100$.")
  (hint "The 4 tenths become 4 tens."))
```

---

## Dividing

Dividing by $10^2$ moves each digit 2 places right.

$$ 6.1 ÷ 10^2 = 0.061 $$

The 6 ones become 6 hundredths. The 1 tenth becomes 1 thousandth.

```figure
(define p (slider 'p 1 2 2 "Exponent" 1))
(m5p1-shift 20 120 6.1 (- p) 1 -3 -1 (- -1 p))
(math 160 214 (string-append "6.1 ÷ 10^" (fmt p 0) " = " (fmt (/ 6.1 (expt 10 p)) (+ 1 p))) 20)
```

```check
(text
  (ask "What is 2.7 ÷" (math "10^2") "?")
  (accept "0.027") (accept ".027")
  (true "2.7 ÷ 10^2 = 0.027")
  (wrong-if "0.27" "That moves the digits 1 place. The exponent 2 means 2 places right.")
  (wrong-if "270" "That multiplies. Dividing moves the digits to the right.")
  (hint "The 2 ones become 2 hundredths."))
```

---

## Three places

$10^3$ is 1,000: each digit moves 3 places.

$$ 0.125 * 10^3 = 125 $$

$$ 9 ÷ 10^3 = 0.009 $$

```check
(text
  (ask "What is 4 ÷" (math "10^3") "?")
  (accept "0.004") (accept ".004")
  (true "4 ÷ 10^3 = 0.004")
  (wrong-if "0.04" "That moves the 4 two places. $10^3$ means 3 places: 0.004.")
  (wrong-if "4000" "That multiplies by $10^3$. Dividing moves the 4 to the right.")
  (hint "The 4 ones become 4 thousandths."))
```

---

## Worked example

```example
(example
  (problem "Find 1.06 × $10^3$.")
  (step "$10^3$ = 1,000: each digit moves 3 places left.")
  (step "1 one becomes 1 thousand. 0 tenths become 0 hundreds. 6 hundredths become 6 tens.")
  (answer "$1.06 * 10^3 = 1060$, written 1,060"))
```

```example
(example
  (problem "Find 58 ÷ $10^2$.")
  (step "Each digit moves 2 places right.")
  (step "5 tens become 5 tenths. 8 ones become 8 hundredths.")
  (step (text (ask "So 58 ÷" (math "10^2") "= ?") (accept "0.58") (accept ".58") (true "58 ÷ 10^2 = 0.58")
    (wrong-if "5.8" "That moves the digits 1 place. The exponent is 2.")))
  (answer "0.58"))
```

---

## Practice

```check
(text
  (ask "What is 7.3 ×" (math "10^1") "?")
  (accept "73") (accept "73.0")
  (true "7.3 * 10^1 = 73")
  (wrong-if "7.31" "The exponent is not written after the number. $10^1 = 10$, so each digit moves 1 place left.")
  (wrong-if "730" "That is × 100. $10^1$ is just 10.")
  (hint "$10^1 = 10$."))
```

```check
(text
  (ask "What is 350 ÷" (math "10^3") "?")
  (accept "0.35") (accept ".35") (accept "0.350") (accept ".350")
  (true "350 ÷ 10^3 = 0.35")
  (wrong-if "3.5" "That moves the digits 2 places. $10^3$ moves them 3 places right.")
  (wrong-if "0.035" "The 3 hundreds move 3 places to the tenths, not further: 0.350 = 0.35.")
  (hint "The 3 hundreds become 3 tenths."))
```

---

```check
(choice
  (ask "Which is equal to 0.09 ×" (math "10^2") "?")
  (right "9" (true "0.09 * 10^2 = 9"))
  (wrong "0.9" (false "0.09 * 10^2 = 0.9")
    "0.9 is 0.09 × 10. The exponent 2 moves the 9 two places: from hundredths to ones.")
  (wrong "90" (false "0.09 * 10^2 = 90")
    "90 is 0.09 × 1,000, three places. Count: hundredths, tenths, ones.")
  (wrong "0.0009" (false "0.09 * 10^2 = 0.0009")
    "Multiplying moves the digits left, so the number gets bigger.")
  (hint "Move the 9 two places left."))
```

```check
(number
  (ask "0.004 times 10 to what power is 4? Type the exponent.")
  (answer 3)
  (true "0.004 * 10^3 = 4")
  (wrong-if 2 "$0.004 * 10^2 = 0.4$. The 4 must move from the thousandths to the ones: 3 places.")
  (wrong-if 1000 "1,000 is the power of ten. The exponent is how many 10s: 3.")
  (hint "How many places from the thousandths to the ones?"))
```

So: the exponent counts the places each digit moves, left to multiply
and right to divide.
