# Adding with models

```lesson
(objective "Add decimals to hundredths with hundredths squares, joining tenths with tenths and hundredths with hundredths, such as 0.45 + 0.38 = 0.83.")
(standards "5.NBT.B.7")
(minutes 20)
```

You can add decimals by joining tenths with tenths and hundredths with
hundredths.

A 10 by 10 square is 1 whole. Each column is 1 tenth, and each small
square is 1 hundredth. Here 0.23 is shaded one way and 0.41 another
way, in one square.

```figure
(m5p2-hund2 60 10 12 23 41 'warm 'cool)
(text 200 50 "0.23" 'left 'body 'bold)
(rect 250 38 14 14 'warm) (frame 250 38 14 14 'ink 1)
(text 200 90 "0.41" 'left 'body 'bold)
(rect 250 78 14 14 'cool) (frame 250 78 14 14 'ink 1)
(caption "2 tenths 3 hundredths, then 4 tenths 1 hundredth")
```

```check
(text
  (ask "Count the shaded parts. What is 0.23 + 0.41?")
  (accept "0.64") (accept ".64")
  (true "0.23 + 0.41 = 0.64")
  (wrong-if "64" "23 + 41 = 64, but these are hundredths: 64 hundredths. Tenths: 2 + 4 = 6. Hundredths: 3 + 1 = 4. So 0.64.")
  (wrong-if "6.4" "The sum is less than 1 whole square, so it is less than 1. It is 6 tenths 4 hundredths: 0.64.")
  (hint "Tenths: 2 + 4. Hundredths: 3 + 1."))
```

---

## 10 hundredths make a tenth

Now add 0.45 + 0.38.

- Tenths: 4 + 3 = 7 tenths.
- Hundredths: 5 + 8 = 13 hundredths.

13 hundredths are 1 tenth and 3 hundredths. So you regroup: 7 tenths
and 1 more tenth make 8 tenths. The sum is 8 tenths 3 hundredths:

$$ 0.45 + 0.38 = 0.83 $$

```figure
(m5p2-hund2 60 10 12 45 38 'warm 'cool)
(text 200 50 "0.45" 'left 'body 'bold)
(rect 250 38 14 14 'warm) (frame 250 38 14 14 'ink 1)
(text 200 90 "0.38" 'left 'body 'bold)
(rect 250 78 14 14 'cool) (frame 250 78 14 14 'ink 1)
(text 200 130 "83 shaded" 'left 'small)
(caption "8 full columns and 3 more squares: 0.83")
```

```check
(text
  (ask "What is 0.27 + 0.36?")
  (accept "0.63") (accept ".63")
  (true "0.27 + 0.36 = 0.63")
  (wrong-if "0.53" "7 + 6 = 13 hundredths. That is 1 tenth and 3 hundredths, so the tenths are 2 + 3 + 1 = 6.")
  (wrong-if "0.513" "13 hundredths is not written as 13 after the 5. Regroup 10 hundredths as 1 tenth: 0.63.")
  (hint "Hundredths: 7 + 6 = 13. That is 1 tenth and 3 hundredths.")
  (hint "Tenths: 2 + 3 + 1."))
```

---

## Tenths and hundredths together

0.6 has no hundredths. Think of it as 0.60: 6 tenths, 0 hundredths.
Then join place by place.

$$ 0.6 + 0.25 = 0.85 $$

```figure
(m5p2-hund2 60 10 12 60 25 'warm 'cool)
(text 200 50 "0.6" 'left 'body 'bold)
(rect 250 38 14 14 'warm) (frame 250 38 14 14 'ink 1)
(text 200 90 "0.25" 'left 'body 'bold)
(rect 250 78 14 14 'cool) (frame 250 78 14 14 'ink 1)
(caption "6 tenths and 2 tenths 5 hundredths: 0.85")
```

```check
(text
  (ask "What is 0.3 + 0.52?")
  (accept "0.82") (accept ".82")
  (true "0.3 + 0.52 = 0.82")
  (wrong-if "0.55" "The 3 in 0.3 is 3 tenths, not 3 hundredths. Add it to the 5 tenths: 8 tenths. So 0.82.")
  (wrong-if "0.85" "The 3 is in the tenths place. Add it to the tenths: 3 + 5 = 8 tenths, and 2 hundredths stay.")
  (hint "0.3 = 0.30: 3 tenths, 0 hundredths."))
```

