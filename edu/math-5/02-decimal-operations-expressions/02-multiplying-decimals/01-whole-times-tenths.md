# A whole number times tenths

```lesson
(objective "Multiply a whole number by a decimal in tenths as equal groups, such as 3 x 0.4 = 12 tenths = 1.2.")
(standards "5.NBT.B.7")
(minutes 20)
```

You can multiply a whole number by tenths by counting equal groups of
tenths.

$3 * 0.4$ means 3 groups of 0.4. Each group is 4 tenths. 3 groups of 4
tenths are 12 tenths.

12 tenths are 10 tenths and 2 tenths: 1 whole and 2 tenths.

$$ 3 * 0.4 = 1.2 $$

Move the slider to change the number of groups.

```figure
(define n (slider 'n 1 5 3 "Groups of 0.4" 1))
(m5p2-line 20 300 150 0 2 20 10)
(for-range 0 n (lambda (i) (nl-jump (* i 0.4) (* (+ i 1) 0.4) (if (even? i) 'warm 'cool) "0.4")))
(nl-mark (* n 0.4) 'ink)
(text 160 210 (string-append (fmt n 0) " × 0.4 = " (m5p2-n (* n 0.4))) 'centre 'body 'bold)
```

```check
(text
  (ask "What is 2 × 0.3?")
  (accept "0.6") (accept ".6") (accept "0.60")
  (true "2 * 0.3 = 0.6")
  (wrong-if "6" "2 groups of 3 tenths are 6 tenths, not 6 wholes. 6 tenths is 0.6.")
  (wrong-if "2.3" "That just writes the numbers together. 2 groups of 0.3 are 0.3 + 0.3.")
  (hint "2 groups of 3 tenths.")
  (hint "3 tenths + 3 tenths = ? tenths"))
```

---

## Count the tenths

To find $4 * 0.7$, think: 4 groups of 7 tenths. $4 * 7 = 28$, so the
product is 28 tenths.

28 tenths are 2 wholes and 8 tenths: 2.8.

```figure
(for-range 0 4 (lambda (i) (frac-bar-at 20 (+ 20 (* i 34)) 200 24 10 7 'warm)))
(for-range 0 4 (lambda (i) (text 230 (+ 38 (* i 34)) "0.7" 'left 'body)))
(caption "4 groups of 7 tenths: 28 tenths = 2.8")
```

```check
(text
  (ask "What is 5 × 0.6?")
  (accept "3") (accept "3.0") (accept "3.00")
  (true "5 * 0.6 = 3")
  (wrong-if "30" "5 × 6 = 30, but these are tenths: 30 tenths. 30 tenths are 3 wholes.")
  (wrong-if "0.30" "30 tenths are more than 1 whole. 10 tenths make 1, so 30 tenths make 3.")
  (hint "5 groups of 6 tenths = 30 tenths.")
  (hint "10 tenths = 1 whole."))
```

---

## Numbers greater than 1

$3 * 2.4$ is 3 groups of 2 and 4 tenths. Multiply each part:

- 3 × 2 = 6 wholes.
- 3 × 4 tenths = 12 tenths = 1.2.

6 + 1.2 = 7.2.

```check
(text
  (ask "What is 2 × 3.6?")
  (accept "7.2") (accept "7.20")
  (true "2 * 3.6 = 7.2")
  (wrong-if "6.12" "2 × 6 tenths = 12 tenths, which is 1.2, not 0.12. Then 6 + 1.2 = 7.2.")
  (wrong-if "6.2" "12 tenths are 1 whole and 2 tenths. Add that whole: 6 + 1.2 = 7.2.")
  (hint "2 × 3 = 6. 2 × 0.6 = 12 tenths = 1.2."))
```

---

## Worked example

```example
(example
  (problem "Find 6 × 0.8.")
  (step "6 groups of 8 tenths.")
  (step "6 × 8 = 48, so 48 tenths.")
  (step "48 tenths are 4 wholes and 8 tenths.")
  (answer "6 × 0.8 = 4.8"))
```

```example
(example
  (problem "Find 4 × 1.5.")
  (step "4 × 1 = 4.")
  (step "4 × 5 tenths = 20 tenths = 2.")
  (step (text (ask "4 + 2 = ? So 4 × 1.5 = ?")
    (accept "6") (accept "6.0")
    (true "4 * 1.5 = 6")
    (wrong-if "4.20" "20 tenths are 2 wholes, not 20 hundredths. 4 + 2 = 6.")))
  (answer "4 × 1.5 = 6"))
```

---

## Practice

```check
(text
  (ask "What is 7 × 0.2?")
  (accept "1.4") (accept "1.40")
  (true "7 * 0.2 = 1.4")
  (wrong-if "14" "7 × 2 tenths = 14 tenths. 14 tenths are 1.4, not 14.")
  (wrong-if "0.14" "14 tenths are more than 10 tenths, so the product is more than 1: 1.4.")
  (hint "14 tenths = 10 tenths + 4 tenths."))
```

```check
(text
  (ask "What is 3 × 1.7?")
  (accept "5.1") (accept "5.10")
  (true "3 * 1.7 = 5.1")
  (wrong-if "3.21" "3 × 7 tenths = 21 tenths = 2.1. Then 3 + 2.1 = 5.1.")
  (hint "3 × 1 = 3. 3 × 0.7 = 2.1."))
```

---

```check
(text
  (ask "A bottle holds 0.5 liter. How many liters do 9 bottles hold?")
  (accept "4.5") (accept "4.50")
  (unit "liters")
  (true "9 * 0.5 = 4.5")
  (wrong-if "45" "9 × 5 tenths = 45 tenths. That is 4 wholes and 5 tenths: 4.5.")
  (wrong-if "9.5" "That adds 0.5 once. 9 bottles hold 9 groups of 0.5.")
  (hint "9 × 5 = 45 tenths."))
```

```check
(choice
  (ask "Which is 8 × 0.4?")
  (right "3.2" (true "8 * 0.4 = 3.2"))
  (wrong "32" (false "8 * 0.4 = 32")
    "8 × 4 = 32 counts tenths. 32 tenths are 3.2, since 10 tenths make 1.")
  (wrong "0.32" (false "8 * 0.4 = 0.32")
    "32 tenths are more than 1. 0.32 is 32 hundredths, too small.")
  (hint "8 groups of 4 tenths = 32 tenths."))
```

So: a whole number times tenths is a count of tenths; every 10 tenths make 1 whole.
