# Degrees

```lesson
(objective "Explain an angle's measure as the part of a circle it turns through, with 1 degree as 1/360 of a full turn.")
(standards "4.MD.C.5a")
(minutes 20)
(keywords "degree (of an angle)")
```

You can measure an angle by how much of a circle it turns through.

Draw a circle with its center at the vertex. One ray turns away from the other. The angle is the part of the circle between the rays.

```figure
(define a (slider 'a 30 330 90 "Turn" 30))
(ring 160 120 80 'grey 1)
(wedge 160 120 80 0 a 'cool)
(m4p4-ray 160 120 100 0)
(m4p4-ray 160 120 100 a)
(dot 160 120)
(caption (string-append (fmt (/ a 30) 0) " of 12 equal parts of the circle"))
```

```check
(choice
  (ask "Which angle is bigger?")
  (right "one that turns through 1/4 of a circle" (true "1/4 > 1/8"))
  (wrong "one that turns through 1/8 of a circle" (false "1/8 > 1/4") "1/8 of a circle is less than 1/4. The bigger angle turns through more of the circle.")
  (hint "Which is more of a circle: 1/4 or 1/8?"))
```

---

## A degree

Cut a circle into 360 equal parts. An angle that turns through 1 of those parts is a **degree**. It is a very small angle.

We write 1 degree as 1°.

So a full turn, all the way around the circle, is 360 degrees.

```check
(number
  (ask "How many 1° angles make a full circle?")
  (answer 360) (from "360")
  (wrong-if 100 "A circle is cut into 360 equal parts, not 100.")
  (wrong-if 180 "180 is half of the circle. The full circle has 360.")
  (hint "1 degree is 1/360 of a full turn."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 4, 4.MD.C.5a")
```

---

## Parts of a circle

A quarter of a circle is $360 ÷ 4 = 90$ degrees. That is a right angle.

```check
(number
  (ask "An angle turns through 1/2 of a circle. How many degrees is it?")
  (answer 180) (unit "degrees") (from "360 / 2")
  (wrong-if 90 "90 degrees is a quarter of the circle. Half is 360 ÷ 2.")
  (wrong-if 720 "That doubles 360. Half of the circle is 360 ÷ 2.")
  (hint "Half of 360."))
```

---

## A worked example

```example
(example
  (problem "An angle turns through 1/12 of a circle. How many degrees is it?")
  (step "A full circle is 360 degrees.")
  (step "1/12 of it is 360 ÷ 12.")
  (step (number (ask "360 ÷ 12 = ?") (answer 30) (unit "degrees") (from "360 / 12")
          (wrong-if 3 "12 × 3 = 36, not 360. Try 12 × 30.")))
  (answer "The angle is 30 degrees."))
```

---

## Practice

```check
(number
  (ask "An angle turns through 1/10 of a circle. How many degrees is it?")
  (answer 36) (unit "degrees") (from "360 / 10")
  (wrong-if 3600 "That multiplies. 1/10 of 360 is 360 ÷ 10.")
  (hint "360 ÷ 10 = ?"))
```

```check
(choice
  (ask "An angle measures 1°. How much of a circle does it turn through?")
  (right "1/360 of a circle")
  (wrong "1/100 of a circle" "A circle has 360 degrees, not 100. 1° is 1/360.")
  (wrong "a whole circle" "A whole circle is 360°. 1° is a tiny part.")
  (hint "How many degrees in a circle?"))
```

An angle's measure is how much of a circle it turns through, counted in degrees; a full circle is 360°.
