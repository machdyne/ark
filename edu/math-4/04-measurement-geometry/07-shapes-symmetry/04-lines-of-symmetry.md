# Lines of symmetry

```lesson
(objective "Tell whether a line across a figure is a line of symmetry by folding it into matching parts.")
(standards "4.G.A.3")
(minutes 20)
(keywords "line of symmetry")
```

You can tell whether a fold line cuts a shape into 2 matching halves.

Fold this heart down the middle: the 2 halves lie exactly on top of each other.

A **line of symmetry** is a line across a figure that folds it into 2 matching parts.

```figure
(m4p4-shape '(160 200 60 110 60 70 90 45 130 50 160 80 190 50 230 45 260 70 260 110) 'grey)
(m4p4-fold 160 25 160 215)
(caption "The dashed line is a line of symmetry")
```

```check
(choice
  (ask "What happens when you fold a shape on a line of symmetry?")
  (right "The 2 halves match exactly.")
  (wrong "The shape gets cut into 2 pieces of any size." "Any line cuts a shape. A line of symmetry makes 2 halves that match exactly when folded.")
  (wrong "The shape turns over." "Folding lays one half on the other. On a line of symmetry they match.")
  (hint "Think of folding paper."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 4, 4.G.A.3")
```

---

## Fold it

Turn the toggle on to fold the left half over the line.

```figure
(define f (toggle 'f "Fold"))
(m4p4-shape '(60 180 260 180 260 70 60 70) #f)
(if f (rect 160 70 100 110 'grey))
(m4p4-fold 160 50 160 200)
(caption (if f "The left half lies exactly on the right half" "A rectangle and a fold line"))
```

When folded, each corner on the left lands on a corner on the right.

```check
(choice
  (ask "Is the up-and-down line through the middle of a rectangle a line of symmetry?")
  (right "yes")
  (wrong "no" "Fold the rectangle on it: the left half lands exactly on the right half. So it is a line of symmetry.")
  (hint "Do the halves match when folded?"))
```

---

## Not every line

A rectangle's diagonal, from corner to corner, cuts it into 2 equal triangles. But fold on it: the corners do not land on each other.

```figure
(m4p4-shape '(60 180 260 180 260 70 60 70) #f)
(m4p4-fold 60 180 260 70)
(caption "A diagonal of a rectangle: not a line of symmetry")
```

```check
(choice
  (ask "Is the diagonal of a rectangle that is not a square a line of symmetry?")
  (right "no")
  (wrong "yes" "The 2 triangles are the same size, but folding does not lay one on the other. The corners stick out. So it is not a line of symmetry.")
  (hint "Picture folding along it. Do the corners meet?"))
```

---

## A worked example

```example
(example
  (problem "Is the side-to-side line through the middle of a rectangle a line of symmetry?")
  (step "Fold the top half down on the line.")
  (step "The top edge lands on the bottom edge, and the corners match.")
  (step (choice (ask "So is it a line of symmetry?") (right "yes")
          (wrong "no" "The top half lands exactly on the bottom half. That is a line of symmetry.")))
  (answer "Yes: it is a line of symmetry."))
```

---

## Practice

```check
(choice
  (ask "Which letter has an up-and-down line of symmetry?")
  (right "A")
  (wrong "F" "Fold F down the middle: the arms all point right, so the halves do not match.")
  (wrong "J" "The hook of J is on one side only, so the halves do not match.")
  (hint "Picture each letter folded down the middle."))
```

```check
(choice
  (ask "A line cuts a shape into 2 parts of the same size, but folded they do not match. Is it a line of symmetry?")
  (right "no")
  (wrong "yes" "Same size is not enough. The parts must match exactly when folded.")
  (hint "Folding is the test."))
```

A line of symmetry folds a figure into 2 parts that match exactly.
