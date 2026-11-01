# The electric field

```lesson
(objective "Describe the electric field as force per charge, E = F/q, and draw its field lines.")
(standards "HS-PS3-5")
(minutes 25)
(keywords "electric field" "field line")
```

You can describe the field around charges as a force per coulomb, and
read a drawing of its lines.

A charge changes the space around it: any other charge placed there
feels a force. That is the **electric field** of the charge. Its size
at a point is the force on a small positive test charge $q$ placed
there, divided by $q$:

$$ E = F / q $$

$E$ is in newtons per coulomb (N/C). Its direction is the direction of
the force on a positive charge.

```sources
(source "OpenStax, Physics (2020), chapter 18, Static Electricity")
```

```check
(number
  (ask "A test charge of 0.002 C feels a force of 6 N. What is the electric field there, in N/C?")
  (answer 3000) (from "6 / 0.002") (unit "N/C")
  (wrong-if 0.012 "That multiplies the force by the charge. The field is force per coulomb: divide, E = F / q.")
  (wrong-if 0.00033 "That divides the charge by the force. E = F / q: the force goes on top.")
  (hint "E = F / q."))
```

---

## Force from a field

Turn $E = F / q$ around and you get the force on any charge in a field:

$$ F = q E $$

A positive charge is pushed along the field. A negative charge, such as
an electron, is pushed the opposite way.

```check
(choice
  (ask "An electric field points east. Which way is the force on an electron in it?")
  (right "West")
  (wrong "East"
    "The field's direction is the force on a positive charge. An electron is negative, so its force points the opposite way.")
  (wrong "There is no force on an electron"
    "Every charge in a field feels a force, F = qE. The electron's force points against the field.")
  (hint "Is an electron's charge positive or negative?"))
```

---

## Field lines

A **field line** is a line drawn so that it points along the field
everywhere. Field lines:

- start on positive charges and end on negative ones;
- never cross, since the field has one direction at each point;
- are closest together where the field is strongest.

Choose an arrangement of charges.

```figure
(define k (choice 'kind '("+" "-" "Pair" "Plates") "Charges"))
(define (trace a)
  (let loop ((x (+ 110 (* 12 (cos a)))) (y (+ 110 (* 12 (sin a)))) (n 0) (pts '()))
    (let* ((dx1 (- x 110)) (dy1 (- y 110)) (dx2 (- x 210)) (dy2 (- y 110))
           (r1 (sqrt (+ (* dx1 dx1) (* dy1 dy1)))) (r2 (sqrt (+ (* dx2 dx2) (* dy2 dy2))))
           (ex (- (/ dx1 (* r1 r1 r1)) (/ dx2 (* r2 r2 r2))))
           (ey (- (/ dy1 (* r1 r1 r1)) (/ dy2 (* r2 r2 r2))))
           (m (sqrt (+ (* ex ex) (* ey ey)))))
      (if (or (> n 60) (< r2 12) (< x 6) (> x 314) (< y 6) (> y 214))
          (path (append (list x y) pts) 'ink 1)
          (begin
            (if (= n 5) (arrow x y (+ x (* 9 (/ ex m))) (+ y (* 9 (/ ey m))) 'ink 1.5))
            (loop (+ x (* 7 (/ ex m))) (+ y (* 7 (/ ey m))) (+ n 1) (append (list x y) pts)))))))
(cond ((= k 0) (el-radial 160 110 1 12 12 90) (el-charge 160 110 1 10))
      ((= k 1) (el-radial 160 110 -1 12 12 90) (el-charge 160 110 -1 10))
      ((= k 2) (for-range 0 10 (lambda (i) (trace (* i (/ pi 5)))))
               (el-charge 110 110 1 10) (el-charge 210 110 -1 10))
      (else (rect 60 40 200 8 'grey) (frame 60 40 200 8 'ink 1)
            (rect 60 172 200 8 'grey) (frame 60 172 200 8 'ink 1)
            (text 50 50 "+" 'body 'bold 'right) (text 50 182 "-" 'body 'bold 'right)
            (for-range 0 7 (lambda (i) (arrow (+ 75 (* 28 i)) 50 (+ 75 (* 28 i)) 168 'ink 1)))))
(caption (list-ref '("Lines leave a + charge." "Lines end on a - charge."
                     "Lines run from + to -." "Between plates: evenly spaced lines.") k))
```

