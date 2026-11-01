# Position and displacement

```lesson
(objective "Give an object's position from a reference point, and find its displacement and the distance it travels.")
(standards "HSN-Q.A.1")
(minutes 20)
(keywords "position" "reference point" "displacement")
```

You can say exactly where something is on a line, and how far and which way it moved.

To say where an object is, you first choose a **reference point**: a fixed place you measure from, marked 0. Its **position** is how far it is from the reference point, with a sign for the side: + to the right, - to the left.

Move the slider. The cart's position is measured from the post at 0.

```figure
(define x (slider 'x -10 10 6 "Position (m)" 1))
(number-line 20 300 150 -10 10 1 5)
(line (nl-x 0) 150 (nl-x 0) 96 'ink 2)
(label (nl-x 0) 88 "0")
(mc-cart (nl-x x) 146 'cool)
(text 160 40 (string-append "position = " (if (> x 0) "+" "") (fmt x 0) " m") 'centre 'body 'bold)
(caption "1 mark = 1 m; + is to the right")
```

```check
(number
  (ask "Set the cart 4 m to the left of the post. What is its position, in meters?")
  (answer -4) (unit "m") (from "0 - 4")
  (wrong-if 4 "4 m is how far the cart is from the post, but it is on the left. Left of the reference point is negative.")
  (hint "Which side of 0 is the cart on?")
  (hint "Left of 0 is negative."))
```

---

## The choice of reference point

The reference point is a choice. A shop that is at +300 m from your home is at 0 m from the shop itself. Positions change with the reference point, so always say which one you use.

```check
(choice
  (ask "A school is 500 m east of a park. Taking the school as the reference point, with east as +, what is the park's position?")
  (right "-500 m")
  (wrong "+500 m"
    "+500 m is where the school is from the park. From the school, the park is to the west, which is the negative side.")
  (wrong "0 m"
    "0 m is the reference point itself, which here is the school, not the park.")
  (hint "Stand at the school. Which way is the park?"))
```

---

## Displacement

The **displacement** of an object is its change in position: where it ends minus where it started.

$$ Delta x = x_f - x_i $$

$Delta$ (the Greek letter delta) means "change in". A positive displacement means the object ended up to the right, a negative one to the left.

```figure
(define xi (slider 'xi -10 10 -3 "Start (m)" 1))
(define xf (slider 'xf -10 10 5 "End (m)" 1))
(number-line 20 300 150 -10 10 1 5)
(nl-mark xi 'cool "start")
(nl-mark xf 'warm "end")
(if (not (= xi xf)) (arrow (nl-x xi) 120 (nl-x xf) 120 'ink 2))
(text 160 50 (string-append "displacement = " (fmt xf 0) " - (" (fmt xi 0) ") = " (fmt (- xf xi) 0) " m") 'centre 'small 'bold)
(caption "1 mark = 1 m")
```

```check
(number
  (ask "A cart starts at -3 m and ends at +5 m. What is its displacement?")
  (answer 8) (unit "m") (from "5 - (-3)")
  (wrong-if 2 "That adds -3 and 5. Displacement is end minus start: 5 - (-3) = 8.")
  (wrong-if -8 "That is start minus end. Displacement is the end minus the start.")
  (hint "Use the sliders to show it.")
  (hint "5 - (-3) = 5 + 3."))
```

---

## Distance is not displacement

The **distance** an object travels counts every meter it moves, whichever way. It is never negative. Displacement only compares the start and the end.

A dog runs from 0 to +6 m, then back to +2 m. It travels 6 m + 4 m = 10 m. Its displacement is only +2 m.

```figure
(number-line 20 300 160 -2 8 1 2)
(nl-mark 0 'cool "start")
(nl-mark 2 'warm "end")
(nl-jump 0 6 'ink "+6 m")
(arrow (nl-x 6) 186 (nl-x 2) 186 'ink 2)
(label (nl-x 4) 204 "back 4 m")
(caption "distance 10 m; displacement +2 m")
```

```check
(choice
  (ask "A swimmer swims 50 m across a pool and 50 m back to the start. Which is true?")
  (right "The distance is 100 m and the displacement is 0 m")
  (wrong "The distance and the displacement are both 100 m"
    "The swimmer ends where she started, so her position did not change. Displacement compares only the start and the end: 0 m.")
  (wrong "The distance is 0 m and the displacement is 100 m"
    "That is the wrong way round. Distance adds every meter swum: 100 m. Displacement is end minus start: 0 m.")
  (hint "Where does the swimmer end up?"))
```

---

## A worked example

```example
(example
  (problem "A bus starts at +200 m, drives to +900 m, then backs up to +700 m. Find its distance and its displacement.")
  (step "First part: from 200 m to 900 m is 700 m.")
  (step "Second part: from 900 m back to 700 m is 200 m.")
  (step "Distance = 700 m + 200 m = 900 m.")
  (step "Displacement = end - start = 700 m - 200 m = +500 m.")
  (answer "Distance 900 m, displacement +500 m"))
```

Now you finish one.

```check
(number
  (ask "A runner goes from +10 m to +60 m, then back to +40 m. What distance does she travel?")
  (answer 70) (unit "m") (from "(60 - 10) + (60 - 40)")
  (wrong-if 30 "30 m is her displacement, end minus start. Distance counts both parts of the run: 50 m out and 20 m back.")
  (wrong-if 110 "That adds the positions. Add the lengths of the two parts instead: 50 m and 20 m.")
  (hint "How long is each part of the run?")
  (hint "50 m out, then 20 m back."))
```

---

## Practice

```check
(number
  (ask "A ball rolls from +4 m to -6 m. What is its displacement?")
  (answer -10) (unit "m") (from "-6 - 4")
  (wrong-if 10 "The ball ends to the left of where it started, so the displacement is negative.")
  (wrong-if -2 "That adds 4 and -6. Displacement is end minus start: -6 - 4.")
  (hint "End minus start."))
```

```check
(number
  (ask "A cat walks from 0 m to +3 m, then to -2 m, then to +1 m. What distance does it travel?")
  (answer 11) (unit "m") (from "3 + 5 + 3")
  (wrong-if 1 "1 m is the displacement. Distance adds the length of every part: 3 m, 5 m and 3 m.")
  (hint "Find the length of each of the three parts."))
```

```check
(choice
  (ask "Can a displacement be larger than the distance traveled?")
  (right "No: the distance is always at least as large")
  (wrong "Yes, if the object turns back"
    "Turning back adds to the distance but takes away from the displacement. The distance is never smaller than the size of the displacement.")
  (wrong "Yes, if the displacement is negative"
    "The sign gives only the direction. Its size is never more than the distance traveled.")
  (hint "Displacement is the straight line from start to end. Can any path be shorter?"))
```

---

So position is measured from a reference point with a sign, displacement is the change in position, and distance counts every meter moved.
