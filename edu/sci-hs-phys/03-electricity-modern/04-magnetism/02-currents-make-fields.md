# Currents make magnetic fields

```lesson
(objective "Show that an electric current makes a magnetic field, and find its direction with the right-hand rule.")
(standards "HS-PS2-5")
(minutes 20)
(keywords "right-hand rule")
```

You can show that a current makes a magnetic field, and find which way
that field points.

In 1820 Hans Christian Ørsted noticed that a compass needle near a wire
swung round when a current flowed in the wire. An electric current
makes a magnetic field. Electricity and magnetism are linked.

The figure looks straight down a wire that comes out of the screen
toward you. Compasses stand around it. Turn the current on.

```figure
(define on (toggle 'i "Current on" #f))
(still
  (circle 160 110 7 'paper) (ring 160 110 7 'ink 1.5))
(if on (dot 160 110))
(for-range 0 8
  (lambda (k)
    (let* ((a (* k (/ pi 4))) (x (+ 160 (* 70 (cos a)))) (y (- 110 (* 70 (sin a))))
           (ux (if on (- (sin a)) 0)) (uy (if on (- (cos a)) -1)))
      (ring x y 12 'ink 1)
      (poly (list (+ x (* 10 ux)) (+ y (* 10 uy)) (+ x (* -3 uy)) (+ y (* 3 ux)) (+ x (* 3 uy)) (- y (* 3 ux))) 'ink)
      (line x y (- x (* 10 ux)) (- y (* 10 uy)) 'ink 1.5))))
(caption (if on "Current out of the screen: the needles circle the wire." "No current: every needle points north (up)."))
```

```sources
(source "H. C. Ørsted, Experimenta circa effectum conflictus electrici in acum magneticam (Copenhagen, 1820)")
(source "OpenStax, Physics (2020), chapter 20, Magnetism")
```

```check
(choice
  (ask "With the current on, how do the compass needles line up?")
  (right "In a circle around the wire")
  (wrong "All pointing toward the wire"
    "Look at the figure: each needle lies across the line to the wire, not along it. The field goes around the wire in circles.")
  (wrong "All pointing north, as before"
    "The current's field is much stronger than Earth's this close to the wire, so the needles turn to follow it.")
  (hint "Look at the needles when the current is on."))
```

---

## The right-hand rule

The magnetic field of a straight wire is made of circles around the
wire. To find their direction, use the **right-hand rule**: point the
thumb of your right hand along the conventional current, and your
fingers curl the way the field goes.

Choose the direction of the current.

```figure
(define k (choice 'dir '("Out of screen" "Into screen") "Current"))
(define s (if (= k 0) 1 -1))
(circle 160 110 8 'paper) (ring 160 110 8 'ink 1.5)
(if (= k 0) (dot 160 110)
    (begin (line 154 104 166 116 'ink 1.5) (line 154 116 166 104 'ink 1.5)))
(for-each
  (lambda (r)
    (ring 160 110 r 'ink 1)
    (arrow (+ 160 r) (+ 110 (* s 4)) (+ 160 r) (- 110 (* s 4)) 'ink 2)
    (arrow (- 160 r) (- 110 (* s 4)) (- 160 r) (+ 110 (* s 4)) 'ink 2))
  '(22 44 88))
(caption (if (= k 0) "Dot: current toward you. Field: counterclockwise." "Cross: current away from you. Field: clockwise."))
```

```check
(choice
  (ask "A current flows into the screen, away from you. Which way do the field lines circle, as you see them?")
  (right "Clockwise")
  (wrong "Counterclockwise"
    "Point your right thumb into the screen, away from you. Your fingers curl clockwise as you look at them from behind your hand.")
  (wrong "They point straight out from the wire"
    "The field of a straight wire goes around it, in circles, never straight out.")
  (hint "Point your right thumb away from you, along the current. Which way do your fingers curl?"))
```

---

## How strong

The field is stronger when the current is bigger, and weaker farther
from the wire: twice the current, twice the field; twice as far away,
half the field. That is why the circles in the figure are drawn
farther apart as they go out.

```check
(choice
  (ask "The current in a wire is doubled, and you measure the field at the same place. What happens?")
  (right "The field doubles")
  (wrong "The field is 4 times as strong"
    "The field of a straight wire grows in proportion to the current, not its square: twice the current, twice the field.")
  (wrong "The field reverses"
    "Reversing the current would reverse the field. Doubling it in the same direction makes the field twice as strong.")
  (hint "The field is proportional to the current."))
```

```check
(choice
  (ask "A compass is moved from 2 cm to 4 cm from a wire with a steady current. How does the wire's field there change?")
  (right "It is half as strong")
  (wrong "It is a quarter as strong"
    "The field of a long straight wire falls as 1 / r, not 1 / r^2: twice as far, half the field.")
  (wrong "It is the same"
    "The field weakens with distance from the wire. Twice as far, it is half as strong.")
  (hint "Twice as far from a long wire: what fraction of the field?"))
```

---

## Practice

```check
(choice
  (ask "A wire runs from left to right across a page, with the current to the right. Above the wire, which way does its field point?")
  (right "Out of the page")
  (wrong "Into the page"
    "Point your right thumb to the right. Your fingers come up out of the page above the wire and go back into it below.")
  (wrong "To the right, along the current"
    "The field of a straight wire goes around it, never along it.")
  (hint "Thumb to the right. Where do your fingers point above the wire?"))
```

```check
(choice
  (ask "What did Ørsted's compass show?")
  (right "An electric current makes a magnetic field")
  (wrong "A magnet makes an electric current"
    "Ørsted's compass moved when a current flowed. That shows a current makes a magnetic field. Making a current with a magnet came later.")
  (wrong "Earth's field changes when current flows"
    "Earth's field did not change. The wire's own field, near the wire, turned the needle.")
  (hint "What changed, and what moved?"))
```

---

A current makes a magnetic field in circles around the wire, stronger
for more current and closer in, and the right-hand rule gives its
direction.