```check
(choice
  (ask "Look at the + and - pair. Where is the field strongest?")
  (right "Close to the charges, where the lines crowd together")
  (wrong "Far out at the edges, where the lines are long"
    "Long lines do not mean a strong field. Strength is shown by how close together the lines are, and they spread apart far from the charges.")
  (wrong "It is the same everywhere"
    "That is nearly true between two large plates, where the lines are evenly spaced. Around a pair of charges, the lines crowd near the charges.")
  (hint "Where are the lines closest together?"))
```

---

## Between two plates

Two flat metal plates, one + and one -, make a field that is nearly the
same everywhere between them: its lines are straight, parallel and
evenly spaced. A field like that is **uniform**.

```check
(choice
  (ask "Why can two field lines never cross?")
  (right "At a crossing the field would point two ways at once")
  (wrong "Because like charges repel"
    "Field lines are not charges, and they do not push each other. They cannot cross because the field has only one direction at each point.")
  (wrong "They can cross where the field is strong"
    "They never cross anywhere. Each point has one field, with one direction, so only one line can pass through it.")
  (hint "What does a field line tell you at each point it passes through?"))
```

---

## An electron between plates

```example
(example
  (problem "The field between two plates is 5,000 N/C, pointing down. Find the force on an electron there.")
  (step "Use F = qE, with the size of the electron's charge, e = 1.60 x 10^-19 C.")
  (step "F = 1.60 x 10^-19 x 5,000 = 8.0 x 10^-16 N.")
  (step (choice (ask "Which way does the force point?") (right "Up")
          (wrong "Down" "Down is the force on a positive charge. An electron is negative, so it is pushed against the field, up.")))
  (answer "8.0 x 10^-16 N, upward, toward the + plate."))
```

```check
(number
  (ask "A charge of 0.004 C sits in a field of 2,500 N/C. What force does it feel, in newtons?")
  (answer 10) (from "0.004 * 2500") (unit "N")
  (wrong-if 625000 "That divides the field by the charge. The force is F = qE: multiply.")
  (wrong-if 0.0000016 "That divides the charge by the field. F = qE: multiply them.")
  (hint "F = q E."))
```

---

## Practice

```check
(number
  (ask "A 0.5 C charge feels a force of 40 N. What is the field, in N/C?")
  (answer 80) (from "40 / 0.5") (unit "N/C")
  (wrong-if 20 "That multiplies by 0.5. E = F / q, and dividing by 0.5 doubles the force: 80.")
  (hint "E = F / q = 40 / 0.5."))
```

```check
(choice
  (ask "In which direction do field lines point near a lone negative charge?")
  (right "Inward, toward the charge")
  (wrong "Outward, away from the charge"
    "Field lines show the force on a positive test charge. A positive charge is pulled toward a negative one, so the lines point in.")
  (wrong "Around it in circles"
    "Field lines of a charge are straight lines through it. They end on a negative charge, pointing in.")
  (hint "Which way is a small + charge pulled by a - charge?"))
```

```check
(choice
  (ask "A field line diagram shows lines spread far apart at point A and close together at point B. Where would a charge feel the bigger force?")
  (right "At B")
  (wrong "At A"
    "Lines far apart mean a weaker field. The force F = qE is bigger where the field is stronger, where the lines are close: at B.")
  (wrong "The same at both"
    "The spacing of the lines shows the strength of the field. Closer lines, stronger field, bigger force.")
  (hint "Closer lines mean a stronger field."))
```

---

The electric field is the force per coulomb, $E = F / q$, and its lines
run from + to -, never cross, and crowd where it is strong.
