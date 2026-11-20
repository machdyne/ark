# Multiplying as resizing

```lesson
(objective "Explain multiplying as scaling: 3 x 4 stretches 4 to 3 times its size, and (1/2) x 4 shrinks 4 to half its size.")
(standards "5.NF.B.5a")
(minutes 20)
(keywords "scaling")
```

Multiplying can resize a number. $3 * 4$ is 4 stretched to 3 times its
size: 12.

$(1/2) * 4$ is 4 shrunk to half its size: 2.

Seeing a product as resizing is called **scaling**: one factor is
resized by the other factor.

```figure
(define i (choice 'f '("1/2" "1" "2" "3") "Factor"))
(define f (list-ref '(0.5 1 2 3) i))
(m5p3-scale 190 12 1 1 4 f "4"
  (string-append (list-ref '("1/2" "1" "2" "3") i) " x 4 = " (fmt (* f 4) 0)))
```

```check
(number
  (ask "Scaling 5 by 3 stretches it to 3 times its size. What is" (math "3 * 5") "?")
  (answer 15) (from "3 * 5")
  (wrong-if 8 "Stretching to 3 times the size is 5 + 5 + 5, not 5 + 3.")
  (hint "3 times 5."))
```

---

## Shrinking

A fraction less than 1 shrinks a number greater than 0.

- $(1/2) * 4 = 2$: half the size.
- $(1/4) * 8 = 2$: a fourth of the size.
- $(3/4) * 8 = 6$: three fourths of the size.

```check
(number
  (ask "Scaling 10 by" (math "1/2") "shrinks it to half its size. What is" (math "(1/2) * 10") "?")
  (answer 5) (from "(1/2) * 10")
  (wrong-if 20 "That stretches 10 to 2 times its size. Half of 10 is smaller: 5.")
  (wrong-if 9.5 "Scaling by 1/2 is not taking away 1/2. It is half the size.")
  (hint "Half of 10."))
```

---

## The scaling factor

In a scaling, one factor does the resizing. It tells how big the
product is next to the other factor.

- 2: twice as big.
- $1/3$: a third as big.
- 1: the same size.

```check
(choice
  (ask "A photo is 6 inches wide. It is scaled by" (math "2/3") ". How does the new width compare with 6 inches?")
  (right "It is smaller: 2/3 of 6 inches, which is 4 inches" (true "(2/3) * 6 = 4"))
  (wrong "It is bigger, since multiplying makes numbers bigger"
    "Multiplying by a number less than 1 shrinks. 2/3 of 6 is 4, less than 6.")
  (wrong "It is 6 + 2/3 inches"
    "Scaling multiplies, it does not add. (2/3) x 6 = 4.")
  (hint "Is 2/3 more or less than 1?"))
```

---

## Worked example

```example
(example
  (problem "Describe 4 x 3 and (1/3) x 3 as scaling.")
  (step "4 x 3 stretches 3 to 4 times its size: 12.")
  (step "(1/3) x 3 shrinks 3 to a third of its size: 1.")
  (answer "4 stretches, 1/3 shrinks."))
```

```example
(example
  (problem "A ribbon is 8 feet long. It is scaled by 3/4. How long is it now?")
  (step "3/4 is less than 1, so the ribbon shrinks.")
  (step (number (ask "(3/4) x 8 = ? feet") (answer 6) (from "(3/4) * 8")
    (wrong-if 10.6666666667 "That is 8 x 4/3, which stretches. 3/4 of 8 is 6.")))
  (answer "The ribbon is 6 feet long."))
```

---

## Practice

```check
(choice
  (ask "Which product shrinks 9?")
  (right "(1/3) x 9" (true "(1/3) * 9 < 9"))
  (wrong "3 x 9"
    "3 stretches 9 to 3 times its size: 27.")
  (wrong "1 x 9"
    "1 keeps 9 the same size.")
  (hint "Which factor is less than 1?"))
```

```check
(number
  (ask "A drawing is 5 centimeters tall. It is scaled by 4. How tall is it now, in centimeters?")
  (answer 20) (unit "centimeters") (from "4 * 5")
  (wrong-if 9 "Scaling by 4 means 4 times as tall, not 4 more.")
  (hint "4 times 5."))
```

---

```check
(number
  (ask "A drawing is 12 centimeters tall. It is scaled by" (math "1/4") ". How tall is it now, in centimeters?")
  (answer 3) (unit "centimeters") (from "(1/4) * 12")
  (wrong-if 48 "That stretches to 4 times. Scaling by 1/4 shrinks to a fourth: 12 ÷ 4.")
  (hint "A fourth of 12."))
```

```check
(choice
  (ask "What does scaling 7 by 1 do?")
  (right "It keeps 7 the same size" (true "1 * 7 = 7"))
  (wrong "It stretches 7 a little"
    "1 x 7 = 7. Scaling by 1 leaves the size as it is.")
  (wrong "It shrinks 7 a little"
    "1 x 7 = 7. Neither bigger nor smaller.")
  (hint "1 x 7 = ?"))
```

Scaling sees multiplying as resizing: for a number greater than 0, a
factor greater than 1 stretches it, and a fraction less than 1 shrinks
it.
