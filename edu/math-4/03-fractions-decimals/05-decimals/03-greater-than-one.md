# Decimals greater than 1

```lesson
(objective "Write a mixed number with tenths or hundredths as a decimal, such as 3 7/100 = 3.07, and back.")
(standards "4.NF.C.6")
(minutes 20)
```

You can write a mixed number with tenths or hundredths as a decimal.

The whole number goes before the decimal point. The tenths and
hundredths go after it.

$$ 3 7/100 = 3.07 $$

```figure
(m4p3-place 45 40 "3" "0" "7")
(text 160 150 "3 ones, 0 tenths, 7 hundredths" 'centre 'body)
(text 160 190 "3.07" 'centre 'big 'bold)
```

```check
(text
  (ask "Write" (math "2 4/10") "as a decimal.")
  (accept "2.4") (accept "2.40")
  (wrong-if "2.04" "2.04 has 4 hundredths. 4/10 is 4 tenths: the first place after the decimal point.")
  (wrong-if "24" "24 is 24 wholes. Put the decimal point after the 2 wholes.")
  (hint "2 wholes, then the decimal point, then 4 tenths."))
```

---

## Reading it

You read 3.07 as "3 and 7 hundredths". The word "and" stands for the
decimal point. 5.6 is "5 and 6 tenths".

```check
(choice
  (ask "How do you read 4.25?")
  (right "4 and 25 hundredths" (true "4.25 = 4 25/100"))
  (wrong "425" "425 has no decimal point. 4.25 is between 4 and 5.")
  (wrong "4 and 25 tenths" "25 tenths is more than 2 wholes. Two places after the decimal point are hundredths.")
  (hint "Two digits after the decimal point: hundredths."))
```

---

## And back

To write 6.5 as a mixed number: 6 wholes and 5 tenths, so
$6.5 = 6 5/10$. To write 1.23: $1 23/100$.

```check
(fraction
  (ask "Write 8.09 as a mixed number. Type it like 2 1/4.")
  (answer 809 100) (equivalent) (true "8.09 = 8 9/100")
  (wrong-if (89 10) "8 9/10 is 8.9. In 8.09 the 9 is in the hundredths place: 8 9/100.")
  (hint "The 9 is in the second place after the decimal point."))
```

---

## Worked example

```example
(example
  (problem "Write 12 35/100 as a decimal.")
  (step "12 wholes go before the decimal point.")
  (step "35 hundredths: 3 tenths and 5 hundredths.")
  (answer "12 35/100 = 12.35."))
```

```example
(example
  (problem "Write 5 3/100 as a decimal.")
  (step "5 wholes, 0 tenths, 3 hundredths.")
  (step (text (ask "So 5 3/100 = ?")
    (accept "5.03")
    (wrong-if "5.3" "5.3 is 5 and 3 tenths. Put a 0 in the tenths place.")))
  (answer "5 3/100 = 5.03."))
```

---

## Practice

```check
(text
  (ask "Write" (math "1 75/100") "as a decimal.")
  (accept "1.75")
  (wrong-if "175" "175 has no decimal point. The 1 is a whole: 1.75.")
  (wrong-if "1.075" "75 hundredths take 2 places: 1.75.")
  (hint "1, the decimal point, then 75."))
```

```check
(text
  (ask "Write" (math "9 1/10") "as a decimal.")
  (accept "9.1") (accept "9.10")
  (wrong-if "9.01" "9.01 is 9 and 1 hundredth. 1 tenth goes right after the decimal point.")
  (hint "1 tenth is the first place after the decimal point."))
```

---

```check
(choice
  (ask "Which is equal to 7.6?")
  (right "7 6/10" (true "7.6 = 7 6/10"))
  (wrong "7 6/100" (false "7.6 = 7 6/100")
    "7 6/100 is 7.06. The 6 in 7.6 is in the tenths place.")
  (wrong "76/100" (false "7.6 = 76/100")
    "76/100 is less than 1. 7.6 has 7 wholes.")
  (hint "7 wholes and 6 of what?"))
```

So: the whole number goes before the decimal point, and the tenths
and hundredths after it: $3 7/100 = 3.07$.
