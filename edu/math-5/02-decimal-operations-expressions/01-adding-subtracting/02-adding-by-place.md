# Adding by place

```lesson
(objective "Add decimals by lining up the places, writing a 0 in an empty place and regrouping, such as 3.6 + 1.47 = 5.07.")
(standards "5.NBT.B.7")
(minutes 20)
```

You can add any decimals on paper by lining up the places.

Write the numbers one under the other, with the decimal points in one
column. Then ones are under ones, tenths under tenths and hundredths
under hundredths.

3.6 has no hundredths. Write a 0 there: 3.6 = 3.60. The 0 changes
nothing; it only keeps the column tidy.

```figure
(m5p2-column 110 60 '("3.60" "1.47") "+" "" '())
(text 140 60 "3 ones 6 tenths" 'left 'small)
(text 140 86 "1 one 4 tenths" 'left 'small)
(text 140 102 "7 hundredths" 'left 'small)
(caption "The decimal points in one column")
```

```check
(choice
  (ask "You add 2.5 and 0.34. Which way of lining them up is right?")
  (right "2.50 over 0.34, decimal points in one column")
  (wrong "2.5 over 0.34, both pushed to the right"
    "Then the 5 tenths sit over the 4 hundredths. Different places would be added together. Line up the decimal points.")
  (wrong "2.5 over .34, the 2 over the 3"
    "The 2 is 2 ones and the 3 is 3 tenths. They are different places. Line up the decimal points, then each place is under its own.")
  (hint "Which digits must be in the same column?"))
```

---

## Add from the right

Add the hundredths first, then the tenths, then the ones. Regroup as
in whole numbers: 10 of a place make 1 of the next place to the left.

For 3.60 + 1.47:

- Hundredths: 0 + 7 = 7.
- Tenths: 6 + 4 = 10 tenths. Write 0, regroup 1 one.
- Ones: 3 + 1 + 1 = 5.

```figure
(m5p2-column 200 60 '("3.60" "1.47") "+" "5.07" '("1" "" "" ""))
(caption "3.6 + 1.47 = 5.07")
```

Write the decimal point in the sum under the others.

```check
(text
  (ask "What is 2.8 + 4.35?")
  (accept "7.15") (accept "7.150")
  (true "2.8 + 4.35 = 7.15")
  (wrong-if "4.63" "The 8 is 8 tenths, but here it was added to the 5 hundredths. Write 2.8 as 2.80 and line up the decimal points.")
  (wrong-if "6.15" "8 + 3 = 11 tenths: write 1 and regroup 1 one. Ones: 2 + 4 + 1 = 7.")
  (hint "2.80 + 4.35. Hundredths first: 0 + 5.")
  (hint "Tenths: 8 + 3 = 11. Write 1, regroup 1."))
```

---

## Whole numbers and decimals

A whole number has its decimal point after the ones, even when you do
not write it: 6 = 6.00.

$$ 6 + 2.75 = 8.75 $$

```figure
(m5p2-column 200 60 '("6.00" "2.75") "+" "8.75" '())
(caption "6 = 6.00")
```

```check
(text
  (ask "What is 12 + 0.45?")
  (accept "12.45") (accept "12.450")
  (true "12 + 0.45 = 12.45")
  (wrong-if "0.57" "12 is 12 ones, not 12 hundredths. Write 12 as 12.00, then add.")
  (wrong-if "57" "The 0.45 is less than 1. Adding it to 12 gives a little more than 12.")
  (hint "12 = 12.00."))
```

---

## Worked example

```example
(example
  (problem "Add 15.08 + 3.94.")
  (step "Hundredths: 8 + 4 = 12. Write 2, regroup 1 tenth.")
  (step "Tenths: 0 + 9 + 1 = 10. Write 0, regroup 1 one.")
  (step "Ones: 5 + 3 + 1 = 9. Tens: 1.")
  (answer "15.08 + 3.94 = 19.02"))
```

```example
(example
  (problem "Add 7.6 + 2.58.")
  (step "Write 7.6 as 7.60, decimal points in one column.")
  (step "Hundredths: 0 + 8 = 8. Tenths: 6 + 5 = 11. Write 1, regroup 1 one.")
  (step (text (ask "Ones: 7 + 2 + 1 = 10. So 7.6 + 2.58 = ?")
    (accept "10.18") (accept "10.180")
    (true "7.6 + 2.58 = 10.18")
    (wrong-if "9.18" "Add the regrouped 1 to the ones: 7 + 2 + 1 = 10.")))
  (answer "7.6 + 2.58 = 10.18"))
```

---

## Practice

```check
(text
  (ask "What is 4.25 + 3.6?")
  (accept "7.85") (accept "7.850")
  (true "4.25 + 3.6 = 7.85")
  (wrong-if "4.61" "3.6 is 3 ones and 6 tenths. Line up the decimal points: 4.25 + 3.60.")
  (hint "3.6 = 3.60."))
```

```check
(text
  (ask "What is 9.47 + 0.86?")
  (accept "10.33") (accept "10.330")
  (true "9.47 + 0.86 = 10.33")
  (wrong-if "9.33" "4 + 8 + 1 = 13 tenths. Write 3 and regroup 1 one: 9 + 1 = 10 ones.")
  (wrong-if "9.1213" "Each column holds one digit. Regroup 13 hundredths and 13 tenths.")
  (hint "Hundredths: 7 + 6 = 13.")
  (hint "Tenths: 4 + 8 + 1 = 13."))
```

---

```check
(text
  (ask "What is 23.5 + 8 + 1.07?")
  (accept "32.57") (accept "32.570")
  (true "23.5 + 8 + 1.07 = 32.57")
  (wrong-if "24.65" "8 is 8 ones. Write it as 8.00 under the ones, not under the hundredths.")
  (hint "23.50 + 8.00 + 1.07."))
```

```check
(choice
  (ask "Lin adds 5.3 + 2.16 and gets 2.69. What went wrong?")
  (right "She lined up the last digits, so the 3 tenths went under the 6 hundredths")
  (wrong "She forgot to regroup"
    "No place here makes 10. The mistake is the lining up: 5.3 must be written as 5.30.")
  (wrong "Nothing: 2.69 is right" (false "5.3 + 2.16 = 2.69")
    "The sum must be more than 5, since 5.3 is more than 5. The right sum is 7.46.")
  (hint "Is 2.69 even more than 5.3?"))
```

So: line up the decimal points, write 0s in empty places, add from the right and regroup.
