# Fraction word problems

```lesson
(objective "Solve word problems that add or subtract fractions with like denominators referring to the same whole.")
(standards "4.NF.B.3d")
(minutes 25)
```

You can solve word problems that add or subtract fractions of the same
whole.

Read the problem. Ask: are parts joined, or taken away? Check that the
fractions are parts of the same whole.

Tom has a ribbon. He uses $3/8$ of it for a bow and $2/8$ of it for a
card. How much does he use? Parts are joined, so add:
$3/8 + 2/8 = 5/8$ of the ribbon.

```check
(choice
  (ask "A tank is" (math "7/10") "full. Some water is used, and then it is" (math "4/10") "full. What do you do to find how much was used?")
  (right "Subtract: 7/10 - 4/10" (true "7/10 - 4/10 = 3/10"))
  (wrong "Add: 7/10 + 4/10"
    "Adding would give more than the tank had. The water went down, so find the difference.")
  (wrong "Add the denominators"
    "Both fractions are tenths of the same tank. You never add the denominators.")
  (hint "Did the water go up or down?"))
```

---

## Draw a model

A bar is a good model. Lia's garden is cut into 6 equal beds. She
plants beans in $2/6$ and corn in $3/6$. How much is planted?

```figure
(frac-bar-at 40 60 240 40 6 2 'warm)
(rect 120 60 120 40 'cool)
(frame 40 60 240 40 'ink 1.5)
(for-range 1 6 (lambda (i) (line (+ 40 (* 40 i)) 60 (+ 40 (* 40 i)) 100 'ink 1)))
(text 80 125 "beans" 'centre 'small)
(text 180 125 "corn" 'centre 'small)
(caption "1 garden in 6 equal beds")
```

```check
(fraction
  (ask "How much of Lia's garden is planted?")
  (answer 5 6) (equivalent) (true "2/6 + 3/6 = 5/6")
  (wrong-if (5 12) "It is 1 garden in sixths. Keep the 6.")
  (wrong-if (1 6) "1/6 is the bed that is not planted. Add the beans and the corn.")
  (hint "2 sixths and 3 sixths."))
```

```check
(fraction
  (ask "How much of the garden is not planted?")
  (answer 1 6) (equivalent) (true "1 - 5/6 = 1/6")
  (wrong-if (5 6) "5/6 is planted. Take that from the whole, 6/6.")
  (hint "6/6 - 5/6"))
```

---

## How much is left?

Pam walks a path to the park. She has walked $3/4$ of the path. How
much does she still have to go? $1 - 3/4 = 4/4 - 3/4 = 1/4$ of the
path.

```check
(fraction
  (ask "A pie is cut into 8 equal slices. The family eats" (math "5/8") "of it. How much is left?")
  (answer 3 8) (equivalent) (true "1 - 5/8 = 3/8")
  (wrong-if (5 8) "5/8 is eaten. The whole pie is 8/8: what is left?")
  (wrong-if (13 8) "You added. The pie gets smaller when people eat it.")
  (hint "8/8 - 5/8"))
```

---

## Worked example

```example
(example
  (problem "Ken reads 2/12 of a book on Monday and 5/12 on Tuesday. How much more does he read on Tuesday?")
  (step "How much more means compare: subtract.")
  (step "Both are twelfths of the same book.")
  (step "5/12 - 2/12 = 3/12.")
  (answer "He reads 3/12 of the book more on Tuesday."))
```

```example
(example
  (problem "A jug holds 1 liter. Ava pours 2/5 liter, then 1/5 liter. How much does she pour?")
  (step "Parts are joined: add.")
  (step (fraction (ask "2/5 + 1/5 = ?")
    (answer 3 5) (equivalent) (true "2/5 + 1/5 = 3/5")
    (wrong-if (3 10) "Keep the 5: the parts are fifths of a liter.")))
  (answer "She pours 3/5 liter."))
```

---

## Practice

```check
(fraction
  (ask "Ivy paints" (math "4/10") "of a wall. Her dad paints" (math "3/10") "of it. How much of the wall is painted?")
  (answer 7 10) (equivalent) (true "4/10 + 3/10 = 7/10")
  (wrong-if (7 20) "It is 1 wall in tenths. Keep the 10.")
  (hint "Join the parts."))
```

```check
(fraction
  (ask "A rope is cut into 12 equal pieces. Max takes" (math "7/12") "of the rope. Zoe takes" (math "4/12") ". How much more does Max take?")
  (answer 3 12) (equivalent) (true "7/12 - 4/12 = 3/12")
  (wrong-if (11 12) "That is how much they take together. How much more means subtract.")
  (hint "7/12 - 4/12"))
```

---

```check
(fraction
  (ask "Eli has a full bottle of juice. He drinks" (math "1/3") "of it. Then he drinks" (math "1/3") "more. How much is left?")
  (answer 1 3) (equivalent) (true "1 - 1/3 - 1/3 = 1/3")
  (wrong-if (2 3) "2/3 is what he drinks. The bottle was 3/3: what is left?")
  (hint "He drinks 2/3 in all. Take that from 3/3."))
```

```check
(choice
  (ask "Ada eats" (math "2/8") "of a small pizza. Bo eats" (math "3/8") "of a large pizza. Can you add" (math "2/8 + 3/8") "to find how much of one pizza they eat?")
  (right "No: the fractions are parts of different wholes")
  (wrong "Yes: they have like denominators"
    "Like denominators are not enough. Eighths of a large pizza are bigger than eighths of a small one.")
  (wrong "Yes, and the answer is 5/16"
    "5/16 adds the denominators, which is never right. And the wholes are not the same.")
  (hint "Are the 2 pizzas the same size?"))
```

So: in a word problem, join parts to add, take parts away to subtract,
and make sure the fractions are parts of the same whole.
