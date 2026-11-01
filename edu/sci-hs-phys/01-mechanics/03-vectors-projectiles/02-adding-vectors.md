# Adding vectors

```lesson
(objective "Add vectors tip to tail, along a line and at right angles, and find the resultant.")
(standards "HSN-VM.B.4")
(minutes 25)
(keywords "resultant")
```

You can add two vectors by drawing them tip to tail, and find the size of the sum.

To add vectors, draw the first arrow. Then draw the second starting from the tip of the first: **tip to tail**. The sum, called the **resultant**, is the arrow from the tail of the first to the tip of the last.

A walker goes 4 m east, then 3 m in the direction you choose. Move the sliders.

```figure
(define a (slider 'a 1 6 4 "A (m)" 0.5))
(define b (slider 'b 1 6 3 "B (m)" 0.5))
(define d (slider 'd 0 180 90 "B's angle (°)" 15))
(grid 20 20 14 10 20 'grey)
(define bx (* b (cos (deg->rad d))))
(define by (* b (sin (deg->rad d))))
(define rx (+ a bx))
(define r (sqrt (+ (* rx rx) (* by by))))
(mc-vec 50 190 (* 20 a) 0 'ink "A")
(mc-vec (+ 50 (* 20 a)) 190 (* 20 b) d 'ink "B")
(if (> r 0.05) (arrow 50 190 (+ 50 (* 20 rx)) (- 190 (* 20 by)) 'cool 1.5))
(rect 26 24 150 16 'paper)
(text 30 36 (string-append "resultant R: " (fmt r 1) " m") 'small 'bold)
(caption "1 square = 1 m; dashed arrow: the resultant")
```

```check
(number
  (ask "Set A to 4 m, B to 3 m and B's angle to 0°, so both point east. What is the magnitude of the resultant?")
  (answer 7) (unit "m") (from "4 + 3")
  (wrong-if 1 "Both arrows point the same way, so they add: 4 m + 3 m.")
  (wrong-if 5 "5 m is the resultant when B points north, at 90°. Pointing the same way, the lengths simply add.")
  (hint "Put B's tail on A's tip, both pointing east."))
```

---

## Along a line

When the vectors lie along one line, use signs: + for one direction, - for the other, and add.

- 5 m east + 3 m east = 8 m east
- 5 m east + 3 m west = 5 + (-3) = 2 m east

```check
(number
  (ask "A boat moves 12 m/s east in still water, but the river carries it 4 m/s west. What is its velocity, in m/s, with east as +?")
  (answer 8) (unit "m/s") (from "12 + (-4)")
  (wrong-if 16 "The river pushes the other way, so its velocity is -4 m/s. 12 + (-4) = 8.")
  (hint "West is negative."))
```

---

## At right angles

When two vectors are at a right angle, they make the two short sides of a right triangle. The resultant is the long side, so the Pythagorean theorem gives its magnitude:

$$ R = sqrt(A^2 + B^2) $$

4 m east and 3 m north give $R = sqrt(16 + 9) = 5$ m, pointing between east and north.

```check
(number
  (ask "A drone flies 6 m east, then 8 m north. How far is it from where it started?")
  (answer 10) (unit "m") (from "sqrt(6^2 + 8^2)")
  (wrong-if 14 "Adding the lengths is right only when the vectors point the same way. At a right angle, use the Pythagorean theorem.")
  (wrong-if 2 "Subtracting is right only for opposite directions. These are at a right angle.")
  (hint "R = sqrt(6² + 8²).")
  (hint "sqrt(36 + 64)."))
```

---

## The sum is not the sum of the sizes

Usually the magnitude of a resultant is less than the two magnitudes added. It equals that sum only when the vectors point the same way. It is smallest, the difference of the two, when they point opposite ways.

```check
(choice
  (ask "Two displacements of 5 m and 2 m are added. Which magnitudes can the resultant have?")
  (right "Anything from 3 m to 7 m, depending on the angle")
  (wrong "Always 7 m"
    "7 m happens only when both point the same way. Try the sliders: at other angles the resultant is shorter.")
  (wrong "Always the square root of 29 m"
    "sqrt(5² + 2²) is the resultant only when the two are at a right angle.")
  (hint "Set A to 5 and B to 2, then turn B from 0° to 180°."))
```

---

## A worked example

```example
(example
  (problem "A hiker walks 1.2 km north, then 0.5 km west. What is her displacement from the start?")
  (step "The two legs are at a right angle.")
  (step "R = sqrt(1.2^2 + 0.5^2) = sqrt(1.44 + 0.25) = sqrt(1.69).")
  (step "R = 1.3 km.")
  (answer "1.3 km, pointing north and a little west"))
```

Now you finish one.

```check
(number
  (ask "A ball rolls 9 m south, then 12 m east. What is the magnitude of its displacement?")
  (answer 15) (unit "m") (from "sqrt(9^2 + 12^2)")
  (wrong-if 21 "The legs are at a right angle, so they do not simply add. Use the Pythagorean theorem.")
  (hint "sqrt(81 + 144)."))
```

---

## Practice

```check
(number
  (ask "A swimmer swims 2 m/s north across a river that flows 1.5 m/s east. What is her speed relative to the riverbank?")
  (answer 2.5) (within 0.001) (unit "m/s") (from "sqrt(2^2 + 1.5^2)")
  (wrong-if 3.5 "The two velocities are at a right angle, so you cannot just add them.")
  (wrong-if 0.5 "Subtracting is for opposite directions. North and east are at a right angle.")
  (hint "R = sqrt(2² + 1.5²)."))
```

```check
(number
  (ask "A car drives 30 km east, then 50 km west. What is its displacement, with east as +?")
  (answer -20) (unit "km") (from "30 + (-50)")
  (wrong-if 80 "80 km is the distance driven. Displacement adds the vectors with their signs.")
  (wrong-if 20 "The car ends up west of the start, so the displacement is negative.")
  (hint "West is negative: 30 + (-50)."))
```

```check
(choice
  (ask "Where does the resultant arrow start and end?")
  (right "From the tail of the first vector to the tip of the last")
  (wrong "From the tip of the first vector to the tail of the last"
    "Drawn tip to tail, the first tip and the last tail are the same point, where the arrows meet. The resultant goes from the very start to the very end.")
  (wrong "From the tip of the last vector back to the start"
    "That arrow points the wrong way: it would undo the trip. The resultant points from start to finish.")
  (hint "The resultant is the whole trip in one arrow."))
```

---

So vectors add tip to tail, and the resultant runs from the first tail to the last tip; at right angles, its magnitude comes from the Pythagorean theorem.
