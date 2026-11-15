# Separating parts

```lesson
(objective "Subtract fractions with like denominators as taking parts away from the same whole, including 1 - 3/8 = 8/8 - 3/8.")
(standards "4.NF.B.3a")
(minutes 20)
```

You can subtract fractions by taking parts away from the same whole.

A bar shows $5/6$. Take away $2/6$. Then 3 sixths are left.

$$ 5/6 - 2/6 = 3/6 $$

```figure
(frac-bar-at 40 60 240 40 6 3 'warm)
(for-range 3 5 (lambda (i) (line (+ 42 (* 40 i)) 62 (+ 78 (* 40 i)) 98 'ink 2)))
(for-range 3 5 (lambda (i) (line (+ 42 (* 40 i)) 98 (+ 78 (* 40 i)) 62 'ink 2)))
(math 160 150 "5/6 - 2/6 = 3/6" 22)
(caption "Crossed out: the 2 sixths taken away.")
```

```check
(fraction
  (ask "Find" (math "7/8 - 4/8") ".")
  (answer 3 8) (equivalent) (true "7/8 - 4/8 = 3/8")
  (wrong-if (11 8) "You added. Taking away leaves fewer parts: 7 - 4.")
  (hint "7 eighths take away 4 eighths."))
```

---

## Subtract the numerators

With like denominators, subtract the numerators and keep the
denominator. The parts that are left are the same size as before.

$$ 9/10 - 6/10 = (9 - 6)/10 = 3/10 $$

On a number line, start at $9/10$ and jump 6 tenths to the left.

```figure
(m4p3-line 30 290 130 1 10 'none)
(math 30 160 "0" 16)
(math 290 160 "1" 16)
(nl-mark (/ 9 10) 'cool "9/10")
(for-range 0 6 (lambda (i) (nl-jump (/ (- 9 i) 10) (/ (- 8 i) 10) 'warm)))
(nl-mark (/ 3 10) 'warm)
(math (nl-x (/ 3 10)) 160 "3/10" 14)
(caption "6 jumps of 1/10 to the left")
```

```check
(fraction
  (ask "Find" (math "11/12 - 5/12") ".")
  (answer 6 12) (equivalent) (true "11/12 - 5/12 = 6/12")
  (wrong-if (16 12) "You added. Subtract: 11 - 5.")
  (hint "11 - 5 twelfths."))
```

---

## Taking from 1 whole

To find $1 - 3/8$, write the 1 as eighths. A whole is $8/8$.

$$ 1 - 3/8 = 8/8 - 3/8 = 5/8 $$

```figure
(frac-bar-at 40 60 240 40 8 5 'warm)
(for-range 5 8 (lambda (i) (line (+ 42 (* 30 i)) 62 (+ 68 (* 30 i)) 98 'ink 2)))
(math 160 150 "8/8 - 3/8 = 5/8" 22)
(caption "The whole is 8/8. Take away 3/8.")
```

```check
(fraction
  (ask "Find" (math "1 - 2/5") ".")
  (answer 3 5) (equivalent) (true "1 - 2/5 = 3/5")
  (wrong-if (1 5) "You took 2 from 1? Write the 1 as 5/5 first. Then 5 - 2 = 3.")
  (wrong-if (2 5) "2/5 is the part taken away. What is left of the 5 fifths?")
  (hint "1 = 5/5."))
```

---

## Worked example

```example
(example
  (problem "Find 1 - 4/6.")
  (step "Write 1 as sixths: 1 = 6/6.")
  (step "Subtract the numerators: 6 - 4 = 2.")
  (answer "1 - 4/6 = 2/6."))
```

```example
(example
  (problem "Find 1 - 7/10.")
  (step "Write 1 as tenths: 1 = 10/10.")
  (step (fraction (ask "10/10 - 7/10 = ?")
    (answer 3 10) (equivalent) (true "10/10 - 7/10 = 3/10")
    (wrong-if (17 10) "You added. Take 7 tenths away.")))
  (answer "1 - 7/10 = 3/10."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "4/5 - 1/5") ".")
  (answer 3 5) (equivalent) (true "4/5 - 1/5 = 3/5")
  (wrong-if (5 5) "You added. Take 1 fifth away from 4 fifths.")
  (hint "4 - 1 fifths."))
```

```check
(fraction
  (ask "Find" (math "1 - 1/3") ".")
  (answer 2 3) (equivalent) (true "1 - 1/3 = 2/3")
  (wrong-if (0 3) "1 is not 1/3. A whole is 3/3, and 3 - 1 = 2.")
  (hint "1 = 3/3."))
```

---

```check
(choice
  (ask "Jo says" (math "6/8 - 2/8 = 4/0") ". What is the mistake?")
  (right "She subtracted the denominators: the parts are still eighths" (true "6/8 - 2/8 = 4/8"))
  (wrong "She should have added the numerators"
    "This is taking away, so subtract the numerators. The mistake is with the denominator.")
  (wrong "There is no mistake"
    "4/0 would mean parts of no size. Taking parts away does not change their size: 4/8.")
  (hint "What do the parts look like after you take some away?"))
```

```check
(fraction
  (ask "Find" (math "1 - 5/12") ".")
  (answer 7 12) (equivalent) (true "1 - 5/12 = 7/12")
  (wrong-if (5 12) "5/12 is what you take away. 12 - 5 twelfths are left.")
  (hint "1 = 12/12."))
```

So: to subtract fractions with like denominators, subtract the
numerators and keep the denominator; write 1 as $b/b$ first.
