# Comparing tenths

```lesson
(objective "Compare two decimals in tenths with a model and a number line, and record with >, = or <.")
(standards "4.NF.C.7")
(minutes 20)
```

You can compare two decimals in tenths.

0.6 is 6 tenths and 0.4 is 4 tenths. Both are tenths of the same
whole, so the parts are the same size. 6 tenths are more than 4
tenths:

$$ 0.6 > 0.4 $$

```figure
(m4p3-tenths 80 30 216 30 6 'warm)
(m4p3-tenths 80 86 216 30 4 'cool)
(text 40 51 "0.6" 'centre 'body 'bold)
(text 40 107 "0.4" 'centre 'body 'bold)
(number-line 30 290 170 0 1 0.1 0.1)
(nl-mark 0.4 'cool)
(nl-mark 0.6 'warm)
```

```check
(choice
  (ask "Which is true?")
  (right "0.3 < 0.8" (true "0.3 < 0.8"))
  (wrong "0.3 > 0.8" (false "0.3 > 0.8")
    "3 tenths are fewer than 8 tenths. The open side of < faces the greater number.")
  (wrong "0.3 = 0.8" (false "0.3 = 0.8")
    "Equal would mean the same number of tenths. 3 and 8 are not the same.")
  (hint "Compare the tenths digits."))
```

---

## On a number line

On a number line, the greater number is farther to the right. 0.9 is
to the right of 0.5, so $0.9 > 0.5$. Move the sliders.

```figure
(define a (slider 'a 0 10 7 "First" 1))
(define b (slider 'b 0 10 3 "Second" 1))
(number-line 30 290 110 0 1 0.1 0.1)
(nl-mark (/ a 10) 'warm "A")
(nl-mark (/ b 10) 'cool "B")
(text 160 180 (string-append (fmt (/ a 10) 1) (cond ((> a b) " > ") ((< a b) " < ") (else " = ")) (fmt (/ b 10) 1)) 'centre 'big 'bold)
```

```check
(choice
  (ask "Which sign goes between 0.2 and 0.5 to make it true?")
  (right "<" (true "0.2 < 0.5"))
  (wrong ">" (false "0.2 > 0.5")
    "0.2 is 2 tenths and 0.5 is 5 tenths. 0.2 is the smaller one, to the left on the line.")
  (wrong "=" (false "0.2 = 0.5")
    "2 tenths and 5 tenths are not the same amount.")
  (hint "Which is farther to the right on the line?"))
```

---

## With wholes

Compare the ones first. $1.2 > 0.9$, because 1 whole is more than 9
tenths. If the ones are the same, compare the tenths: $2.7 > 2.4$.

```check
(choice
  (ask "Which is greater: 1.1 or 0.9?")
  (right "1.1" (true "1.1 > 0.9"))
  (wrong "0.9" (false "0.9 > 1.1")
    "9 is more than 1, but 0.9 has 0 ones and 1.1 has 1 one. Compare the ones first.")
  (wrong "They are equal" (false "1.1 = 0.9")
    "1.1 is more than 1 whole; 0.9 is less than 1 whole.")
  (hint "Look at the ones place first."))
```

---

## Worked example

```example
(example
  (problem "Compare 0.7 and 0.70.")
  (step "0.7 is 7 tenths.")
  (step "0.70 is 7 tenths and 0 hundredths.")
  (answer "0.7 = 0.70."))
```

```example
(example
  (problem "Compare 3.5 and 3.8.")
  (step "The ones are the same: 3.")
  (step (choice (ask "Compare the tenths. So ...")
    (right "3.5 < 3.8" (true "3.5 < 3.8"))
    (wrong "3.5 > 3.8" "5 tenths are fewer than 8 tenths.")))
  (answer "3.5 < 3.8."))
```

---

## Practice

```check
(choice
  (ask "Which is true?")
  (right "0.9 > 0.1" (true "0.9 > 0.1"))
  (wrong "0.9 < 0.1" (false "0.9 < 0.1")
    "9 tenths are more than 1 tenth. The open side of the sign faces the greater number.")
  (wrong "0.9 = 0.1" (false "0.9 = 0.1")
    "9 tenths and 1 tenth are not the same.")
  (hint "Compare the tenths."))
```

```check
(choice
  (ask "Which is greater: 2.3 or 3.2?")
  (right "3.2" (true "3.2 > 2.3"))
  (wrong "2.3" (false "2.3 > 3.2")
    "2.3 has 2 ones and 3.2 has 3 ones. Compare the ones first.")
  (wrong "They are equal" (false "2.3 = 3.2")
    "The same digits in different places make different numbers.")
  (hint "Compare the ones first."))
```

So: to compare tenths of the same whole, compare the ones, then the
tenths; the greater number is farther right on the number line.
