# Writing zeros to keep dividing

```lesson
(objective "Keep dividing past the last digit by writing zeros after it, such as 3 ÷ 4 = 0.75 and 6.3 ÷ 5 = 1.26.")
(standards "5.NBT.B.7")
(minutes 20)
```

You can keep dividing when something is left over, by writing zeros
after the last digit.

A 0 at the end of a decimal changes nothing: 6.3 = 6.30. But it lets
you regroup what is left into hundredths.

$6.3 ÷ 5$:

- Ones: 6 ÷ 5 = 1, 1 left.
- Tenths: 13 ÷ 5 = 2, 3 left.
- Write 6.3 as 6.30. Hundredths: 30 ÷ 5 = 6.

$$ 6.3 ÷ 5 = 1.26 $$

```check
(text
  (ask "What is 4.6 ÷ 4? Write a 0 when you need it.")
  (accept "1.15") (accept "1.150")
  (true "4.6 ÷ 4 = 1.15")
  (wrong-if "1.1" "2 tenths are left over. Write 4.60 and keep going: 20 hundredths ÷ 4 = 5.")
  (wrong-if "1.1 R 2" "In decimals you need not stop with a remainder. Write a 0: 20 hundredths ÷ 4 = 5.")
  (hint "4 ÷ 4 = 1. 6 tenths ÷ 4 = 1, 2 left.")
  (hint "4.60: 20 hundredths ÷ 4 = ?"))
```

---

## A whole number divided

$3 ÷ 4$: 3 ones ÷ 4 = 0 ones. Write 3 as 3.00.

- 30 tenths ÷ 4 = 7, 2 tenths left.
- 20 hundredths ÷ 4 = 5.

$$ 3 ÷ 4 = 0.75 $$

Share 3 wholes among 4 people. Cut each whole into 4 equal parts of
0.25. Each person gets 1 part of each whole: 3 parts of 0.25, which is
0.75.

```figure
(for-range 0 3 (lambda (i)
  (frac-bar-at 40 (+ 30 (* i 50)) 240 30 4 1 'warm)
  (text 30 (+ 50 (* i 50)) "1" 'right 'body)))
(for-range 0 4 (lambda (j) (label (+ 70 (* j 60)) 192 (list-ref '("A" "B" "C" "D") j) 'body 'bold)))
(caption "A gets 3 parts: 3 × 0.25 = 0.75")
```

```check
(text
  (ask "What is 1 ÷ 4?")
  (accept "0.25") (accept ".25")
  (true "1 ÷ 4 = 0.25")
  (wrong-if "4" "4 ÷ 1 = 4. Here 1 whole is shared by 4: each gets less than 1.")
  (wrong-if "0.4" "1 ÷ 4 is not 4 tenths: 0.4 × 4 = 1.6. Write 1.00: 100 hundredths ÷ 4 = 25 hundredths.")
  (hint "1 = 1.00 = 100 hundredths."))
```

---

## Worked example

```example
(example
  (problem "Find 7 ÷ 2.")
  (step "7 ÷ 2 = 3, 1 left.")
  (step "Write 7.0. 10 tenths ÷ 2 = 5.")
  (answer "7 ÷ 2 = 3.5"))
```

```example
(example
  (problem "Find 5.4 ÷ 4.")
  (step "Ones: 5 ÷ 4 = 1, 1 left. Tenths: 14 ÷ 4 = 3, 2 left.")
  (step "Write 5.40. Hundredths: 20 ÷ 4 = 5.")
  (step (text (ask "So 5.4 ÷ 4 = ?")
    (accept "1.35") (accept "1.350")
    (true "5.4 ÷ 4 = 1.35")
    (wrong-if "1.3" "2 tenths are left over. Write a 0 and keep dividing: 20 hundredths ÷ 4 = 5.")))
  (answer "5.4 ÷ 4 = 1.35"))
```

---

## Practice

```check
(text
  (ask "What is 9 ÷ 4?")
  (accept "2.25") (accept "2.250")
  (true "9 ÷ 4 = 2.25")
  (wrong-if "2.1" "9 ÷ 4 = 2, 1 left. 1 is 10 tenths: 10 ÷ 4 = 2, 2 left. Then 20 hundredths ÷ 4 = 5.")
  (wrong-if "2 R 1" "Keep going: write 9.00 and divide the tenths and hundredths too.")
  (hint "9.00 ÷ 4."))
```

```check
(text
  (ask "What is 5.1 ÷ 6?")
  (accept "0.85") (accept ".85")
  (true "5.1 ÷ 6 = 0.85")
  (wrong-if "0.8" "3 tenths are left. Write 5.10: 30 hundredths ÷ 6 = 5.")
  (hint "51 tenths ÷ 6 = 8, 3 left.")
  (hint "30 hundredths ÷ 6 = ?"))
```

---

```check
(text
  (ask "A 3 meter board is cut into 5 equal pieces. How long is each piece, in meters?")
  (accept "0.6") (accept ".6") (accept "0.60")
  (unit "meters")
  (true "3 ÷ 5 = 0.6")
  (wrong-if "1.6" "5 pieces of 1.6 meters are 8 meters, not 3. 30 tenths ÷ 5 = 6 tenths.")
  (wrong-if "0.5" "5 × 0.5 = 2.5, not 3. 3 = 30 tenths, and 30 ÷ 5 = 6 tenths.")
  (hint "3 = 30 tenths."))
```

```check
(choice
  (ask "Why may you write 0s after 6.3 when you divide it?")
  (right "6.3, 6.30 and 6.300 are the same number" (true "6.3 = 6.30"))
  (wrong "The 0s make the number bigger"
    "A 0 at the end after the decimal point adds 0 hundredths. The number stays the same.")
  (wrong "You may not: you must stop with a remainder"
    "With decimals you can regroup a remainder into the next smaller place. Writing 0s makes room for it.")
  (hint "Is 6.30 more than 6.3?"))
```

So: when something is left, write a 0 after the last digit and keep dividing in the next smaller place.
