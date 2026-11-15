# Using a protractor

```lesson
(objective "Measure an angle in whole degrees with a protractor, reading the scale that starts at 0 on one ray.")
(standards "4.MD.C.6")
(minutes 25)
(keywords "protractor")
```

You can measure an angle in degrees with a protractor.

A **protractor** is a tool for measuring angles. It is a half circle marked in degrees from 0 to 180.

```figure
(m4p4-prot 160 180 135)
(dot 160 180)
(caption "A protractor: 2 scales, 0 to 180")
```

```check
(number
  (ask "A protractor is a half circle. How many degrees does it go up to?")
  (answer 180) (unit "degrees") (from "360 / 2")
  (wrong-if 360 "360° is a full circle. A protractor is half a circle: 180°.")
  (wrong-if 100 "The marks go up to 180, half of 360.")
  (hint "Half of a full turn."))
```

---

## Lining it up

1. Put the center mark of the protractor on the vertex.
2. Line up the 0 line with one ray.
3. Read where the other ray crosses the scale.

```figure
(still (m4p4-prot 160 180 135))
(m4p4-ray 160 180 150 0)
(m4p4-ray 160 180 150 60)
(dot 160 180)
(caption "One ray on 0, the other at 60")
```

The ray on the right lies on 0 of the inner scale. So read the inner scale: 60°.

```check
(number
  (ask "What is the measure of the angle in the figure?")
  (answer 60) (unit "degrees") (from "60")
  (wrong-if 120 "120 is on the other scale. The ray lies on 0 of the inner scale, so read that one: 60.")
  (hint "Start at 0 on the ray along the bottom, and count up.")
  (hint "The angle is acute, so it is less than 90."))
```

---

## Which scale?

Each mark has 2 numbers. Read the scale that has 0 on the first ray.

Check your answer: an acute angle is less than 90°, an obtuse angle more.

```figure
(still (m4p4-prot 160 180 135))
(m4p4-ray 160 180 150 180)
(m4p4-ray 160 180 150 40)
(dot 160 180)
```

```check
(number
  (ask "One ray lies on 0 at the left. What is the measure of the angle?")
  (answer 140) (unit "degrees") (from "180 - 40")
  (wrong-if 40 "40 is on the scale that starts at the right. This angle starts at the left, on the outer scale: 140. It is obtuse, so more than 90.")
  (hint "The ray on the left is on 0 of the outer scale.")
  (hint "The angle is obtuse."))
```

---

## Measure it

Move the slider to turn the ray. Read the angle on the inner scale.

```figure
(define a (slider 'a 10 170 30 "Ray" 5))
(still (m4p4-prot 160 180 135))
(m4p4-ray 160 180 150 0)
(m4p4-ray 160 180 150 a)
(dot 160 180)
```

```check
(number
  (ask "The ray on the right is on 0. The other ray crosses the inner scale at 85. What is the angle?")
  (answer 85) (unit "degrees") (from "85")
  (wrong-if 95 "95 is on the outer scale, which starts at the left. Read the scale with 0 on your first ray.")
  (hint "Read the scale that starts at 0 on the ray on the right."))
```

---

## A worked example

```example
(example
  (problem "An angle has one ray on 0 at the right. The other ray crosses at 110 and 70. What is the angle?")
  (step "The first ray is on the right: use the inner scale, which has 0 there.")
  (step "Look at the angle: it is wider than a right angle, so it is obtuse.")
  (step (choice (ask "So it measures:") (right "110°")
          (wrong "70°" "70° is acute, but this angle is obtuse. Use the scale with 0 on your first ray.")))
  (answer "The angle measures 110°."))
```

---

## Practice

```figure
(still (m4p4-prot 160 180 135))
(m4p4-ray 160 180 150 0)
(m4p4-ray 160 180 150 25)
(dot 160 180)
```

```check
(number
  (ask "What is the measure of this angle?")
  (answer 25) (unit "degrees") (from "25")
  (wrong-if 155 "155 is on the outer scale. The angle is acute, so it is less than 90.")
  (wrong-if 20 "The ray is halfway between 20 and 30: on the short mark for 25.")
  (hint "It is between 20 and 30."))
```

```check
(choice
  (ask "You read 45° for an angle that is clearly wider than a square corner. What went wrong?")
  (right "You read the wrong scale: it is 135°." (true "180 - 45 = 135"))
  (wrong "Nothing: it is 45°." "An angle wider than a square corner is more than 90°. 45° is acute.")
  (hint "Is 45° acute or obtuse?"))
```

Put the center on the vertex, 0 on one ray, and read the scale that starts at that 0.
