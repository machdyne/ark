# Electric motors

```lesson
(objective "Explain how an electric motor turns electric energy into motion.")
(standards "HS-PS3-3")
(minutes 25)
(keywords "electric motor")
```

You can explain how a motor uses magnetic forces to turn electric
energy into motion.

An **electric motor** turns electric energy into kinetic energy. At its
heart is a coil of wire that can spin in a magnetic field. The figure
looks along the coil's axle: you see the two long sides of one turn,
end on, between the poles of a magnet.

The field runs from N to S. In the side on the right, current flows out
of the screen (dot); in the side on the left, into it (cross). By the
right-hand rule, the right side is pushed up and the left side down,
so the coil turns.

```figure
(define on (toggle 'i "Current on" #t))
(still
  (rect 10 70 40 80 'grey) (frame 10 70 40 80 'ink 1.5) (circle 30 110 11 'paper) (text 30 117 "N" 'centre 'big 'bold)
  (rect 270 70 40 80 'grey) (frame 270 70 40 80 'ink 1.5) (circle 290 110 11 'paper) (text 290 117 "S" 'centre 'big 'bold)
  (for-each (lambda (y) (arrow 56 y 264 y 'grey 1)) '(60 160))
  (ring 160 110 56 'grey 1))
(define a (if on (* 2 pi 0.25 (seconds)) 1))
(define cx (* 50 (cos a)))
(define cy (* 50 (sin a)))
(define (side x y right)
  (circle x y 9 'paper) (ring x y 9 'ink 1.5)
  (if on (if right (dot x y)
             (begin (line (- x 5) (- y 5) (+ x 5) (+ y 5) 'ink 1.5) (line (- x 5) (+ y 5) (+ x 5) (- y 5) 'ink 1.5))))
  (if on (arrow x (if right (- y 12) (+ y 12)) x (if right (- y 40) (+ y 40)) 'ink 2.5)))
(line (+ 160 cx) (- 110 cy) (- 160 cx) (+ 110 cy) 'ink 1)
(side (+ 160 (abs cx)) (- 110 (if (> cx 0) cy (- cy))) #t)
(side (- 160 (abs cx)) (+ 110 (if (> cx 0) cy (- cy))) #f)
(caption (if on "Arrows: the forces. Slowed down a great deal." "No current, no force: the coil stays still."))
```

```sources
(source "OpenStax, Physics (2020), chapter 20, Magnetism")
```

```check
(choice
  (ask "Why do the two sides of the coil feel forces in opposite directions?")
  (right "Their currents flow in opposite directions through the same field")
  (wrong "One side is closer to the N pole"
    "Both sides are in the same field from N to S. The difference is the current: out of the screen on one side, into it on the other.")
  (wrong "The field points opposite ways on the two sides"
    "The field runs the same way, from N to S, across the whole gap. It is the currents that are opposite.")
  (hint "Look at the dot and the cross in the figure."))
```

---

## Keeping it turning

When a side passes the top, the force on it would start to pull it
back, and the coil would rock to a stop. So a motor reverses the
current in the coil every half turn. In simple motors a split ring,
the **commutator**, does this: it turns with the coil, and its two
halves swap which side of the battery each end of the coil touches.

So whichever side is on the right always carries current out of the
screen, and is always pushed up: the coil keeps turning the same way.

```check
(choice
  (ask "What would happen to the coil without the commutator?")
  (right "It would swing back and forth and stop, instead of turning round")
  (wrong "It would spin faster"
    "Without reversing the current, the force on each side would oppose the turn after half a turn. The coil would rock and stop.")
  (wrong "Nothing would change"
    "The commutator is what keeps each force turning the coil the same way. Without it, the forces pull back after half a turn.")
  (hint "After half a turn, which way would the force on each side push?"))
```

---

## A stronger motor

The turning effect grows with the force on each side, $F = B I L$. So a
motor is stronger with more current, a stronger magnet, longer sides,
and more turns of wire on the coil, since each turn adds its own force.

```check
(choice (several)
  (ask "Which changes make a motor turn more strongly? Choose every one.")
  (right "More current in the coil")
  (right "More turns of wire on the coil")
  (right "A stronger magnet")
  (wrong "Reversing the battery"
    "Reversing the battery reverses the current, so the motor turns the other way, not more strongly.")
  (hint "Each turn of the coil feels F = B I L."))
```

---

## Energy in a motor

A motor takes in electric energy and gives out kinetic energy, plus
some thermal energy: the coil's resistance heats it, and friction heats
the bearings. Large motors turn about 90% or more of their electric
energy into work; small ones often less.

```sources
(source "US Department of Energy, Office of Energy Efficiency and Renewable Energy, Premium Efficiency Motor Selection and Application Guide (2014)")
```

```check
(number
  (ask "A motor takes in 500 W and gives out 400 W of mechanical power. What is its efficiency, as a percent?")
  (answer 80) (from "400 / 500 * 100") (unit "%")
  (wrong-if 125 "That divides the input by the output. Efficiency is useful output over input: 400 / 500.")
  (wrong-if 20 "That is the part lost as thermal energy, 100 / 500. The useful part is 400 / 500.")
  (hint "Efficiency = useful output / input."))
```

---

## Practice

```check
(choice
  (ask "A motor's battery is turned around. What happens?")
  (right "The motor turns the other way")
  (wrong "The motor stops"
    "There is still a current, so there are still forces. Both reverse, so the coil turns the other way.")
  (wrong "Nothing changes"
    "Reversing the current reverses the force on each side of the coil, so the motor turns the other way.")
  (hint "What does reversing the current do to the force F = BIL?"))
```

```check
(choice
  (ask "Which energy change happens in an electric motor?")
  (right "Electric energy to kinetic energy, with some thermal energy")
  (wrong "Kinetic energy to electric energy"
    "That is the reverse, which you meet in a later lesson. A motor takes in electric energy and makes motion.")
  (wrong "Electric energy to magnetic energy only"
    "The motor's job is motion. Its magnetic forces turn electric energy into kinetic energy.")
  (hint "What goes in, and what comes out?"))
```

---

An electric motor turns because the magnetic force pushes the two sides
of a coil opposite ways, and reversing the current each half turn keeps
it going round.
