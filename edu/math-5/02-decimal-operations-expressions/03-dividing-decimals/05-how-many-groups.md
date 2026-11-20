# How many groups?

```lesson
(objective "Divide by a decimal as \"how many groups\" with a number line, such as 3 ÷ 0.5 = 6 and 1.2 ÷ 0.3 = 4.")
(standards "5.NBT.B.7")
(minutes 20)
```

You can divide by a decimal by asking how many groups of it fit.

$3 ÷ 0.5$ asks: how many 0.5s fit in 3? Jump from 0 to 3 in jumps of
0.5 and count them. There are 6 jumps.

$$ 3 ÷ 0.5 = 6 $$

```figure
(m5p2-line 20 300 150 0 3 6 2)
(for-range 0 6 (lambda (i) (nl-jump (* i 0.5) (* (+ i 1) 0.5) (if (even? i) 'warm 'cool) (fmt (+ i 1) 0))))
(caption "6 jumps of 0.5 from 0 to 3")
```

```check
(number
  (ask "How many 0.5s fit in 2? What is 2 ÷ 0.5?")
  (answer 4) (from "2 ÷ 0.5")
  (wrong-if 1 "That is 2 × 0.5. Count jumps of 0.5 from 0 to 2: 0.5, 1, 1.5, 2.")
  (wrong-if 0.25 "That divides 0.5 by 2. Here you count how many 0.5s fit in 2.")
  (hint "Each whole holds 2 halves."))
```

---

## A bigger quotient

When you divide a number greater than 0 by a number less than 1, the
quotient is greater than the number you divide. Many small groups fit in it.

$1.2 ÷ 0.3$: jump by 3 tenths from 0. You reach 1.2 in 4 jumps, since
12 tenths hold 4 groups of 3 tenths.

$$ 1.2 ÷ 0.3 = 4 $$

Move the slider to change the size of each jump.

```figure
(define d (slider 'd 1 6 3 "Tenths a jump" 1))
(define n (floor (/ 12 d)))
(m5p2-line 20 300 150 0 1.2 12 2)
(for-range 0 n (lambda (i) (nl-jump (* i d 0.1) (* (+ i 1) d 0.1) (if (even? i) 'warm 'cool))))
(text 160 200 (string-append (fmt n 0) " jumps of " (m5p2-n (* d 0.1)) (if (= 0 (modulo 12 d)) " fit exactly" ", and a part is left")) 'centre 'small)
```

```check
(number
  (ask "How many 0.2s fit in 1.4? What is 1.4 ÷ 0.2?")
  (answer 7) (from "1.4 ÷ 0.2")
  (wrong-if 0.7 "That shares 1.4 into 2 groups of 0.7. Here you count groups of 0.2: 14 tenths hold 7 groups of 2 tenths.")
  (wrong-if 0.28 "That multiplies. Count how many 2-tenths jumps reach 1.4.")
  (hint "1.4 = 14 tenths. 0.2 = 2 tenths.")
  (hint "14 ÷ 2 = ?"))
```

---

## Hundredths too

$0.12 ÷ 0.04$: how many 4 hundredths in 12 hundredths? 3.

$$ 0.12 ÷ 0.04 = 3 $$

```check
(number
  (ask "What is 0.35 ÷ 0.05?")
  (answer 7) (from "0.35 ÷ 0.05")
  (wrong-if 0.7 "Count groups: 35 hundredths hold 7 groups of 5 hundredths. The answer is a count, 7.")
  (hint "35 hundredths ÷ 5 hundredths."))
```

---

## Worked example

```example
(example
  (problem "How many 0.25 liter cups can you fill from 2 liters?")
  (step "Ask how many 0.25s fit in 2.")
  (step "4 cups make 1 liter, since 4 × 0.25 = 1.")
  (step "2 liters: 2 × 4 = 8 cups.")
  (answer "2 ÷ 0.25 = 8 cups"))
```

```example
(example
  (problem "Find 1.8 ÷ 0.6.")
  (step "1.8 = 18 tenths. 0.6 = 6 tenths.")
  (step (number (ask "How many 6 tenths in 18 tenths?") (answer 3) (from "1.8 ÷ 0.6")
    (wrong-if 0.3 "Count groups of 6 tenths: 6, 12, 18. That is 3 groups.")))
  (answer "1.8 ÷ 0.6 = 3"))
```

---

## Practice

```check
(number
  (ask "What is 4 ÷ 0.5?")
  (answer 8) (from "4 ÷ 0.5")
  (wrong-if 2 "That is 4 × 0.5, or half of 4. Count halves: each whole has 2, so 4 wholes have 8.")
  (hint "How many halves in 1? In 4?"))
```

```check
(number
  (ask "A ribbon is 2.4 meters long. How many pieces 0.4 meter long can you cut from it?")
  (answer 6) (from "2.4 ÷ 0.4")
  (wrong-if 0.6 "Count pieces: 24 tenths hold 6 groups of 4 tenths.")
  (wrong-if 2.8 "That adds. Count how many 0.4s fit in 2.4.")
  (hint "24 tenths ÷ 4 tenths."))
```

---

```check
(number
  (ask "What is 0.9 ÷ 0.03?")
  (answer 30) (from "0.9 ÷ 0.03")
  (wrong-if 3 "0.9 is 90 hundredths, not 9. 90 hundredths ÷ 3 hundredths = 30.")
  (hint "0.9 = 90 hundredths."))
```

```check
(choice
  (ask "Without working it out: is 6 ÷ 0.5 more or less than 6?")
  (right "More: many halves fit in 6" (true "6 ÷ 0.5 > 6"))
  (wrong "Less: dividing always makes a number smaller" (false "6 ÷ 0.5 < 6")
    "Dividing by a whole number greater than 1 makes less. Dividing by 0.5 counts halves, and 6 has 12 of them.")
  (wrong "The same: 6" (false "6 ÷ 0.5 = 6")
    "That is 6 ÷ 1. Halves are smaller than 1, so more of them fit.")
  (hint "How many halves fit in 1?"))
```

So: dividing by a decimal asks how many groups of it fit, and dividing by a number less than 1 gives a quotient greater than the number you divide.
