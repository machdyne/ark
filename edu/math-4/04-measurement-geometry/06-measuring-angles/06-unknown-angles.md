# Finding unknown angles

```lesson
(objective "Find an unknown angle in a diagram or a word problem with an adding or subtracting equation and a letter for the unknown.")
(standards "4.MD.C.7")
(minutes 25)
```

You can find a missing part of an angle with an equation.

This right angle is split into 2 parts. One part is 35°. The other part is unknown: call it x.

```figure
(m4p4-ray 70 190 200 0)
(m4p4-ray 70 190 200 35)
(m4p4-ray 70 190 160 90)
(dot 70 190)
(m4p4-right 70 190 0)
(angle-mark 70 190 70 0 35 "35°")
(angle-mark 70 190 45 35 90 "x")
(caption "35 + x = 90")
```

The parts add to the whole: $35 + x = 90$. So $x = 90 - 35$.

```check
(number
  (ask "What is x, in degrees?")
  (answer 55) (unit "degrees") (from "90 - 35")
  (wrong-if 125 "That adds 90 + 35. The 90 is the whole: subtract the part you know.")
  (hint "35 + ? = 90"))
```

---

## On a straight line

2 angles on a straight line make a straight angle: 180°.

```figure
(m4p4-ray 160 160 130 0)
(m4p4-ray 160 160 130 180)
(m4p4-ray 160 160 120 70)
(dot 160 160)
(angle-mark 160 160 34 0 70 "70°")
(angle-mark 160 160 26 70 180 "y")
(caption "y + 70 = 180")
```

```check
(number
  (ask "What is y, in degrees?")
  (answer 110) (unit "degrees") (from "180 - 70")
  (wrong-if 20 "That uses 90 - 70. The 2 angles are on a straight line: they make 180°.")
  (wrong-if 250 "That adds. 180 is the whole: subtract 70.")
  (hint "y + 70 = 180"))
```

---

## A worked example

```example
(example
  (problem "An angle of 130° is split into 2 parts. One part is 45°. Find the other part, a.")
  (step "Write an equation: 45 + a = 130.")
  (step "Subtract: a = 130 - 45.")
  (step (number (ask "130 - 45 = ?") (answer 85) (unit "degrees") (from "130 - 45")
          (wrong-if 175 "That adds. The 130 is the whole; take away the part.")))
  (answer "a = 85°"))
```

---

## A word problem

A door opens 80°. Then it opens some more, to 125°. How many more degrees did it open?

$80 + d = 125$, so $d = 125 - 80$.

```check
(number
  (ask "What is d, in degrees?")
  (answer 45) (unit "degrees") (from "125 - 80")
  (wrong-if 205 "That adds. The door ended at 125°: subtract the 80° it had already opened.")
  (hint "80 + ? = 125"))
```

---

## Practice

```check
(number
  (ask "A whole angle is 150°. It is split into 3 parts: 40°, 60° and z. What is z?")
  (answer 50) (unit "degrees") (from "150 - 40 - 60")
  (wrong-if 110 "That takes away only 40. Take away both parts: 150 - 40 - 60.")
  (hint "40 + 60 = 100. Then 100 + z = 150."))
```

```check
(number
  (ask "A skateboarder turns 360° in all. She turns 90° first, then the rest. How many degrees is the rest?")
  (answer 270) (unit "degrees") (from "360 - 90")
  (wrong-if 450 "That adds. 360 is all of the turn: subtract the 90.")
  (hint "90 + ? = 360"))
```

---

```check
(choice
  (ask "Which equation finds the unknown angle k? A 180° straight angle is split into 65° and k.")
  (right "65 + k = 180" (true "65 + 115 = 180"))
  (wrong "k = 180 + 65" "The whole is 180. k is a part, so it is less than 180: k = 180 - 65.")
  (wrong "65 + k = 90" "A straight angle is 180°, not 90°.")
  (hint "The parts add to the whole."))
```

To find an unknown angle, write the parts adding to the whole, then subtract.
