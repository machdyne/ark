# Zeros at the end

```lesson
(objective "Explain why 0.4 = 0.40 = 0.400, and use it to compare decimals with different numbers of places, such as 0.4 > 0.375.")
(standards "5.NBT.A.3b")
(minutes 20)
```

You can explain why 0.4 = 0.40 = 0.400, and use it to compare.

4 tenths is the same amount as 40 hundredths. In a 10 by 10 square,
4 columns are 40 small squares.

40 hundredths is the same as 400 thousandths, since each hundredth is
10 thousandths.

$$ 0.4 = 0.40 = 0.400 $$

```figure
(m5p1-hund 20 20 13 40 'warm)
(frac-bar-at 175 20 130 130 10 4 'warm)
(label 85 175 "40 hundredths" 'small)
(label 240 175 "4 tenths" 'small)
(label 160 205 "0.40 = 0.4" 'big 'bold)
```

```check
(choice
  (ask "Which is equal to 0.7?")
  (right "0.700" (true "0.7 = 0.700"))
  (wrong "0.07" (false "0.7 = 0.07")
    "A 0 between the decimal point and the 7 moves the 7 to the hundredths. 0.07 is 7 hundredths.")
  (wrong "0.007" (false "0.7 = 0.007")
    "Zeros before the 7 move it right. Zeros after the 7 do not: 0.700.")
  (hint "Which number still has the 7 in the tenths place?"))
```

---

## Same number of places

To compare decimals with different numbers of places, write zeros at
the end until they have the same number of places.

0.4 and 0.375: write 0.4 as 0.400. Now compare 400 thousandths and 375
thousandths.

$$ 0.400 > 0.375 $$

```figure
(m5p1-nl 20 300 110 0.3 0.5 0.01 0.1 1)
(nl-mark 0.375 'cool "0.375")
(nl-mark 0.4 'warm)
(label 160 150 "0.4 is to the right of 0.375" 'small)
```

```check
(choice
  (ask "Which is greater: 0.6 or 0.58?")
  (right "0.6" (true "0.6 > 0.58"))
  (wrong "0.58" (false "0.58 > 0.6")
    "58 is more than 6, but 0.6 = 0.60, which is 60 hundredths. 60 > 58.")
  (wrong "They are equal" (false "0.6 = 0.58")
    "Write 0.6 as 0.60. 60 hundredths and 58 hundredths are not equal.")
  (hint "Write 0.6 with 2 places."))
```

---

## Zeros in the middle are different

A zero at the end changes nothing. A zero between the decimal point and
a digit moves that digit: 0.5 and 0.05 are not equal.

```check
(choice
  (ask "Which pair is equal?")
  (right "3.2 and 3.200" (true "3.2 = 3.200"))
  (wrong "3.2 and 3.02" (false "3.2 = 3.02")
    "In 3.02 the 0 holds the tenths place, so the 2 is in the hundredths.")
  (wrong "3.2 and 3.002" (false "3.2 = 3.002")
    "In 3.002 the 2 is in the thousandths. Zeros before a digit move it.")
  (hint "Where is the 2 in each number?"))
```

---

## Worked example

```example
(example
  (problem "Compare 1.5 and 1.498.")
  (step "Write 1.5 as 1.500.")
  (step "500 thousandths and 498 thousandths: 500 > 498.")
  (answer "1.5 > 1.498"))
```

```example
(example
  (problem "Compare 0.09 and 0.1.")
  (step "Write both with 2 places: 0.09 and 0.10.")
  (step (choice (ask "9 hundredths and 10 hundredths. So ...")
    (right "0.09 < 0.1" (true "0.09 < 0.1"))
    (wrong "0.09 > 0.1" "9 looks bigger than 1, but 0.1 = 0.10, which is 10 hundredths.")))
  (answer "0.09 < 0.1"))
```

---

## Practice

```check
(choice
  (ask "Which sign makes this true? 0.25 ? 0.250")
  (right "=" (true "0.25 = 0.250"))
  (wrong "<" (false "0.25 < 0.250")
    "250 looks bigger than 25, but the extra 0 is at the end. It changes nothing.")
  (wrong ">" (false "0.25 > 0.250")
    "Both are 25 hundredths. A zero at the end does not make a number smaller.")
  (hint "Write 0.25 with 3 places."))
```

```check
(choice
  (ask "Which is greater: 2.8 or 2.799?")
  (right "2.8" (true "2.8 > 2.799"))
  (wrong "2.799" (false "2.799 > 2.8")
    "2.8 = 2.800. 800 thousandths > 799 thousandths.")
  (wrong "They are equal" (false "2.8 = 2.799")
    "They are very close, but 2.799 is 1 thousandth less than 2.8.")
  (hint "Write 2.8 with 3 places."))
```

---

```check
(text
  (ask "Write 0.9 with 3 places after the decimal point.")
  (accept "0.900") (accept ".900")
  (true "0.9 = 0.900")
  (wrong-if "0.009" "That moves the 9 to the thousandths. Write the zeros after the 9: 0.900.")
  (wrong-if "0.090" "That moves the 9 to the hundredths. The 9 must stay in the tenths.")
  (hint "Keep the 9 in the tenths place."))
```

```check
(choice
  (ask "Which is less: 0.3 or 0.299?")
  (right "0.299" (true "0.299 < 0.3"))
  (wrong "0.3" (false "0.3 < 0.299")
    "0.3 has fewer digits, but 0.3 = 0.300, and 300 thousandths is more than 299.")
  (wrong "They are equal" (false "0.3 = 0.299")
    "0.300 and 0.299 are 1 thousandth apart.")
  (hint "Write 0.3 as 0.300."))
```

So: zeros at the end of a decimal do not change it, so you can write
them to compare place by place.
