# Comparing hundredths

```lesson
(objective "Compare decimals to hundredths by place value, such as 0.7 > 0.65 because 0.7 = 0.70.")
(standards "4.NF.C.7")
(minutes 20)
```

You can compare decimals to hundredths by place value.

Is 0.7 or 0.65 greater? 65 is more than 7, but that is a trap. Write
0.7 with 2 places: $0.7 = 0.70$, which is 70 hundredths. Now
$70 > 65$, so:

$$ 0.7 > 0.65 $$

```figure
(m4p3-hund 10 20 14 70 'warm)
(m4p3-hund 170 20 14 65 'cool)
(text 80 190 "0.70" 'centre 'big 'bold)
(text 240 190 "0.65" 'centre 'big 'bold)
```

```check
(choice
  (ask "Which is greater: 0.4 or 0.38?")
  (right "0.4" (true "0.4 > 0.38"))
  (wrong "0.38" (false "0.38 > 0.4")
    "38 is more than 4, but 0.4 = 0.40, which is 40 hundredths. 40 > 38.")
  (wrong "They are equal" (false "0.4 = 0.38")
    "0.4 is 40 hundredths and 0.38 is 38 hundredths.")
  (hint "Write 0.4 with 2 places: 0.40."))
```

---

## Place by place

You can also compare place by place, from the left:

1. Compare the ones.
2. If they are the same, compare the tenths.
3. If those are the same, compare the hundredths.

For 0.52 and 0.58: the ones are both 0, the tenths are both 5. The
hundredths: 2 < 8. So $0.52 < 0.58$.

```check
(choice
  (ask "Which sign goes between 0.91 and 0.19 to make it true?")
  (right ">" (true "0.91 > 0.19"))
  (wrong "<" (false "0.91 < 0.19")
    "Compare the tenths first: 9 tenths are more than 1 tenth.")
  (wrong "=" (false "0.91 = 0.19")
    "The same digits in different places are different numbers.")
  (hint "Compare the tenths digits."))
```

---

## Worked example

```example
(example
  (problem "Compare 0.3 and 0.29.")
  (step "Write 0.3 as 0.30.")
  (step "30 hundredths and 29 hundredths: 30 > 29.")
  (answer "0.3 > 0.29."))
```

```example
(example
  (problem "Compare 1.05 and 1.5.")
  (step "The ones are both 1.")
  (step (choice (ask "Tenths: 0 and 5. So ...")
    (right "1.05 < 1.5" (true "1.05 < 1.5"))
    (wrong "1.05 > 1.5" "105 looks bigger than 15, but compare the places. 0 tenths is less than 5 tenths.")))
  (answer "1.05 < 1.5."))
```

---

## Practice

```check
(choice
  (ask "Which is greater: 0.6 or 0.59?")
  (right "0.6" (true "0.6 > 0.59"))
  (wrong "0.59" (false "0.59 > 0.6")
    "More digits does not mean greater. 0.6 = 0.60, and 60 > 59.")
  (hint "0.6 = 0.60."))
```

```check
(choice
  (ask "Which is true?")
  (right "0.5 = 0.50" (true "0.5 = 0.50"))
  (wrong "0.5 < 0.50" (false "0.5 < 0.50")
    "5 tenths are 50 hundredths. A 0 at the end does not change the amount.")
  (wrong "0.5 > 0.50" (false "0.5 > 0.50")
    "0.50 is 5 tenths and 0 hundredths: the same as 0.5.")
  (hint "Write 0.5 with 2 places."))
```

---

```check
(choice
  (ask "Which is the least: 0.09, 0.1 or 0.11?")
  (right "0.09" (true "0.09 < 0.1") (true "0.09 < 0.11"))
  (wrong "0.1" (false "0.1 < 0.09")
    "0.1 = 0.10, which is 10 hundredths. 0.09 is only 9 hundredths.")
  (wrong "0.11" (false "0.11 < 0.09")
    "0.11 has 1 tenth. 0.09 has 0 tenths, so it is less.")
  (hint "Compare the tenths first."))
```

So: write the decimals with the same number of places, or compare
place by place from the left: $0.7 > 0.65$ because $0.70 > 0.65$.
