# Right, acute and obtuse angles

```lesson
(objective "Tell whether an angle is right, acute or obtuse by comparing it with a right angle.")
(standards "4.G.A.1")
(minutes 20)
(keywords "acute angle" "obtuse angle")
```

You can sort angles into 3 kinds by comparing them with a right angle.

A right angle is a square corner, like the corner of a page. A small square at the vertex marks it.

```figure
(m4p4-ray 100 170 160 0)
(m4p4-ray 100 170 140 90)
(dot 100 170)
(m4p4-right 100 170 0)
(caption "A right angle: a square corner")
```

```check
(choice
  (ask "Which of these has a right angle?")
  (right "the corner of a sheet of paper")
  (wrong "the tip of a pizza slice" "A pizza slice tip is narrower than a square corner. Fit a page corner into it to see.")
  (wrong "a wide open book lying flat" "Open flat, the 2 halves make a straight edge, wider than a square corner.")
  (hint "Think of a square corner."))
```

---

## Acute

An **acute angle** is smaller than a right angle. Its rays are closer together than a square corner.

```figure
(m4p4-angle 80 180 200 0 40 #f)
(line 80 180 80 60 'grey 1)
(caption "Acute: inside a square corner")
```

```check
(choice
  (ask "A corner of paper fits over an angle and covers it, with room to spare. What kind is the angle?")
  (right "acute")
  (wrong "right" "A right angle fits the paper corner exactly. This one is smaller.")
  (wrong "bigger than a right angle" "An angle bigger than a right angle is wider than the corner, so the paper could not cover it.")
  (hint "Is it smaller or bigger than a square corner?"))
```

---

## Obtuse

An **obtuse angle** is bigger than a right angle but opens less than a straight line.

```figure
(m4p4-angle 160 180 130 0 130 #f)
(line 160 180 160 60 'grey 1)
(caption "Obtuse: wider than a square corner")
```

```check
(choice
  (ask "The hands of a clock show 4:00. What kind of angle do they make?")
  (right "obtuse")
  (wrong "acute" "At 4:00 the hands are 4 hours apart. A right angle is 3 hours apart, so this is wider.")
  (wrong "right" "A right angle is 3 hours apart, like 3:00. At 4:00 they are wider apart.")
  (hint "At 3:00 the hands make a right angle."))
```

---

## Sort them

Move the slider. Watch the kind of angle change.

```figure
(define a (slider 'a 10 170 60 "Open" 10))
(m4p4-angle 160 180 130 0 a #f)
(if (= a 90) (m4p4-right 160 180 0))
(text 160 225 (cond ((< a 90) "acute") ((= a 90) "right") (else "obtuse")) 'centre 'big 'bold)
```

```check
(choice
  (ask "The rays of an angle open wider than a square corner. What kind is it?")
  (right "obtuse")
  (wrong "acute" "Acute angles are smaller than a square corner. Wider is obtuse.")
  (hint "Wider than a right angle."))
```

---

## A worked example

```example
(example
  (problem "Is the tip of a slice of pie an acute, right or obtuse angle? The slice is 1 of 8 equal slices.")
  (step "4 slices, a quarter of the pie, make a square corner at the center.")
  (step "1 slice is smaller than that.")
  (step (choice (ask "So the tip is:") (right "acute")
          (wrong "obtuse" "1 slice is less than a square corner, so it is acute.")))
  (answer "The tip is an acute angle."))
```

---

## Practice

```check
(choice
  (ask "The clock shows 2:00. What kind of angle do the hands make?")
  (right "acute")
  (wrong "obtuse" "2 hours apart is less than 3 hours apart, the right angle. So it is acute.")
  (wrong "right" "A right angle is 3:00. 2:00 is narrower.")
  (hint "Compare with 3:00."))
```

```check
(choice
  (ask "An angle is bigger than a right angle. Which can it be?")
  (right "obtuse")
  (wrong "acute" "Acute angles are smaller than a right angle.")
  (hint "Acute is smaller, obtuse is bigger."))
```

Compare an angle with a square corner: smaller is acute, the same is right, bigger is obtuse.
