# Turns and degrees

```lesson
(objective "Explain that an angle that turns through n one-degree angles measures n degrees, and know a quarter turn is 90°, a half turn (a straight angle) 180° and a full turn 360°.")
(standards "4.MD.C.5a" "4.MD.C.5b")
(minutes 20)
(keywords "straight angle")
```

You can count the 1° angles an angle turns through to find its measure.

An angle that turns through 50 one-degree angles measures 50 degrees.

```figure
(define a (slider 'a 10 180 50 "Degrees" 10))
(arc 160 160 100 0 180 'grey 1)
(wedge 160 160 100 0 a 'cool)
(m4p4-ray 160 160 120 0)
(m4p4-ray 160 160 120 a)
(dot 160 160)
(text 160 210 (string-append (fmt a 0) " one-degree angles") 'centre 'body 'bold)
```

```check
(number
  (ask "An angle turns through 75 one-degree angles. What is its measure?")
  (answer 75) (unit "degrees") (from "75")
  (wrong-if 1 "Each part is 1 degree. 75 of them make 75 degrees.")
  (hint "Count the one-degree angles."))
```

---

## A quarter turn

A quarter turn is 1/4 of a circle: $360 ÷ 4 = 90$ degrees. A right angle is 90°.

```check
(number
  (ask "How many degrees is 2 quarter turns?")
  (answer 180) (unit "degrees") (from "2 * 90")
  (wrong-if 90 "That is 1 quarter turn. Two of them are 90 + 90.")
  (hint "90 + 90 = ?"))
```

---

## A straight angle

A half turn is 180°. Its 2 rays point in opposite directions and make a straight line. An angle of 180° is a **straight angle**.

```figure
(m4p4-ray 160 140 130 0)
(m4p4-ray 160 140 130 180)
(dot 160 140)
(arc 160 140 22 0 180 'ink 1)
(label 160 108 "180°" 'body 'bold)
(caption "A straight angle: a half turn")
```

```check
(choice
  (ask "What kind of angle are 2 rays from one vertex that make a straight line?")
  (right "a straight angle, 180°")
  (wrong "a right angle, 90°" "A right angle is a square corner. A straight line is 2 right angles: 180°.")
  (wrong "no angle, 0°" "The rays point opposite ways: that is a half turn, 180°.")
  (hint "It is a half turn."))
```

---

## A full turn

A full turn goes all the way around: 360°. It is 4 quarter turns: $4 * 90 = 360$.

```check
(number
  (ask "A skater spins all the way around once. How many degrees does she turn?")
  (answer 360) (unit "degrees") (from "4 * 90")
  (wrong-if 180 "180° is half a turn. All the way around is 360°.")
  (hint "4 quarter turns."))
```

---

## A worked example

```example
(example
  (problem "A clock's minute hand goes from 12 to 3. How many degrees does it turn?")
  (step "From 12 to 3 is a quarter of the way around.")
  (step "A quarter turn is 360 ÷ 4.")
  (step (number (ask "360 ÷ 4 = ?") (answer 90) (unit "degrees") (from "360 / 4")
          (wrong-if 3 "3 is the number on the clock. The turn is a quarter of 360.")))
  (answer "It turns 90°."))
```

---

## Practice

```check
(number
  (ask "How many degrees are in 3 quarter turns?")
  (answer 270) (unit "degrees") (from "3 * 90")
  (wrong-if 93 "That adds 3 + 90. 3 quarter turns are 3 × 90.")
  (hint "3 × 90 = ?"))
```

```check
(choice
  (ask "An angle measures 120°. What kind is it?")
  (right "obtuse" (true "90 < 120 < 180"))
  (wrong "acute" (false "120 < 90") "Acute angles are less than 90°. 120° is more.")
  (wrong "straight" (false "120 = 180") "A straight angle is 180°. 120° is less.")
  (hint "Compare with 90° and 180°."))
```

A quarter turn is 90°, a half turn (a straight angle) is 180°, and a full turn is 360°.
