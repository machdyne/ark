# Rounding to any place

```lesson
(objective "Round a decimal to any place by looking at the digit to the right of that place, such as 3.476 to the nearest hundredth, 3.48.")
(standards "5.NBT.A.4")
(minutes 25)
```

You can round a decimal to any place by looking at one digit.

To round 3.476 to the nearest hundredth:

1. Find the hundredths digit: 7. So 3.476 is between 3.47 and 3.48.
2. Look at the digit just to its right: 6.
3. 6 is 5 or more, so the number is at or past halfway. Round up: 3.48.

If the digit to the right is less than 5, keep the digit as it is.

```figure
(m5p1-zoom 30 3.4 3.5 0.01 0.05 3.47 2)
(nl-mark 3.476 'warm "3.476")
(label 160 205 "3.476 is nearer to 3.48" 'body 'bold)
```

```check
(text
  (ask "Round 5.132 to the nearest hundredth.")
  (accept "5.13") (accept "5.130")
  (true "5.132 - 5.13 < 5.14 - 5.132")
  (wrong-if "5.14" "The digit to the right of the hundredths is 2. 2 is less than 5, so keep the 3.")
  (wrong-if "5.1" "5.1 is the nearest tenth. Round to the hundredths: 2 places.")
  (hint "The hundredths digit is 3. Look at the digit to its right."))
```

---

## Why it works

The digit to the right tells which half the number is in. 3.476 is
between 3.470 and 3.480. The halfway point is 3.475. A 5 or more in the
thousandths means at or past halfway.

```check
(choice
  (ask "To round 8.254 to the nearest tenth, which digit do you look at?")
  (right "the 5, in the hundredths" (true "8.254 > 8.25"))
  (wrong "the 4, the last digit" "Look at the digit just to the right of the tenths place: the hundredths.")
  (wrong "the 2, in the tenths" "The 2 is the digit you round. The digit to its right decides.")
  (hint "Which place is just to the right of the tenths?"))
```

---

## Rounding up past 9

Rounding up can change more than one digit. Round 2.397 to the nearest
hundredth: the 9 hundredths go up to 10 hundredths, which is 1 tenth.

So 2.397 rounds to 2.40, which is the same as 2.4.

```check
(text
  (ask "Round 6.998 to the nearest hundredth.")
  (accept "7.00") (accept "7") (accept "7.0")
  (true "7 - 6.998 < 6.998 - 6.99")
  (wrong-if "6.910" "9 hundredths plus 1 hundredth is 10 hundredths, which regroups. 6.99 + 0.01 = 7.00.")
  (wrong-if "6.99" "The digit to the right is 8, which is 5 or more. Round up.")
  (hint "6.998 is between 6.99 and 7.00.")
  (hint "8 is 5 or more."))
```

---

## Worked example

```example
(example
  (problem "Round 14.652 to the nearest whole number, tenth and hundredth.")
  (step "Whole: look at the tenths, 6. Round up: 15.")
  (step "Tenth: look at the hundredths, 5. Round up: 14.7.")
  (step "Hundredth: look at the thousandths, 2. Keep: 14.65.")
  (answer "15, 14.7 and 14.65"))
```

```example
(example
  (problem "Round 0.045 to the nearest hundredth.")
  (step "The hundredths digit is 4. The digit to its right is 5.")
  (step (text (ask "5 is 5 or more. So 0.045 rounds to ...") (accept "0.05") (accept ".05") (accept "0.050") (accept ".050") (true "0.045 = (0.04 + 0.05) ÷ 2")
    (wrong-if "0.04" "A 5 to the right means exactly halfway here. The usual rule rounds up.")))
  (answer "0.05"))
```

---

## Practice

```check
(text
  (ask "Round 9.071 to the nearest tenth.")
  (accept "9.1") (accept "9.10")
  (true "9.1 - 9.071 < 9.071 - 9")
  (wrong-if "9.0" "Look at the hundredths: 7. 7 is 5 or more, so the 0 tenths go up to 1.")
  (wrong-if "9.07" "That is the nearest hundredth. The question asks for tenths.")
  (hint "The digit to the right of the tenths is 7."))
```

```check
(text
  (ask "Round 0.384 to the nearest hundredth.")
  (accept "0.38") (accept ".38") (accept "0.380") (accept ".380")
  (true "0.384 - 0.38 < 0.39 - 0.384")
  (wrong-if "0.39" "The digit to the right is 4, less than 5. Keep the 8.")
  (wrong-if "0.4" "That is the nearest tenth. Round to the hundredths.")
  (hint "Look at the thousandths digit."))
```

---

```check
(number
  (ask "Round 27.501 to the nearest whole number.")
  (answer 28)
  (true "28 - 27.501 < 27.501 - 27")
  (wrong-if 27 "Look at the tenths: 5. 5 or more rounds up, to 28.")
  (hint "The digit to the right of the ones is 5."))
```

```check
(choice
  (ask "Which number rounds to 1.25 at the nearest hundredth?")
  (right "1.246" (true "1.25 - 1.246 < 1.246 - 1.24"))
  (wrong "1.244" (false "1.25 - 1.244 < 1.244 - 1.24")
    "The thousandths digit is 4, less than 5. 1.244 rounds to 1.24.")
  (wrong "1.256" (false "1.256 - 1.25 < 1.26 - 1.256")
    "The thousandths digit is 6, so 1.256 rounds up to 1.26.")
  (hint "Numbers from 1.245 up to just under 1.255 round to 1.25."))
```

So: look at the digit just right of the place; 5 or more rounds up, less
than 5 keeps the digit.
