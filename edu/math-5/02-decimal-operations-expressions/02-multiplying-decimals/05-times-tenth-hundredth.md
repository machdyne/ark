# Times 0.1 and 0.01

```lesson
(objective "Multiply a number by 0.1 or 0.01, and explain why the product is 1/10 or 1/100 of the number.")
(standards "5.NBT.B.7" "5.NBT.A.2")
(minutes 20)
```

You can multiply by 0.1 or 0.01 by moving each digit to a smaller place.

$34 * 0.1$ is 34 groups of 1 tenth: 34 tenths. 34 tenths are 3 wholes
and 4 tenths:

$$ 34 * 0.1 = 3.4 $$

That is $1/10$ of 34. It is the same as $34 ÷ 10$, which you already
know. Each digit moves 1 place to the right.

```figure
(define c (choice 'c '("× 1" "× 0.1" "× 0.01") "34"))
(define xs '(60 120 196 256))
(define hs '("tens" "ones" "tenths" "hundredths"))
(for-range 0 4 (lambda (i)
  (frame (- (list-ref xs i) 29) 40 58 80 'ink 1)
  (label (list-ref xs i) 56 (list-ref hs i) 'tiny)))
(circle 158 108 4 'ink)
(label (list-ref xs c) 104 "3" 'big 'bold)
(label (list-ref xs (+ c 1)) 104 "4" 'big 'bold)
(if (= c 2) (label 120 104 "0" 'big 'bold))
(text 160 170 (list-ref '("34 × 1 = 34" "34 × 0.1 = 3.4" "34 × 0.01 = 0.34") c) 'centre 'body 'bold)
(caption "The decimal point stays; the digits move right")
```

```check
(text
  (ask "What is 58 × 0.1?")
  (accept "5.8") (accept "5.80")
  (true "58 * 0.1 = 5.8")
  (wrong-if "580" "That is 58 × 10. 0.1 is less than 1, so 58 × 0.1 is less than 58: 58 tenths = 5.8.")
  (wrong-if "0.58" "That is 58 × 0.01. 58 tenths are 5.8.")
  (hint "58 groups of 1 tenth = 58 tenths."))
```

---

## Times 0.01

$34 * 0.01$ is 34 hundredths: 0.34. That is $1/100$ of 34, the same as
$34 ÷ 100$. Each digit moves 2 places to the right.

The decimal point stays between the ones and the tenths. It only seems
to move, because the digits move past it.

```check
(text
  (ask "What is 275 × 0.01?")
  (accept "2.75") (accept "2.750")
  (true "275 * 0.01 = 2.75")
  (wrong-if "27.5" "That is 275 × 0.1, 1 place. × 0.01 moves each digit 2 places: 275 hundredths = 2.75.")
  (wrong-if "27500" "That is 275 × 100. 0.01 is less than 1, so the product is less than 275.")
  (hint "275 hundredths = ?"))
```

---

## Decimals times 0.1

The rule works for decimals too. $4.6 * 0.1$ is 1 tenth of 4.6. 4.6 is
46 tenths, so 1 tenth of it is 46 hundredths:

$$ 4.6 * 0.1 = 0.46 $$

```check
(text
  (ask "What is 7.2 × 0.1?")
  (accept "0.72") (accept ".72")
  (true "7.2 * 0.1 = 0.72")
  (wrong-if "72" "That is 7.2 × 10. × 0.1 gives 1 tenth of the number: 0.72.")
  (wrong-if "7.02" "Every digit moves 1 place to the right: the 7 to the tenths, the 2 to the hundredths.")
  (hint "Each digit moves 1 place to the right."))
```

---

## Worked example

```example
(example
  (problem "Find 650 × 0.01.")
  (step "× 0.01 is the same as ÷ 100.")
  (step "Each digit moves 2 places to the right: 650 becomes 6.50.")
  (answer "650 × 0.01 = 6.5"))
```

```example
(example
  (problem "Find 0.9 × 0.1.")
  (step "1 tenth of 9 tenths is 9 hundredths.")
  (step (text (ask "So 0.9 × 0.1 = ?")
    (accept "0.09") (accept ".09")
    (true "0.9 * 0.1 = 0.09")
    (wrong-if "9" "That is 0.9 × 10. A tenth of 0.9 is smaller than 0.9: 0.09.")))
  (answer "0.9 × 0.1 = 0.09"))
```

---

## Practice

```check
(text
  (ask "What is 1,240 × 0.1?")
  (accept "124") (accept "124.0")
  (true "1240 * 0.1 = 124")
  (wrong-if "12400" "That is 1,240 × 10. 1 tenth of 1,240 is 124.")
  (hint "1,240 ÷ 10 = ?"))
```

```check
(text
  (ask "What is 8 × 0.01?")
  (accept "0.08") (accept ".08")
  (true "8 * 0.01 = 0.08")
  (wrong-if "0.8" "That is 8 × 0.1. 8 hundredths are 0.08.")
  (hint "8 groups of 1 hundredth."))
```

---

```check
(choice
  (ask "Which is the same as 36 × 0.01?")
  (right "36 ÷ 100" (true "36 * 0.01 = 36 ÷ 100"))
  (wrong "36 × 100" (false "36 * 0.01 = 36 * 100")
    "× 100 makes 3,600. × 0.01 takes 1 hundredth of 36, which is much smaller: 0.36.")
  (wrong "36 ÷ 10" (false "36 * 0.01 = 36 ÷ 10")
    "÷ 10 is the same as × 0.1. × 0.01 is ÷ 100: 2 places.")
  (hint "1 hundredth of 36."))
```

```check
(text
  (ask "A tile is 15.3 centimeters wide. A model of it is 0.1 times as wide. How wide is the model, in centimeters?")
  (accept "1.53") (accept "1.530")
  (unit "centimeters")
  (true "15.3 * 0.1 = 1.53")
  (wrong-if "153" "That is 15.3 × 10. 0.1 times as wide is 1 tenth as wide: 1.53.")
  (wrong-if "0.153" "That is 15.3 × 0.01. × 0.1 moves each digit 1 place: 1.53.")
  (hint "Each digit moves 1 place to the right."))
```

So: × 0.1 is 1/10 of a number and × 0.01 is 1/100 of it; each digit moves 1 or 2 places to the right.
