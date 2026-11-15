# Decimals

```lesson
(objective "Read decimals as tenths and hundredths, as in prices.")
(minutes 20)
(keywords "decimal" "decimal point" "tenth" "hundredth")
```

Prices, measurements and calculator answers use decimals, which carry
place value past the ones.

A **decimal** is a number written with a **decimal point**, a dot
that separates the whole part from the part less than one: 3.75. The
digits after the point are parts of one.

The first place after the point is **tenths**: a **tenth** is $1/10$,
one of 10 equal parts. The second place is **hundredths**: a
**hundredth** is $1/100$.

| ones | . | tenths | hundredths |
|---|---|---|---|
| 3 | . | 7 | 5 |

```check
(choice
  (ask "In 3.75, what is the 7 worth?")
  (right "7 tenths" (true "0.7 = 7/10"))
  (wrong "7 ones" "The 7 is after the decimal point, so it is a part of one: the first place after the point is tenths.")
  (wrong "7 hundredths" "Hundredths are the second place after the point. The 7 is first: tenths.")
  (hint "Count places after the point: tenths, then hundredths."))
```

---

## Money is in hundredths

A cent is one hundredth of a dollar: 100 cents make 1 dollar. So
\$3.75 is 3 dollars and 75 cents, and the 75 is $75/100$ of a dollar.

On the square, the whole is one dollar cut into 100 equal parts.

```figure
(define c (slider 'c 0 100 35 "Cents" 1))
(nu1-hundred 60 20 15 c 'warm)
(text 160 195 (if (= c 100) "1.00" (string-append "0." (if (< c 10) "0" "") (fmt c 0))) 'centre 'body 'bold)
(caption "Each small square is 1 cent, a hundredth of a dollar.")
```

```check
(choice
  (ask "How do you write 5 dollars and 8 cents?")
  (right "\\$5.08")
  (wrong "\\$5.8" "\\$5.8 is 5 dollars and 8 tenths of a dollar, which is 80 cents. 8 cents is 8 hundredths, so it needs a 0 first: 5.08.")
  (wrong "\\$58" "The decimal point separates dollars from cents. Without it, the 8 cents become dollars.")
  (hint "Cents are hundredths: two places after the point."))
```

---

## A zero after the last digit changes nothing

0.5 and 0.50 are the same: 5 tenths is 50 hundredths. Prices show two
places, so 2.5 dollars is written \$2.50. But a zero right after the
point does change the value: 0.05 is 5 hundredths, much less than 0.5.

```check
(choice
  (ask "Which two are the same amount?")
  (right "0.4 and 0.40" (true "0.4 = 0.40"))
  (wrong "0.4 and 0.04" (false "0.4 = 0.04") "0.04 is 4 hundredths. 0.4 is 4 tenths, which is 40 hundredths: ten times as much.")
  (wrong "0.4 and 4.0" (false "0.4 = 4.0") "4.0 is 4 whole ones. 0.4 is less than one.")
  (hint "Write each as hundredths."))
```

---

## Comparing decimals

Line up the decimal points and compare place by place from the left,
as with whole numbers. More digits do not make it bigger: 0.6 is more
than 0.45, because 6 tenths beat 4 tenths.

```example
(example
  (problem "Which is more: 2.3 or 2.25?")
  (step "Ones: both 2.")
  (step "Tenths: 3 against 2. 3 is more.")
  (answer "2.3 is more."))
```

```example
(example
  (problem "Which is more: 0.7 or 0.65?")
  (step "Ones: both 0.")
  (step (choice (ask "Compare the tenths. Which is more?") (right "0.7" (true "0.7 > 0.65"))
    (wrong "0.65" (false "0.65 > 0.7") "65 looks bigger than 7, but compare tenths: 7 tenths against 6 tenths.")))
  (answer "0.7 is more."))
```

---

## Practice

```check
(number
  (ask "Write 4 dollars and 30 cents as a decimal number of dollars.")
  (answer 4.3) (unit "dollars") (from "4 + 30/100")
  (wrong-if 4.03 "30 cents is 30 hundredths, or 3 tenths: 4.30 or 4.3. 4.03 would be 3 cents.")
  (wrong-if 430 "430 is the number of cents. In dollars, put the point after the 4: 4.30.")
  (hint "30 cents is 30 hundredths of a dollar."))
```

```check
(choice
  (ask "Which is the smallest?")
  (right "0.09" (true "0.09 < 0.1"))
  (wrong "0.1" (false "0.1 < 0.09") "0.1 is 1 tenth, which is 10 hundredths. 0.09 is 9 hundredths, a little less.")
  (wrong "0.15" "0.15 has 1 tenth, more than 0.09, which has 0 tenths.")
  (hint "Compare the tenths first."))
```

```check
(number
  (ask "A price is \\$12.99. How many cents is the part after the point?")
  (answer 99)
  (wrong-if 9 "The two places after the point are tenths and hundredths together: 99 hundredths, which is 99 cents.")
  (hint "Two places after the point are hundredths of a dollar, which are cents."))
```

After the decimal point come tenths, then hundredths; in money, the
two places after the point are cents.
