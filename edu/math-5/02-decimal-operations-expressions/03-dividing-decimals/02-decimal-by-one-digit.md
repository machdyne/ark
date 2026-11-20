# Dividing by a one-digit number

```lesson
(objective "Divide a decimal to hundredths by a one-digit whole number place by place, such as 7.35 ÷ 5 = 1.47.")
(standards "5.NBT.B.7")
(minutes 25)
```

You can divide a decimal by a one-digit number place by place, as with
whole numbers.

Start at the greatest place. Share what you can, and regroup what is
left into the next place. For $7.35 ÷ 5$:

- Ones: 7 ÷ 5 = 1, with 2 ones left.
- 2 ones = 20 tenths. With 3 tenths: 23 tenths. 23 ÷ 5 = 4, with 3
  tenths left.
- 3 tenths = 30 hundredths. With 5 hundredths: 35 hundredths.
  35 ÷ 5 = 7.

The quotient is 1 one, 4 tenths and 7 hundredths.

$$ 7.35 ÷ 5 = 1.47 $$

```figure
(define k (slider 'k 1 3 3 "Places done" 1))
(define rows '(("ones" "7 ÷ 5 = 1, 2 left" "1") ("tenths" "23 ÷ 5 = 4, 3 left" "1.4") ("hundredths" "35 ÷ 5 = 7" "1.47")))
(text 20 30 "7.35 ÷ 5" 'left 'big 'bold)
(for-range 0 k (lambda (i)
  (let ((r (list-ref rows i)))
    (text 20 (+ 75 (* 40 i)) (car r) 'left 'small)
    (text 105 (+ 75 (* 40 i)) (cadr r) 'left 'small))))
(text 20 215 (string-append "Quotient so far: " (caddr (list-ref rows (- k 1)))) 'left 'body 'bold)
```

```check
(text
  (ask "What is 8.4 ÷ 4?")
  (accept "2.1") (accept "2.10")
  (true "8.4 ÷ 4 = 2.1")
  (wrong-if "21" "The 2 is 2 ones and the 1 is 1 tenth. Write the decimal point between them: 2.1.")
  (wrong-if "2.4" "Divide the tenths too: 4 tenths ÷ 4 = 1 tenth.")
  (hint "Ones: 8 ÷ 4. Tenths: 4 ÷ 4."))
```

---

## The decimal point in the quotient

Ones in the quotient come from ones, and tenths from tenths. So the
decimal point in the quotient goes right after the ones you found.

When the first place is too small to share, the quotient has 0 ones:
$2.16 ÷ 3$. 2 ones ÷ 3 is 0, so regroup: 21 tenths ÷ 3 = 7, and 6
hundredths ÷ 3 = 2.

$$ 2.16 ÷ 3 = 0.72 $$

```check
(text
  (ask "What is 3.36 ÷ 4?")
  (accept "0.84") (accept ".84")
  (true "3.36 ÷ 4 = 0.84")
  (wrong-if "8.4" "3 ones ÷ 4 is 0 ones. The 8 is 8 tenths: 0.84.")
  (wrong-if "84" "84 counts hundredths. 0 ones, 8 tenths, 4 hundredths: 0.84.")
  (hint "3 ones ÷ 4 = 0 ones. Regroup: 33 tenths.")
  (hint "33 ÷ 4 = 8, 1 left. 16 hundredths ÷ 4 = 4."))
```

---

## A 0 in the quotient

$6.24 ÷ 6$: 6 ÷ 6 = 1. 2 tenths ÷ 6 = 0 tenths, 2 left. Write the 0!
Then 24 hundredths ÷ 6 = 4.

$$ 6.24 ÷ 6 = 1.04 $$

```check
(text
  (ask "What is 8.32 ÷ 8?")
  (accept "1.04") (accept "1.040")
  (true "8.32 ÷ 8 = 1.04")
  (wrong-if "1.4" "3 tenths ÷ 8 = 0 tenths. Write the 0 in the tenths place: 1.04.")
  (hint "3 tenths ÷ 8 = 0, with 3 tenths left."))
```

---

## Worked example

```example
(example
  (problem "Find 9.45 ÷ 7.")
  (step "Ones: 9 ÷ 7 = 1, 2 left.")
  (step "Tenths: 24 ÷ 7 = 3, 3 left.")
  (step "Hundredths: 35 ÷ 7 = 5.")
  (answer "9.45 ÷ 7 = 1.35"))
```

```example
(example
  (problem "Find 5.46 ÷ 2.")
  (step "Ones: 5 ÷ 2 = 2, 1 left.")
  (step "Tenths: 14 ÷ 2 = 7. Hundredths: 6 ÷ 2 = 3.")
  (step (text (ask "So 5.46 ÷ 2 = ?")
    (accept "2.73") (accept "2.730")
    (true "5.46 ÷ 2 = 2.73")
    (wrong-if "2.23" "The 1 one left over becomes 10 tenths: 14 tenths ÷ 2 = 7.")))
  (answer "5.46 ÷ 2 = 2.73"))
```

---

## Practice

```check
(text
  (ask "What is 4.65 ÷ 3?")
  (accept "1.55") (accept "1.550")
  (true "4.65 ÷ 3 = 1.55")
  (wrong-if "1.21" "That drops what is left over. 1 one is left after 4 ÷ 3. Regroup it: 16 tenths ÷ 3 = 5, 1 left.")
  (hint "Ones: 4 ÷ 3 = 1, 1 left. Tenths: 16 ÷ 3."))
```

```check
(text
  (ask "What is 2.88 ÷ 9?")
  (accept "0.32") (accept ".32")
  (true "2.88 ÷ 9 = 0.32")
  (wrong-if "3.2" "2 ones ÷ 9 = 0 ones. The 3 is 3 tenths: 0.32.")
  (hint "Regroup: 28 tenths ÷ 9 = 3, 1 left."))
```

---

```check
(text
  (ask "A 7.20 dollar pizza is shared equally by 6 friends. How much does each pay, in dollars?")
  (accept "1.20") (accept "1.2") (accept "$1.20") (accept "$1.2")
  (true "7.20 ÷ 6 = 1.20")
  (wrong-if "1.02" "7 ÷ 6 = 1, 1 left. 12 tenths ÷ 6 = 2 tenths. So 1.20.")
  (hint "Ones: 7 ÷ 6 = 1, 1 left. Tenths: 12 ÷ 6."))
```

```check
(choice
  (ask "Jen says 4.08 ÷ 4 = 1.2. What went wrong?")
  (right "She left out the 0 tenths: 4.08 ÷ 4 = 1.02" (true "4.08 ÷ 4 = 1.02"))
  (wrong "Nothing: 1.2 is right" (false "4.08 ÷ 4 = 1.2")
    "Check: 1.2 × 4 = 4.8, not 4.08. The tenths place of the quotient needs a 0.")
  (wrong "She should get 12"
    "4 ÷ 4 = 1 one, so the quotient is about 1, not 12.")
  (hint "0 tenths ÷ 4 = ? tenths"))
```

So: divide place by place from the left, regroup what is left into the next place, and put the decimal point after the ones.
