# Subtracting by place

```lesson
(objective "Subtract decimals by lining up the places and regrouping, also across zeros, such as 5 - 2.36 = 2.64.")
(standards "5.NBT.B.7")
(minutes 20)
```

You can subtract any decimals on paper by lining up the places.

As in adding, put the decimal points in one column. Write 0s in empty
places so both numbers have the same places. Then subtract from the
right.

For 8.75 - 3.42: hundredths 5 - 2 = 3, tenths 7 - 4 = 3, ones 8 - 3 = 5.

```figure
(m5p2-column 200 60 '("8.75" "3.42") "-" "5.33" '())
(caption "8.75 - 3.42 = 5.33")
```

```check
(text
  (ask "What is 9.68 - 4.25?")
  (accept "5.43") (accept "5.430")
  (true "9.68 - 4.25 = 5.43")
  (wrong-if "13.93" "That adds. Take away each place: 8 - 5, 6 - 2, 9 - 4.")
  (hint "Hundredths: 8 - 5. Tenths: 6 - 2. Ones: 9 - 4."))
```

---

## Regrouping

6.4 - 2.75: write 6.4 as 6.40. You cannot take 5 hundredths from 0.

- Regroup 1 tenth: 3 tenths and 10 hundredths. 10 - 5 = 5.
- You cannot take 7 tenths from 3. Regroup 1 one: 5 ones and 13 tenths.
  13 - 7 = 6.
- Ones: 5 - 2 = 3.

$$ 6.4 - 2.75 = 3.65 $$

```figure
(m5p2-column 200 60 '("6.40" "2.75") "-" "3.65" '("5" "" "13" "10"))
(caption "New digits go above")
```

```check
(text
  (ask "What is 7.2 - 3.48?")
  (accept "3.72") (accept "3.720")
  (true "7.2 - 3.48 = 3.72")
  (wrong-if "4.28" "Write 7.2 as 7.20. Then you cannot take 8 from 0: regroup instead of taking 0 from 8.")
  (wrong-if "4.72" "You regrouped 1 one, so only 6 ones are left: 6 - 3 = 3.")
  (hint "7.20 - 3.48. Regroup 1 tenth: 1 tenth and 10 hundredths.")
  (hint "Then regroup 1 one: 6 ones and 11 tenths."))
```

---

## Across zeros

5 - 2.36: write 5 as 5.00. There are no tenths and no hundredths to
regroup from. Regroup 1 one as 10 tenths, then 1 tenth as 10
hundredths. Now there are 4 ones, 9 tenths and 10 hundredths.

$$ 5 - 2.36 = 2.64 $$

```figure
(m5p2-column 200 60 '("5.00" "2.36") "-" "2.64" '("4" "" "9" "10"))
(caption "5.00 = 4 ones, 9 tenths, 10 hundredths")
```

```check
(text
  (ask "What is 3 - 1.45?")
  (accept "1.55") (accept "1.550")
  (true "3 - 1.45 = 1.55")
  (wrong-if "2.45" "That takes 0 from 4 and 0 from 5. You take 4 and 5 away from 0s, so regroup: 3.00 is 2 ones, 9 tenths, 10 hundredths.")
  (wrong-if "1.65" "After you regroup 1 tenth into hundredths, 9 tenths are left, not 10: 9 - 4 = 5.")
  (hint "3.00 = 2 ones, 9 tenths, 10 hundredths.")
  (hint "10 - 5, 9 - 4, 2 - 1."))
```

---

## Worked example

```example
(example
  (problem "Find 10.5 - 4.87.")
  (step "Write 10.50 - 4.87.")
  (step "Regroup 1 tenth: 4 tenths, 10 hundredths. 10 - 7 = 3.")
  (step "Regroup 1 one: 9 ones, 14 tenths. 14 - 8 = 6. Ones: 9 - 4 = 5.")
  (answer "10.5 - 4.87 = 5.63"))
```

```example
(example
  (problem "Find 4 - 0.08.")
  (step "Write 4.00 - 0.08.")
  (step "Regroup: 3 ones, 9 tenths, 10 hundredths. 10 - 8 = 2.")
  (step (text (ask "So 4 - 0.08 = ?")
    (accept "3.92") (accept "3.920")
    (true "4 - 0.08 = 3.92")
    (wrong-if "4.08" "That adds. Taking away from 4 leaves less than 4.")))
  (answer "4 - 0.08 = 3.92"))
```

---

## Practice

```check
(text
  (ask "What is 12.3 - 5.6?")
  (accept "6.7") (accept "6.70")
  (true "12.3 - 5.6 = 6.7")
  (wrong-if "7.7" "After you regroup 1 one, there are 11 ones, not 12: 11 - 5 = 6.")
  (wrong-if "7.3" "That takes 3 from 6. Regroup: 13 tenths - 6 tenths = 7 tenths.")
  (hint "Regroup 1 one: 11 ones and 13 tenths."))
```

```check
(text
  (ask "What is 6 - 2.5?")
  (accept "3.5") (accept "3.50")
  (true "6 - 2.5 = 3.5")
  (wrong-if "4.5" "Write 6 as 6.0. After you regroup, 5 ones are left: 5 - 2 = 3.")
  (hint "6.0 = 5 ones and 10 tenths."))
```

---

```check
(text
  (ask "What is 20 - 7.15?")
  (accept "12.85") (accept "12.850")
  (true "20 - 7.15 = 12.85")
  (wrong-if "13.15" "The 0.15 is taken away too. Write 20.00 and regroup across the zeros.")
  (wrong-if "13.85" "After regrouping, 20 becomes 19 ones, 9 tenths, 10 hundredths. 19 - 7 = 12.")
  (hint "20.00 = 19 ones, 9 tenths and 10 hundredths."))
```

```check
(text
  (ask "What is 4.06 - 1.9?")
  (accept "2.16") (accept "2.160")
  (true "4.06 - 1.9 = 2.16")
  (wrong-if "3.87" "1.9 is 1 one and 9 tenths. Line up the decimal points: 4.06 - 1.90.")
  (wrong-if "3.16" "To take 9 tenths from 0, you regroup 1 one. Then 3 - 1 = 2 ones.")
  (hint "4.06 - 1.90."))
```

So: line up the decimal points, write 0s, and regroup from the next place to the left, even across zeros.
