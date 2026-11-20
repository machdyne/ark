# Comparing decimals

```lesson
(objective "Compare two decimals to thousandths place by place, starting from the greatest place, and record the result with >, = or <.")
(standards "5.NBT.A.3b")
(minutes 20)
```

You can compare two decimals place by place.

Line up the two numbers by their decimal points. Then start at the
greatest place and move right:

1. Compare the digits in the same place.
2. If they are the same, go one place right.
3. The first place where they differ decides.

```figure
(m5p1-chart 20 3.462 0 -3 -3 -2)
(m5p1-chart 110 3.458 0 -3 -3 -2)
(label 160 200 "3.462 > 3.458" 'big 'bold)
(caption "Ones and tenths are the same. Hundredths: 6 > 5.")
```

In 3.462 and 3.458, the ones are both 3 and the tenths are both 4.
The hundredths decide: 6 hundredths > 5 hundredths.

$$ 3.462 > 3.458 $$

```check
(choice
  (ask "Which sign makes this true? 0.817 ? 0.871")
  (right "<" (true "0.817 < 0.871"))
  (wrong ">" (false "0.817 > 0.871")
    "The tenths are both 8. In the hundredths, 1 < 7, so 0.817 is less. The 7 thousandths come too late to matter.")
  (wrong "=" (false "0.817 = 0.871")
    "The same digits in different places make different numbers. Compare the hundredths: 1 and 7.")
  (hint "The tenths are the same. Look at the hundredths."))
```

---

## The greatest place decides first

A bigger digit in a smaller place cannot beat a bigger digit in a
greater place. 5.1 > 4.999, because 5 ones > 4 ones. The 9s do not
matter.

```check
(choice
  (ask "Which is greater: 2.099 or 2.1?")
  (right "2.1" (true "2.1 > 2.099"))
  (wrong "2.099" (false "2.099 > 2.1")
    "2.099 has more digits, but more digits does not mean greater. The tenths decide: 1 tenth > 0 tenths.")
  (wrong "They are equal" (false "2.099 = 2.1")
    "The ones are the same, but the tenths are not: 0 and 1.")
  (hint "Compare the ones, then the tenths."))
```

---

## Signs

- $0.5 > 0.3$ means 0.5 is greater than 0.3.
- $0.3 < 0.5$ means 0.3 is less than 0.5.
- The sign opens toward the greater number.

```check
(choice
  (ask "Which is true?")
  (right "7.305 < 7.35" (true "7.305 < 7.35"))
  (wrong "7.305 > 7.35" (false "7.305 > 7.35")
    "305 looks bigger than 35, but compare place by place. Hundredths: 0 < 5.")
  (wrong "7.305 = 7.35" (false "7.305 = 7.35")
    "The hundredths differ: 0 and 5.")
  (hint "Line them up: 7.305 and 7.35_. Compare the hundredths."))
```

---

## Worked example

```example
(example
  (problem "Compare 12.64 and 12.604.")
  (step "Tens, ones, tenths: 1, 2, 6 in both.")
  (step "Hundredths: 4 and 0. 4 > 0.")
  (answer "12.64 > 12.604"))
```

```example
(example
  (problem "Compare 0.538 and 0.539.")
  (step "Tenths: 5 and 5. Hundredths: 3 and 3.")
  (step (choice (ask "Thousandths: 8 and 9. So ...")
    (right "0.538 < 0.539" (true "0.538 < 0.539"))
    (wrong "0.538 > 0.539" "8 thousandths are less than 9 thousandths.")))
  (answer "0.538 < 0.539"))
```

---

## Practice

```check
(choice
  (ask "Which sign makes this true? 4.2 ? 4.199")
  (right ">" (true "4.2 > 4.199"))
  (wrong "<" (false "4.2 < 4.199")
    "199 is more than 2, but those digits are in smaller places. Tenths: 2 > 1.")
  (wrong "=" (false "4.2 = 4.199")
    "The tenths differ: 2 and 1.")
  (hint "Compare the tenths."))
```

```check
(choice
  (ask "Which is greater: 0.06 or 0.059?")
  (right "0.06" (true "0.06 > 0.059"))
  (wrong "0.059" (false "0.059 > 0.06")
    "59 looks bigger than 6, but compare the hundredths: 6 > 5.")
  (wrong "They are equal" (false "0.06 = 0.059")
    "The hundredths differ: 6 and 5.")
  (hint "Both have 0 tenths. Look at the hundredths."))
```

---

```check
(choice
  (ask "Which sign makes this true? 9.010 ? 9.01")
  (right "=" (true "9.010 = 9.01"))
  (wrong ">" (false "9.010 > 9.01")
    "9.010 has one more digit, but it is a 0 at the end. Every place has the same digit.")
  (wrong "<" (false "9.010 < 9.01")
    "Compare each place: ones 9 and 9, tenths 0 and 0, hundredths 1 and 1, thousandths 0 and 0.")
  (hint "Write 9.01 with 3 places."))
```

```check
(choice
  (ask "Which is less: 15.3 or 1.53?")
  (right "1.53" (true "1.53 < 15.3"))
  (wrong "15.3" (false "15.3 < 1.53")
    "Line them up by the decimal point. 15.3 has 1 ten. 1.53 has 0 tens.")
  (wrong "They are equal" (false "15.3 = 1.53")
    "The digits are the same, but the decimal point is in a different place.")
  (hint "Line up the decimal points first."))
```

So: line up the decimal points and compare from the greatest place; the
first place that differs decides.
