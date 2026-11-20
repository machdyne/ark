# Equivalent fractions as times 1

```lesson
(objective "Explain a/b = (n x a)/(n x b) as multiplying a/b by n/n, which is 1, so the size does not change.")
(standards "5.NF.B.5b")
(minutes 20)
```

You know how to make equivalent fractions: multiply the top and the
bottom by the same number.

$$ 2/3 = (2 * 4)/(3 * 4) = 8/12 $$

Now you can see why the size stays the same. That is multiplying by
$4/4$:

$$ (2/3) * (4/4) = 8/12 $$

And $4/4 = 1$. Scaling by 1 keeps the size.

```figure
(define n (slider 'n 1 4 4 "n" 1))
(frac-bar 0 3 2 'cool "2/3")
(frac-bar 1 (* 3 n) (* 2 n) 'cool (m5p3-s (* 2 n) (* 3 n)))
(caption (string-append "(2/3) x (" (m5p3-s n n) "): the same size"))
```

```check
(fraction
  (ask "Multiply" (math "3/5") "by" (math "2/2") ". What fraction do you get?")
  (answer 6 10) (true "(3/5) * (2/2) = 6/10")
  (wrong-if (6 5) "Multiply the denominators too: 5 x 2 = 10.")
  (wrong-if (5 7) "That adds 2 to the top and the bottom. Multiply: 3 x 2 and 5 x 2.")
  (hint "(3 x 2)/(5 x 2)"))
```

---

## n/n is always 1

$2/2$, $3/3$, $10/10$: each is $n$ parts of $n$, the whole. So each is 1.

$$ a/b = (a/b) * (n/n) = (n * a)/(n * b) $$

```check
(choice
  (ask "Why is" (math "5/6 = 15/18") "?")
  (right "15/18 is (5/6) x (3/3), and 3/3 = 1" (true "(5/6) * (3/3) = 15/18"))
  (wrong "Because 15 and 18 are bigger"
    "Bigger numbers do not mean a bigger fraction. 15/18 is 5/6 times 1, so it is the same size.")
  (wrong "Because 15 - 5 = 10 and 18 - 6 = 12"
    "Adding or taking away changes the size. Multiplying by 3/3 does not.")
  (hint "What do you multiply 5 and 6 by?"))
```

---

## Not every fraction is 1

Multiplying the top and the bottom by different numbers changes the
size: $(2/3) * (4/2) = 8/6$, which is more than $2/3$, because $4/2$ is 2.

```check
(choice
  (ask "Which is equal to" (math "3/4") "?")
  (right "(3/4) x (5/5)" (true "(3/4) * (5/5) = 3/4"))
  (wrong "(3/4) x (5/4)"
    "5/4 is more than 1, so it stretches 3/4.")
  (wrong "(3/4) x (4/5)"
    "4/5 is less than 1, so it shrinks 3/4.")
  (hint "Which factor equals 1?"))
```

---

## Worked example

```example
(example
  (problem "Explain why 3/8 = 9/24.")
  (step "9 = 3 x 3 and 24 = 8 x 3.")
  (step "So 9/24 = (3/8) x (3/3).")
  (step "3/3 = 1, and times 1 the size stays the same.")
  (answer "3/8 = 9/24."))
```

```example
(example
  (problem "Write 2/5 with the denominator 20, as times 1.")
  (step "5 x 4 = 20, so multiply by 4/4.")
  (step (fraction (ask "(2/5) x (4/4) = ?") (answer 8 20) (true "(2/5) * (4/4) = 8/20")
    (wrong-if (2 20) "Multiply the numerator by 4 too.")))
  (answer "2/5 = 8/20."))
```

---

## Practice

```check
(fraction
  (ask "Multiply" (math "7/9") "by" (math "3/3") ".")
  (answer 21 27) (true "(7/9) * (3/3) = 21/27")
  (wrong-if (21 9) "Multiply the denominator by 3 too: 9 x 3 = 27.")
  (hint "(7 x 3)/(9 x 3)"))
```

```check
(number
  (ask "You multiply" (math "1/6") "by" (math "n/n") "and get" (math "5/30") ". What is n?")
  (answer 5) (from "30 / 6")
  (wrong-if 24 "That is 30 - 6. Multiplying: 6 x n = 30.")
  (hint "6 x ? = 30"))
```

---

```check
(choice
  (ask "Kai says" (math "(2/3) * (5/5)") "is bigger than" (math "2/3") ", since it is 10/15. Is he right?")
  (right "No: 5/5 = 1, so 10/15 is the same size as 2/3" (true "10/15 = 2/3"))
  (wrong "Yes: 10 and 15 are bigger numbers"
    "The parts are smaller too: fifteenths. 10/15 is the same amount as 2/3.")
  (wrong "Yes: multiplying makes things bigger"
    "Times 1, nothing changes. 5/5 = 1.")
  (hint "What is 5/5?"))
```

```check
(fraction
  (ask "Write" (math "5/6") "with the denominator 24 by multiplying by" (math "n/n") ".")
  (answer 20 24) (true "(5/6) * (4/4) = 20/24")
  (wrong-if (5 24) "Multiply the top by 4 as well.")
  (hint "6 x 4 = 24. Use 4/4."))
```

Making an equivalent fraction is multiplying by $n/n$, which is 1, so
the size does not change.
