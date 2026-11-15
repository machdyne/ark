# Drawing angles

```lesson
(objective "Draw an angle of a given measure with a protractor, and check it is acute, right or obtuse as it should be.")
(standards "4.MD.C.6")
(minutes 20)
```

You can draw an angle of any measure with a protractor.

To draw an angle of 70°:

1. Draw a ray. Its endpoint is the vertex.
2. Put the protractor's center on the vertex and 0 on the ray.
3. Make a dot at 70 on the scale that starts at that 0.
4. Draw a ray from the vertex through the dot.

```figure
(still (m4p4-prot 160 180 135))
(m4p4-ray 160 180 150 0)
(m4p4-ray 160 180 150 70)
(dot (m4p4-px 160 180 135 70) (m4p4-py 160 180 135 70))
(dot 160 180)
(caption "Drawing a 70° angle")
```

```check
(choice
  (ask "You draw a 70° angle. What kind should it be?")
  (right "acute" (true "70 < 90"))
  (wrong "obtuse" (false "70 > 90") "Obtuse angles are more than 90°. 70° is less than 90°, so it is acute.")
  (wrong "right" (false "70 = 90") "A right angle is exactly 90°. 70° is less.")
  (hint "Compare 70 with 90."))
```

---

## Try it

Move the slider to draw the second ray. Draw an angle of 130°.

```figure
(define a (slider 'a 0 180 90 "Second ray" 5))
(still (m4p4-prot 160 180 135))
(m4p4-ray 160 180 150 0)
(m4p4-ray 160 180 150 a)
(dot 160 180)
(text 160 225 (string-append (fmt a 0) "°") 'centre 'big 'bold)
```

```check
(choice
  (ask "You drew a 130° angle, but it looks narrower than a square corner. What is wrong?")
  (right "You used the wrong scale and drew 50°." (true "180 - 130 = 50"))
  (wrong "Nothing: 130° angles look narrow." "130° is more than 90°, so it must look wider than a square corner.")
  (hint "Is 130° acute or obtuse?"))
```

---

## A right angle

A 90° angle is a square corner. It is the same on both scales, because $180 - 90 = 90$.

```check
(choice
  (ask "Where do you put the dot to draw a 90° angle?")
  (right "at 90, at the top of the protractor")
  (wrong "at 180" "180 is a straight angle: a half turn. A right angle is 90.")
  (wrong "at 0" "0 is on the first ray itself. The dot for 90 is at the top.")
  (hint "Half of 180."))
```

---

## A worked example

```example
(example
  (problem "Draw an angle of 155°.")
  (step "Draw a ray to the left from the vertex. Put 0 of the outer scale on it.")
  (step "Make a dot at 155 on the outer scale. Draw the second ray through it.")
  (step (choice (ask "Check: the angle should be:") (right "obtuse, nearly a straight line")
          (wrong "acute, a narrow angle" "155° is more than 90°: obtuse. If it looks narrow, you used the wrong scale.")))
  (answer "An obtuse angle of 155°."))
```

---

## Practice

```check
(choice
  (ask "Which angle should look wider than a square corner?")
  (right "100°" (true "100 > 90"))
  (wrong "80°" (false "80 > 90") "80° is less than 90°, so it is narrower than a square corner.")
  (wrong "45°" (false "45 > 90") "45° is half a right angle: narrower.")
  (hint "Wider than 90°."))
```

```check
(number
  (ask "You make the dot at 35 on the wrong scale. What angle did you draw?")
  (answer 145) (unit "degrees") (from "180 - 35")
  (wrong-if 35 "The wrong scale gives the other number at the same mark. The 2 numbers at a mark add to 180.")
  (hint "The 2 scales add to 180 at every mark."))
```

Draw a ray, put 0 on it, mark the measure on that scale, and check the kind of angle.