---

## More than 1 whole

When the tenths make 10 or more, they fill a whole square. 10 tenths
are 1 whole.

0.75 + 0.48: hundredths 5 + 8 = 13, so 1 tenth and 3 hundredths.
Tenths 7 + 4 + 1 = 12, so 1 whole and 2 tenths.

$$ 0.75 + 0.48 = 1.23 $$

```figure
(m5p2-hund 20 30 12 100 'warm)
(m5p2-hund 170 30 12 23 'warm)
(label 80 170 "1" 'big 'bold)
(label 230 170 "0.23" 'big 'bold)
(caption "1 whole square and 23 hundredths: 1.23")
```

```check
(text
  (ask "What is 0.6 + 0.55?")
  (accept "1.15") (accept "1.150")
  (true "0.6 + 0.55 = 1.15")
  (wrong-if "0.115" "6 tenths and 5 tenths are 11 tenths. That is 1 whole and 1 tenth, so the sum is more than 1.")
  (wrong-if "0.61" "The 6 is 6 tenths. Add it to the 5 tenths, not to the 5 hundredths.")
  (hint "Tenths: 6 + 5 = 11 tenths.")
  (hint "11 tenths = 1 whole and 1 tenth."))
```

---

## Worked example

```example
(example
  (problem "Add 0.56 + 0.29 with a hundredths square.")
  (step "Shade 56 hundredths: 5 columns and 6 squares.")
  (step "Shade 29 more: hundredths 6 + 9 = 15, so 1 more column and 5 squares.")
  (step "Tenths: 5 + 2 + 1 = 8 full columns.")
  (answer "0.56 + 0.29 = 0.85"))
```

```example
(example
  (problem "Add 0.38 + 0.47.")
  (step "Hundredths: 8 + 7 = 15. That is 1 tenth and 5 hundredths.")
  (step (text (ask "Tenths: 3 + 4 + 1 = 8. So 0.38 + 0.47 = ?")
    (accept "0.85") (accept ".85")
    (true "0.38 + 0.47 = 0.85")
    (wrong-if "0.715" "Regroup the 15 hundredths: 1 tenth and 5 hundredths. 0.85.")))
  (answer "0.38 + 0.47 = 0.85"))
```

---

## Practice

```check
(text
  (ask "What is 0.14 + 0.72?")
  (accept "0.86") (accept ".86")
  (true "0.14 + 0.72 = 0.86")
  (wrong-if "86" "14 + 72 = 86 counts hundredths, not wholes: 86 hundredths is 0.86.")
  (hint "Tenths: 1 + 7. Hundredths: 4 + 2."))
```

```check
(text
  (ask "What is 0.59 + 0.33?")
  (accept "0.92") (accept ".92")
  (true "0.59 + 0.33 = 0.92")
  (wrong-if "0.82" "9 + 3 = 12 hundredths: 1 tenth and 2 hundredths. Add that tenth: 5 + 3 + 1 = 9.")
  (wrong-if "0.812" "12 hundredths are 1 tenth and 2 hundredths. Regroup: 0.92.")
  (hint "Hundredths: 9 + 3 = 12."))
```

---

```check
(text
  (ask "What is 0.8 + 0.07?")
  (accept "0.87") (accept ".87")
  (true "0.8 + 0.07 = 0.87")
  (wrong-if "0.15" "0.8 is 8 tenths and 0.07 is 7 hundredths. They are different places, so they are not added together.")
  (wrong-if "1.5" "8 tenths and 7 hundredths do not make a whole. Write 8 in the tenths and 7 in the hundredths.")
  (hint "0.8 = 0.80."))
```

```check
(choice
  (ask "Which sum is more than 1?")
  (right "0.65 + 0.42" (true "0.65 + 0.42 = 1.07"))
  (wrong "0.45 + 0.42" (true "0.45 + 0.42 = 0.87")
    "4 tenths and 4 tenths are only 8 tenths, and the hundredths make less than 1 tenth. So the sum is less than 1.")
  (wrong "0.25 + 0.72" (true "0.25 + 0.72 = 0.97")
    "2 + 7 = 9 tenths, and 5 + 2 = 7 hundredths. 0.97 is just less than 1.")
  (hint "Add the tenths first. Do they make 10 tenths?"))
```

So: to add decimals, join tenths with tenths and hundredths with hundredths, and regroup 10 hundredths as 1 tenth.
