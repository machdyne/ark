# Drawing lines of symmetry

```lesson
(objective "Find and draw all the lines of symmetry of a figure, and tell figures with none.")
(standards "4.G.A.3")
(minutes 25)
```

You can find all the lines of symmetry of a shape, or tell that it has none.

A rectangle that is not a square has 2 lines of symmetry: up and down, and side to side, through the middle.

```figure
(m4p4-shape '(60 180 260 180 260 70 60 70) #f)
(m4p4-fold 160 50 160 200)
(m4p4-fold 40 125 280 125)
(caption "A rectangle: 2 lines of symmetry")
```

```check
(number
  (ask "How many lines of symmetry does a rectangle that is not a square have?")
  (answer 2) (from "2")
  (wrong-if 4 "Its diagonals are not lines of symmetry: folded on them, the corners do not meet. It has 2.")
  (hint "Up and down, and side to side."))
```

---

## A square

A square has 4 lines of symmetry: up and down, side to side, and both diagonals.

```figure
(m4p4-shape '(100 60 220 60 220 180 100 180) #f)
(m4p4-fold 160 40 160 200)
(m4p4-fold 80 120 240 120)
(m4p4-fold 90 50 230 190)
(m4p4-fold 90 190 230 50)
(caption "A square: 4 lines of symmetry")
```

```check
(number
  (ask "How many lines of symmetry does a square have?")
  (answer 4) (from "4")
  (wrong-if 2 "A square also folds onto itself along both diagonals, because all its sides are equal. That makes 4.")
  (hint "Count the diagonals too."))
```

---

## None at all

Some shapes have no line of symmetry. A parallelogram that is not a rectangle or a rhombus has none.

```figure
(m4p4-shape '(40 170 220 170 280 70 100 70) 'grey)
(caption "No line of symmetry")
```

```check
(choice
  (ask "Why is the up-and-down line through the middle of this parallelogram not a line of symmetry?")
  (right "Folded, the slanted sides lean the same way and do not match.")
  (wrong "It is a line of symmetry." "Fold it: the left side slants one way and the right side the same way. A mirror image would slant the other way.")
  (hint "Picture the fold. Do the slanted sides land on each other?"))
```

---

## A circle

A circle has a line of symmetry through its center in every direction. There are more than you can count.

```figure
(define a (slider 'a 0 170 30 "Line" 10))
(ring 160 120 80 'ink 2)
(m4p4-fold (m4p4-px 160 120 100 a) (m4p4-py 160 120 100 a) (m4p4-px 160 120 100 (+ a 180)) (m4p4-py 160 120 100 (+ a 180)))
(dot 160 120)
(caption "Every line through the center works")
```

```check
(choice
  (ask "How many lines of symmetry does a circle have?")
  (right "more than you can count")
  (wrong "4" "Any line through the center folds a circle into matching halves, not just 4.")
  (wrong "1" "Turn the line to any direction through the center: it still works.")
  (hint "Move the slider. Does every line through the center work?"))
```

---

## A worked example

```figure
(m4p4-shape '(160 50 250 190 70 190) #f)
(m4p4-fold 160 30 160 210)
```

```example
(example
  (problem "This triangle has 2 equal sides. How many lines of symmetry does it have?")
  (step "Fold up and down through the top corner: the 2 equal sides match.")
  (step "Fold any other way: the halves do not match.")
  (step (number (ask "How many lines of symmetry?") (answer 1) (from "1")
          (wrong-if 3 "Only 1 fold here makes the halves match: the one through the top corner.")))
  (answer "1 line of symmetry."))
```

---

## Practice

```check
(number
  (ask "How many lines of symmetry does the letter H have?")
  (answer 2) (from "2")
  (wrong-if 1 "H folds up and down, and also side to side through the bar. That is 2.")
  (hint "Try up and down, then side to side."))
```

```check
(choice
  (ask "Which shape has no line of symmetry?")
  (right "a parallelogram that is not a rectangle or a rhombus")
  (wrong "a square" "A square has 4 lines of symmetry.")
  (wrong "a rectangle" "A rectangle has 2 lines of symmetry.")
  (hint "Which one slants with unequal sides?"))
```

To find lines of symmetry, try every fold that might work; some shapes have many, and some have none.
