# Adding angles

```lesson
(objective "Find the measure of an angle split into parts by adding the measures of the parts.")
(standards "4.MD.C.7")
(minutes 20)
```

You can find a whole angle by adding the angles it is made of.

A ray inside an angle splits it into 2 parts. The parts do not overlap. The whole angle is the sum of the parts.

```figure
(m4p4-ray 60 190 170 0)
(m4p4-ray 60 190 170 30)
(m4p4-ray 60 190 170 75)
(dot 60 190)
(angle-mark 60 190 60 0 30 "30°")
(angle-mark 60 190 45 30 75 "45°")
(caption "30° + 45° = 75°")
```

$$ 30 + 45 = 75 $$

```check
(number
  (ask "An angle is split into parts of 20° and 50°. What is the whole angle?")
  (answer 70) (unit "degrees") (from "20 + 50")
  (wrong-if 30 "That is the difference. The parts join to make the whole: add.")
  (hint "20 + 50 = ?"))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 4, 4.MD.C.7")
```

---

## Try it

Move the sliders to change the parts. The whole is always the sum.

```figure
(define p (slider 'p 10 80 40 "Part 1" 5))
(define q (slider 'q 10 90 60 "Part 2" 5))
(m4p4-ray 160 190 130 0)
(m4p4-ray 160 190 130 p)
(m4p4-ray 160 190 130 (+ p q))
(dot 160 190)
(angle-mark 160 190 60 0 p (fmt p 0))
(angle-mark 160 190 36 p (+ p q) (fmt q 0))
(text 300 40 (string-append (fmt p 0) " + " (fmt q 0) " = " (fmt (+ p q) 0)) 'right 'body 'bold)
```

```check
(number
  (ask "Parts of 35° and 55° make a whole angle. What is it?")
  (answer 90) (unit "degrees") (from "35 + 55")
  (wrong-if 20 "That subtracts. The whole is the parts added: 35 + 55.")
  (hint "35 + 55 = ?"))
```

---

## More parts

An angle can be split into 3 parts or more. Add them all.

```check
(number
  (ask "An angle is split into 3 parts: 25°, 40° and 30°. What is the whole angle?")
  (answer 95) (unit "degrees") (from "25 + 40 + 30")
  (wrong-if 65 "That adds only 2 parts. Add all 3: 25 + 40 + 30.")
  (hint "25 + 40 = 65. Then add 30."))
```

---

## A worked example

```example
(example
  (problem "A pizza is cut into slices with tips of 60°, 60° and 45°. What angle do the 3 slices make together?")
  (step "The tips meet at the center and do not overlap.")
  (step "Add the parts: 60 + 60 + 45.")
  (step (number (ask "60 + 60 + 45 = ?") (answer 165) (unit "degrees") (from "60 + 60 + 45")
          (wrong-if 120 "Add the 45 too.")))
  (answer "165°"))
```

---

## Practice

```check
(number
  (ask "A ray splits a right angle. One part is 30°. The other is 60°. Check: what is their sum?")
  (answer 90) (unit "degrees") (from "30 + 60")
  (wrong-if 30 "That subtracts. Add the parts: 30 + 60, the right angle.")
  (hint "30 + 60 = ?"))
```

```check
(choice
  (ask "2 angles of 100° and 80° are side by side, with no overlap. What do they make?")
  (right "a straight angle, 180°" (true "100 + 80 = 180"))
  (wrong "a right angle, 90°" (false "100 + 80 = 90") "100 + 80 = 180, not 90. 180° is a straight angle.")
  (wrong "a full turn, 360°" (false "100 + 80 = 360") "100 + 80 = 180. That is half a turn.")
  (hint "100 + 80 = ?"))
```

When an angle is split into parts that do not overlap, its measure is the sum of the parts.
