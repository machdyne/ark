# Subtracting with models

```lesson
(objective "Subtract decimals to hundredths with hundredths squares and a number line, such as 1.2 - 0.35 = 0.85.")
(standards "5.NBT.B.7")
(minutes 20)
```

You can subtract decimals by taking away hundredths on a square, or by
jumping back on a number line.

Start with 0.76 - 0.42. Shade 76 hundredths. Take away 4 tenths and 2
hundredths. 3 tenths and 4 hundredths are left.

$$ 0.76 - 0.42 = 0.34 $$

```figure
(m5p2-hund2 60 10 12 34 42 'warm 'bad)
(rect 200 38 14 14 'warm) (frame 200 38 14 14 'ink 1)
(text 222 50 "left: 0.34" 'left 'small)
(rect 200 78 14 14 'bad) (frame 200 78 14 14 'ink 1)
(text 222 90 "taken: 0.42" 'left 'small)
(caption "0.76 shaded, 0.42 taken away")
```

```check
(text
  (ask "What is 0.89 - 0.35?")
  (accept "0.54") (accept ".54")
  (true "0.89 - 0.35 = 0.54")
  (wrong-if "1.24" "That adds. Take away: 8 - 3 = 5 tenths, 9 - 5 = 4 hundredths.")
  (hint "Tenths: 8 - 3. Hundredths: 9 - 5."))
```

---

## Not enough hundredths

0.52 - 0.17: you cannot take 7 hundredths from 2. Break 1 tenth into
10 hundredths. Now there are 4 tenths and 12 hundredths.

12 - 7 = 5 hundredths, and 4 - 1 = 3 tenths.

$$ 0.52 - 0.17 = 0.35 $$

```check
(text
  (ask "What is 0.61 - 0.28?")
  (accept "0.33") (accept ".33")
  (true "0.61 - 0.28 = 0.33")
  (wrong-if "0.47" "That takes 1 from 8, the smaller from the bigger. You take 8 hundredths from 1, so break a tenth: 11 - 8 = 3.")
  (wrong-if "0.43" "After you break a tenth, only 5 tenths are left: 5 - 2 = 3 tenths.")
  (hint "Break 1 tenth: 5 tenths and 11 hundredths.")
  (hint "11 - 8 = 3 hundredths. 5 - 2 = 3 tenths."))
```

---

## Taking from a whole

1.2 - 0.35: 1.2 is 1 whole and 2 tenths. Take the 0.35 from the whole
square. 65 hundredths are left there, and 20 hundredths in the 2
tenths. 65 + 20 = 85 hundredths.

$$ 1.2 - 0.35 = 0.85 $$

```figure
(m5p2-hund2 20 30 12 65 35 'warm 'bad)
(m5p2-hund 170 30 12 20 'warm)
(label 80 170 "1 whole: 0.35 taken" 'small)
(label 230 170 "0.2" 'small)
(caption "Left: 0.65 + 0.2 = 0.85")
```

```check
(text
  (ask "What is 1.1 - 0.25?")
  (accept "0.85") (accept ".85")
  (true "1.1 - 0.25 = 0.85")
  (wrong-if "1.15" "That takes the smaller digit from the bigger one in each place. But 0.25 is taken from 1.1, so the answer is less than 1.")
  (wrong-if "0.75" "That is 1 - 0.25. The 0.1 is still there too: 0.75 + 0.1 = 0.85.")
  (hint "1 - 0.25 = 0.75. Then add the 0.1."))
```

---

## On a number line

Jump back from 1.2. First jump back 0.2 to land on 1. Then jump back
the rest, 0.15. You land on 0.85.

```figure
(m5p2-line 30 290 110 0.8 1.2 40 10)
(nl-jump 1.2 1 'warm "-0.2")
(nl-jump 1 0.85 'cool "-0.15")
(nl-mark 0.85 'ink)
(text (nl-x 0.85) 145 "0.85" 'centre 'body 'bold)
(caption "1.2 - 0.35: back 0.2, then back 0.15")
```

```check
(text
  (ask "Jump back from 2.3: first 0.3 to 2, then 0.14 more. What is 2.3 - 0.44?")
  (accept "1.86") (accept "1.860")
  (true "2.3 - 0.44 = 1.86")
  (wrong-if "2.14" "The second jump goes back from 2, so you land below 2: 2 - 0.14 = 1.86.")
  (hint "2.3 - 0.3 = 2.")
  (hint "2 - 0.14 = ?"))
```

---

## Worked example

```example
(example
  (problem "Find 0.9 - 0.46 with a square.")
  (step "0.9 is 90 hundredths: 9 full columns.")
  (step "Take away 46 hundredths: 4 columns and 6 squares.")
  (step "Left: 4 columns and 4 squares.")
  (answer "0.9 - 0.46 = 0.44"))
```

```example
(example
  (problem "Find 1.5 - 0.72 on a number line.")
  (step "Jump back 0.5 to 1.")
  (step "0.72 - 0.5 = 0.22 is left to jump.")
  (step (text (ask "1 - 0.22 = ?")
    (accept "0.78") (accept ".78")
    (true "1.5 - 0.72 = 0.78")
    (wrong-if "0.88" "1 - 0.22: 100 hundredths take away 22 is 78 hundredths.")))
  (answer "1.5 - 0.72 = 0.78"))
```

---

## Practice

```check
(text
  (ask "What is 0.74 - 0.5?")
  (accept "0.24") (accept ".24")
  (true "0.74 - 0.5 = 0.24")
  (wrong-if "0.69" "0.5 is 5 tenths, not 5 hundredths. Take 5 from the 7 tenths.")
  (hint "0.5 = 0.50."))
```

```check
(text
  (ask "What is 1 - 0.37?")
  (accept "0.63") (accept ".63")
  (true "1 - 0.37 = 0.63")
  (wrong-if "0.73" "Take 37 from 100 hundredths: 100 - 37 = 63, not 73.")
  (wrong-if "1.37" "That adds. Taking away from 1 leaves less than 1.")
  (hint "1 whole = 100 hundredths."))
```

---

```check
(text
  (ask "What is 0.83 - 0.47?")
  (accept "0.36") (accept ".36")
  (true "0.83 - 0.47 = 0.36")
  (wrong-if "0.44" "That takes 3 from 7. You must take 7 hundredths from 3: break a tenth, 13 - 7 = 6.")
  (hint "Break 1 tenth: 7 tenths and 13 hundredths."))
```

```check
(choice
  (ask "Which is the same as 1.4 - 0.6?")
  (right "0.8" (true "1.4 - 0.6 = 0.8"))
  (wrong "1.34" (false "1.4 - 0.6 = 1.34")
    "0.6 is 6 tenths, not 6 hundredths. 14 tenths take away 6 tenths are 8 tenths.")
  (wrong "1.2" (false "1.4 - 0.6 = 1.2")
    "That takes 4 from 6 in the tenths. You take 6 tenths from 14 tenths: 8 tenths.")
  (hint "1.4 is 14 tenths."))
```

So: to subtract decimals, take away place by place, breaking a tenth or a whole when there are not enough, or jump back on a number line.
