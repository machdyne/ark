# Potential energy

```lesson
(objective "Compute gravitational potential energy as PE = mgh from a chosen zero level.")
(standards "HS-PS3-2")
(minutes 25)
(keywords "potential energy" "gravitational potential energy")
```

You learn to compute the energy stored when an object is lifted, from a
level you choose as zero.

Lift a book onto a shelf at a steady speed, and your lift does work on
it. That energy is not lost: it is stored in the system of the book and
Earth. Let the book fall, and the stored energy comes back as kinetic
energy.

Energy stored in a system by the positions of its parts is
**potential energy**. The energy stored by an object's height in
Earth's gravity is **gravitational potential energy**:

$$ PE = m g h $$

Here $h$ is the height above a level you choose as zero, and $g = 9.8$
m/s^2. It equals the work done lifting the object at a steady speed:
force $m g$ times distance $h$.

```sources
(source "OpenStax, College Physics 2e (2022), section 7.3, Gravitational Potential Energy")
```

```check
(number
  (ask "A 3.0 kg pot sits on a shelf 2.0 m above the floor. Taking the floor as zero, what is its gravitational potential energy, to the nearest tenth of a joule?")
  (answer 58.8) (within 0.05) (unit "J") (from "3.0 * 9.8 * 2.0")
  (wrong-if 6 "That is m h, without g. The force needed to lift the pot is its weight, m g.")
  (wrong-if 29.4 "That is the pot's weight in newtons, m g. Multiply by the height too.")
  (hint "PE = m g h.")
  (hint "3.0 * 9.8 * 2.0."))
```

---

## Choosing the zero level

The zero level can be anywhere: the floor, a tabletop, the ground
outside. The value of $PE$ depends on that choice, but a *change* in
$PE$ does not. Predictions use only changes in $PE$, so the choice
never changes a prediction.

A 1.0 kg ball sits on a shelf 2.0 m above the floor, and a table is
1.0 m high. Pick the zero level, then read the potential energy at each
place.

```figure
(define z (choice 'zero '("floor" "table") "Zero level"))
(define h0 (if (= z 0) 0 1))
(define (yy h) (- 200 (* 70 h)))
(wv-surface 20 300 200 #f)
(line 40 (yy 2) 150 (yy 2) 'ink 2)
(text 40 (- (yy 2) 18) "shelf, 2.0 m" 'small)
(rect 180 (yy 1) 100 4 'ink)
(line 190 (yy 1) 190 200 'ink 2)
(line 270 (yy 1) 270 200 'ink 2)
(text 180 (- (yy 1) 18) "table, 1.0 m" 'small)
(circle 120 (- (yy 2) 8) 8 'warm)
(circle 230 (- (yy 1) 8) 8 'warm)
(circle 80 192 8 'warm)
(line 10 (yy h0) 310 (yy h0) 'cool 1)
(text 300 (- (yy h0) 4) "zero" 'right 'tiny)
(text 120 (+ (yy 2) 14) (string-append "PE = " (fmt (* 9.8 (- 2 h0)) 1) " J") 'centre 'small)
(text 230 (+ (yy 1) 34) (string-append "PE = " (fmt (* 9.8 (- 1 h0)) 1) " J") 'centre 'small)
(text 95 188 (string-append "PE = " (fmt (* 9.8 (- 0 h0)) 1) " J") 'small)
(caption "Each ball has a mass of 1.0 kg.")
```

```check
(choice
  (ask "The ball falls from the shelf to the floor. Its potential energy changes by 19.6 J measured from the floor. Measured from the table, how much does it change?")
  (right "By the same 19.6 J" (true "9.8 * (2 - 1) - 9.8 * (0 - 1) = 19.6"))
  (wrong "By 9.8 J"
    "From the table, the shelf is at +9.8 J and the floor at -9.8 J. The change is 9.8 - (-9.8) = 19.6 J, the same as before.")
  (wrong "It cannot be found from the table"
    "Any zero level works. The values change with the choice, but the difference between two places does not.")
  (hint "Set the zero level to table. Subtract the floor's PE from the shelf's."))
```

---

## Below the zero level

With the table as zero, the ball on the floor has negative potential
energy: $h = -1.0$ m. That only means it is below the level you chose.
Potential energy below zero is no stranger than a temperature below
zero degrees.

Only the change in height matters, not the path. Carry a box up a ramp
or lift it straight up: the change in $PE$ is $m g Delta h$ either
way. (Friction on the ramp makes you do more work, but that extra work
does not raise the box any higher.)

```check
(choice
  (ask "You carry a 10 kg box up a long, gentle ramp to a stage 1.5 m high. Your friend lifts an identical box straight up to the same stage. Whose box gains more potential energy?")
  (right "They gain the same" (true "10 * 9.8 * 1.5 = 10 * 9.8 * 1.5"))
  (wrong "Yours, because the ramp is longer"
    "The ramp is longer, but the box ends at the same height. Gravitational potential energy depends only on the change in height.")
  (wrong "Your friend's, because lifting straight up is harder"
    "Lifting straight up takes a larger force over a shorter distance. Both boxes rise 1.5 m, so both gain m g h.")
  (hint "PE = m g h. Which numbers differ between the two boxes?"))
```

---

## Worked example

```example
(example
  (problem "A 50 kg diver climbs to a platform 10 m (about 33 ft) above the water. Taking the water as zero, what is the diver's potential energy?")
  (step "PE = m g h = 50 * 9.8 * 10.")
  (step "= 4,900 J.")
  (answer "4,900 J"))
```

```example
(example
  (problem "A 0.40 kg ball is on a roof 6.0 m above the ground. It is dropped into a hole whose floor is 2.0 m below the ground. How much potential energy does it lose?")
  (step "The change in height is from +6.0 m to -2.0 m: 8.0 m down.")
  (step (number (ask "Loss of PE, in joules, to the nearest tenth?") (answer 31.4) (within 0.05) (unit "J") (from "0.40 * 9.8 * 8.0")
    (wrong-if 23.5 "That uses 6.0 m, as if it stopped at the ground. It falls a further 2.0 m into the hole: 8.0 m in all.")
    (hint "0.40 * 9.8 * 8.0.")))
  (answer "about 31.4 J"))
```

---

## Practice

```check
(number
  (ask "A crane lifts a 200 kg steel beam at a steady speed, giving it 19,600 J of potential energy. How high does it lift the beam, in meters?")
  (answer 10) (unit "m") (from "19600 / (200 * 9.8)")
  (wrong-if 98 "That is 19,600 / 200, which leaves out g. Solve m g h = 19,600 for h.")
  (hint "h = PE / (m g).")
  (hint "m g = 200 * 9.8 = 1,960 N."))
```

```check
(choice
  (ask "A hiker climbs from a valley up to a ridge, then back down to the valley. What is the total change in the hiker's gravitational potential energy?")
  (right "Zero")
  (wrong "Twice the energy of one climb"
    "Potential energy goes up on the climb and back down by the same amount on the descent. The hiker ends where the hike began.")
  (wrong "It depends on the trail taken"
    "Gravitational potential energy depends only on height, not on the path. The hiker ends at the starting height.")
  (hint "Compare the starting height and the final height."))
```

So: gravitational potential energy is $PE = m g h$, measured from a zero
level you choose, and only its changes matter.
