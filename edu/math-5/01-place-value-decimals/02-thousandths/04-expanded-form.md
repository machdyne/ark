# Expanded form

```lesson
(objective "Write a decimal to thousandths in expanded form with fractions and with decimals, such as 3.592 = 3 x 1 + 5 x (1/10) + 9 x (1/100) + 2 x (1/1000) = 3 + 0.5 + 0.09 + 0.002, and back in standard form.")
(standards "5.NBT.A.3a")
(minutes 25)
```

You can write a decimal in expanded form and back in standard form.

Expanded form shows the value of each digit as a sum. You can write the
values as decimals:

**3.592 = 3 + 0.5 + 0.09 + 0.002**

Each part is one digit in its place, with zeros in the other places.

```figure
(m5p1-chart 20 3.592 0 -3 -3 99)
(for-range 0 4 (lambda (i)
  (text 120 (+ 115 (* 25 i)) (list-ref '("3" "0.5" "0.09" "0.002") i) 'body 'right)
  (text 135 (+ 115 (* 25 i)) (list-ref '("= 3 ones" "= 5 tenths" "= 9 hundredths" "= 2 thousandths") i) 'body 'left)))
(caption "Each digit, with its value")
```

```check
(choice
  (ask "Which is 4.718 in expanded form?")
  (right "4 + 0.7 + 0.01 + 0.008" (true "4 + 0.7 + 0.01 + 0.008 = 4.718"))
  (wrong "4 + 7 + 1 + 8" (false "4 + 7 + 1 + 8 = 4.718")
    "That adds the digits, which gives 20. Each digit must show its place: 7 tenths is 0.7.")
  (wrong "4 + 0.7 + 0.1 + 0.8" (false "4 + 0.7 + 0.1 + 0.8 = 4.718")
    "Only the 7 is in the tenths place. The 1 is hundredths, 0.01, and the 8 is thousandths, 0.008.")
  (hint "Write each digit with zeros in the other places."))
```

---

## With fractions

You can also write each place as a fraction: a digit times 1, 1/10,
1/100 or 1/1000.

3.592 = $3 * 1$ + $5 * (1/10)$ + $9 * (1/100)$ + $2 * (1/1000)$

This shows the digit and its place apart.

```check
(fraction
  (ask "Fill in the missing fraction: 6.204 = 6 × 1 + 2 × (1/10) + 4 × ?")
  (answer 1 1000)
  (true "6 * 1 + 2 * (1/10) + 4 * (1/1000) = 6.204")
  (wrong-if (1 100) "The 4 is the 3rd digit after the decimal point, not the 2nd. Its place is thousandths.")
  (wrong-if (1 10) "1/10 is the tenths place, which holds the 2. The 4 is two places further right.")
  (hint "Which place is the 4 in?")
  (hint "The hundredths place holds a 0, so it is left out."))
```

---

## A zero in a place

A 0 in a place is worth nothing, so you can leave it out of the sum.
6.204 has 0 hundredths:

$$ 6.204 = 6 + 0.2 + 0.004 $$

When you go back to standard form, write the 0 again to hold the place.

```check
(text
  (ask "Write 5 + 0.03 + 0.006 in standard form.")
  (accept "5.036")
  (true "5 + 0.03 + 0.006 = 5.036")
  (wrong-if "5.36" "5.36 has 3 tenths. Here the tenths place is empty: write a 0 there.")
  (wrong-if "5.0306" "Each part has one place. 0.03 fills the hundredths, 0.006 the thousandths: 5.036.")
  (hint "There are no tenths: put a 0 in the tenths place.")
  (hint "5 . 0 3 6"))
```

---

## Worked example

```example
(example
  (problem "Write 20.851 in expanded form with fractions.")
  (step "2 tens, 0 ones: 2 × 10.")
  (step "8 tenths, 5 hundredths, 1 thousandth.")
  (answer "20.851 = 2 × 10 + 8 × (1/10) + 5 × (1/100) + 1 × (1/1000)"))
```

```example
(example
  (problem "Write 7 × 1 + 4 × (1/100) + 9 × (1/1000) in standard form.")
  (step "7 ones. No tenths: a 0 in the tenths place.")
  (step "4 hundredths and 9 thousandths.")
  (step (text (ask "So the number is ...") (accept "7.049") (true "7 + 4/100 + 9/1000 = 7.049")
    (wrong-if "7.49" "There are no tenths. Hold the place with a 0: 7.049.")))
  (answer "7.049"))
```

---

## Practice

```check
(text
  (ask "Write 0.8 + 0.07 + 0.001 in standard form.")
  (accept "0.871") (accept ".871")
  (true "0.8 + 0.07 + 0.001 = 0.871")
  (wrong-if "0.16" "Do not add the digits. Each term fills its own place: 8 tenths, 7 hundredths, 1 thousandth.")
  (hint "One digit for each place."))
```

```check
(choice
  (ask "Which part is missing? 12.345 = 10 + 2 + 0.3 + ? + 0.005")
  (right "0.04" (true "10 + 2 + 0.3 + 0.04 + 0.005 = 12.345"))
  (wrong "0.4" (false "10 + 2 + 0.3 + 0.4 + 0.005 = 12.345")
    "0.4 is 4 tenths, but the tenths place holds the 3. The 4 is in the hundredths.")
  (wrong "4" (false "10 + 2 + 0.3 + 4 + 0.005 = 12.345")
    "4 is 4 ones. The 4 in 12.345 is right of the decimal point.")
  (hint "Which place is missing from the sum?"))
```

---

```check
(text
  (ask "Write 3 × 100 + 4 × 10 + 7 × 1 + 3 × (1/10) + 9 × (1/100) + 2 × (1/1000) in standard form.")
  (accept "347.392")
  (true "3 * 100 + 4 * 10 + 7 * 1 + 3 * (1/10) + 9 * (1/100) + 2 * (1/1000) = 347.392")
  (wrong-if "3473.92" "The 7 × 1 is the ones place, the last place before the decimal point.")
  (hint "Hundreds, tens, ones, then the decimal point."))
```

```check
(fraction
  (ask "In expanded form, 0.506 = 5 × (1/10) + 6 × ? What is the missing fraction?")
  (answer 1 1000)
  (true "5 * (1/10) + 6 * (1/1000) = 0.506")
  (wrong-if (1 100) "0.506 has 0 hundredths. The 6 is in the 3rd place: thousandths.")
  (hint "Which place is the 6 in?"))
```

So: expanded form writes each digit with its place, and standard form
puts the digits back in their places.
