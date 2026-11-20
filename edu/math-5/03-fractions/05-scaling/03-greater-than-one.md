# Scaling by more than 1

```lesson
(objective "Explain why multiplying a number greater than 0 by a fraction greater than 1 gives a product greater than the number.")
(standards "5.NF.B.5b")
(minutes 20)
```

Take a number greater than 0, and multiply it by a fraction greater
than 1. The product is always greater than the number. Here is why.

A fraction greater than 1 is 1 and a bit more: $5/4 = 1 + 1/4$. So

$$ 6 * (5/4) = 6 * 1 + 6 * (1/4) $$

$$ 6 * 1 + 6 * (1/4) = 6 + 6/4 $$

That is 6, and some more. So it is greater than 6.

```figure
(define k (slider 'k 4 8 5 "Fourths" 1))
(m5p3-scale 190 12 0.5 1 6 (/ k 4) "6"
  (string-append "6 x (" (m5p3-s k 4) ") = " (m5p3-s (* 6 k) 4)))
```

```check
(choice
  (ask "Why is" (math "4 * (7/5)") "greater than 4?")
  (right "7/5 = 1 + 2/5, so it is 4 and 4 x (2/5) more" (true "4 * (7/5) = 4 + 4 * (2/5)"))
  (wrong "Because multiplying always makes a number bigger"
    "That is not true: 4 x (1/2) = 2 is smaller than 4. It is bigger here because 7/5 is more than 1.")
  (wrong "Because 7 is greater than 4"
    "The numerator alone does not decide it. What matters is that 7/5 is more than 1.")
  (hint "Write 7/5 as 1 and a part."))
```

---

## Is the fraction greater than 1?

A fraction is greater than 1 when its numerator is greater than its
denominator: $5/4$, $7/3$, $9/8$. A mixed number such as $1 1/2$ is
greater than 1 too.

```check
(choice
  (ask "Which fraction is greater than 1?" ) 
  (right "8/7" (true "8/7 > 1"))
  (wrong "7/8"
    "7/8 has a numerator less than its denominator. It is less than 1.")
  (wrong "7/7"
    "7/7 is exactly 1, not more.")
  (hint "Compare each numerator with its denominator."))
```

---

## How much greater?

The bigger the fraction, the bigger the product. On the slider: 6
times $5/4$ is $7 1/2$, and 6 times $8/4$ is 12.

With a fraction just over 1, like $9/8$, the product is just over the
number.

```check
(choice
  (ask "Without multiplying: which is greater," (math "10 * (9/8)") "or" (math "10 * (3/2)") "?")
  (right "10 x (3/2)" (true "10 * (3/2) > 10 * (9/8)"))
  (wrong "10 x (9/8)"
    "9/8 is just over 1, but 3/2 is 1 1/2. Scaling by 3/2 stretches 10 more.")
  (wrong "They are equal"
    "9/8 and 3/2 are not equal, so the products are not equal.")
  (hint "Which is bigger, 9/8 or 3/2?"))
```

---

## Worked example

```example
(example
  (problem "Explain why 8 x (4/3) > 8.")
  (step "4/3 = 1 + 1/3.")
  (step "8 x (4/3) = 8 x 1 + 8 x (1/3) = 8 + 8/3.")
  (step "8 + 8/3 is 8 and some more.")
  (answer "So 8 x (4/3) > 8."))
```

```example
(example
  (problem "Explain why 3 x 2 1/2 > 3.")
  (step "2 1/2 is greater than 1.")
  (step (choice (ask "3 x 2 1/2 = 3 x 2 + 3 x (1/2). Is that more than 3?")
    (right "Yes: 3 x 2 is already 6" (true "3 * 2 > 3"))
    (wrong "No: 1/2 makes it smaller" "The 1/2 adds 3 x (1/2) more. The product is 7 1/2.")))
  (answer "3 x 2 1/2 = 7 1/2 > 3."))
```

---

## Practice

```check
(choice
  (ask "Without multiplying: compare" (math "12 * (11/10)") "with 12.")
  (right "Greater than 12" (true "12 * (11/10) > 12"))
  (wrong "Less than 12"
    "11/10 is more than 1: 1 + 1/10. So the product is 12 and a bit more.")
  (wrong "Equal to 12"
    "11/10 is not 1. It is 1 1/10.")
  (hint "Is 11/10 more than 1?"))
```

```check
(number
  (ask "Use" (math "5/3 = 1 + 2/3") ". What is" (math "9 * (5/3)") "?")
  (answer 15) (from "9 + 9 * (2/3)")
  (wrong-if 6 "That is 9 x (2/3). Add 9 x 1 too: 9 + 6.")
  (hint "9 x 1 + 9 x (2/3)."))
```

---

```check
(choice
  (ask "A recipe for 4 people is made" (math "1 1/2") "times as big. Is the new amount of flour more or less?")
  (right "More: 1 1/2 is greater than 1" (true "1 1/2 > 1"))
  (wrong "Less: there is a fraction"
    "A fraction greater than 1 stretches. 1 1/2 times as much is more.")
  (wrong "The same"
    "Only scaling by 1 keeps the amount the same.")
  (hint "Is 1 1/2 more than 1?"))
```

```check
(choice
  (ask "Which is true for every number greater than 0?")
  (right "Times 3/2, it gets bigger" (true "3/2 > 1"))
  (wrong "Times 2/3, it gets bigger"
    "2/3 is less than 1, so it shrinks the number.")
  (wrong "Times 3/3, it gets bigger"
    "3/3 is 1. Times 1, the number stays the same.")
  (hint "Which fraction is greater than 1?"))
```

For a number greater than 0, multiplying by a fraction greater than 1
gives a product greater than the number: it is the number and a part
more.
