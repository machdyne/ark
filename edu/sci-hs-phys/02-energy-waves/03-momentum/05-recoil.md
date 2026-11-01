# Recoil and explosions

```lesson
(objective "Explain recoil and explosions: momentum is zero before and after, shared out in opposite directions.")
(standards "HS-PS2-2")
(minutes 20)
(keywords "recoil")
```

You learn why objects that push apart from rest move off in opposite
directions, and how fast each one goes.

Two carts sit at rest with a squeezed spring between them. The total
momentum is zero. Let the spring go: the carts fly apart, but the total
momentum must still be zero. So their momenta are equal in size and
opposite in direction:

$$ m_A v_A + m_B v_B = 0 $$

with $v_A$ and $v_B$ the velocities after the push.

When one object pushes another forward, it moves backward itself. That
backward motion is **recoil**: a cannon rolls back when it fires, and a
skater on smooth ice slides back when she throws a heavy ball.

```sources
(source "OpenStax, College Physics 2e (2022), section 8.3, Conservation of Momentum, and section 8.7, Introduction to Rocket Propulsion")
```

```check
(choice
  (ask "You stand on a skateboard and throw a heavy bag forward. What happens to you?")
  (right "You roll backward, with momentum equal and opposite to the bag's")
  (wrong "Nothing: you only pushed the bag"
    "The bag pushes back on you with an equal force, by the third law. You and the bag started with zero momentum, so you must move backward.")
  (wrong "You roll forward with the bag"
    "The total momentum is zero before the throw. If the bag goes forward, you must go backward for the total to stay zero.")
  (hint "Total momentum before the throw is zero."))
```

---

## Pushing apart

The spring between the carts is let go at 1 s. Change the masses. The
lighter cart always moves off faster.

```figure
(still (wv-surface 10 310 150 #f))
(define m1 (slider 'm1 1 3 2 "Cart A (kg)" 0.5))
(define m2 (slider 'm2 1 3 1 "Cart B (kg)" 0.5))
(define t (modulo (seconds) 3))
(define go (> t 1))
(define va (if go (/ -3 m1) 0))
(define vb (if go (/ 3 m2) 0))
(define xa (+ 110 (* 18 va (max 0 (- t 1)))))
(define xb (+ 170 (* 18 vb (max 0 (- t 1)))))
(if (not go) (wv-spring 150 170 133 2))
(wv-cart xa 150 40 'warm "A")
(wv-cart xb 150 40 'cool "B")
(wv-varrow (+ xa 20) 100 va 6 'ink)
(wv-varrow (+ xb 20) 80 vb 6 'ink)
(text 160 30 (string-append "p of A = " (fmt (* m1 va) 1) ", p of B = " (fmt (* m2 vb) 1)) 'centre 'small)
(text 160 50 (string-append "total = " (fmt (+ (* m1 va) (* m2 vb)) 1) " kg m/s") 'centre 'small 'bold)
(caption "Real time; the track is about 17 m long.")
```

```check
(number
  (ask "Cart A is 3.0 kg and cart B is 1.0 kg. B moves off at 3.0 m/s. How fast does A move, in m/s?")
  (answer 1) (unit "m/s") (from "1.0 * 3.0 / 3.0")
  (wrong-if 3 "Equal speeds would give A three times B's momentum. The momenta are equal, so the 3 times heavier cart moves 3 times slower.")
  (wrong-if 9 "That multiplies by the mass ratio. The heavier cart moves more slowly: m_A v_A = m_B v_B.")
  (hint "3.0 * v_A = 1.0 * 3.0."))
```

---

## Rockets

A rocket pushes hot gas out of its back at high speed. The gas pushes
the rocket forward with an equal and opposite force. The forward
momentum the rocket gains equals the backward momentum the gas carries
off. It needs no air to
push against, so rockets work in space.

```check
(choice
  (ask "Why can a rocket speed up in empty space?")
  (right "It pushes gas backward, and the gas pushes it forward")
  (wrong "It pushes against the air behind it"
    "There is no air in space. The rocket pushes on its own exhaust gas, and the gas pushes back on the rocket.")
  (wrong "It cannot: rockets only work in air"
    "Spacecraft change speed in space all the time. Momentum conservation needs only the rocket and its gas.")
  (hint "What does the rocket push on?"))
```

---

## Worked example

```example
(example
  (problem "A 100 kg cannon on wheels fires a 2.0 kg ball forward at 150 m/s. How fast does the cannon recoil?")
  (step "Before: everything at rest, total p = 0.")
  (step "After: 2.0 * 150 + 100 * v = 0, so 100 v = -300.")
  (step "v = -3.0 m/s: 3.0 m/s backward.")
  (answer "3.0 m/s backward"))
```

```example
(example
  (problem "A 50 kg student on a skateboard at rest throws a 5.0 kg bag forward at 4.0 m/s. How fast does the student roll back?")
  (step "0 = 5.0 * 4.0 + 50 * v.")
  (step (number (ask "Speed of the student, in m/s?") (answer 0.4) (unit "m/s") (from "5.0 * 4.0 / 50")
    (wrong-if 4 "The student is 10 times heavier than the bag, so moves 10 times more slowly.")
    (wrong-if 40 "That multiplies by 10. The heavier student moves more slowly than the bag.")
    (hint "50 v = 20.")))
  (answer "0.40 m/s backward"))
```

---

## Practice

```check
(number
  (ask "A firework shell at rest bursts into two pieces. A 0.30 kg piece flies east at 20 m/s. The other piece is 0.20 kg. How fast does it fly west, in m/s?")
  (answer 30) (unit "m/s") (from "0.30 * 20 / 0.20")
  (wrong-if 20 "The pieces have equal momenta, not equal speeds. The lighter piece must move faster.")
  (wrong-if 13.3 "That multiplies by 0.20/0.30. The lighter piece moves faster: v = 0.30 * 20 / 0.20.")
  (hint "0.30 * 20 = 0.20 * v."))
```

```check
(choice
  (ask "After an explosion of an object at rest, what is the total momentum of all the pieces?")
  (right "Zero, as it was before")
  (wrong "Large, because the pieces fly fast"
    "Each piece has momentum, but they fly in different directions. Their momenta add, as vectors, to zero.")
  (wrong "It cannot be known without the energy of the explosion"
    "The energy sets how fast the pieces go, but not the total momentum. That stays zero, as before the burst.")
  (hint "What was the momentum before?"))
```

So: when objects push apart from rest, the total momentum stays zero,
so they share it out in equal and opposite amounts.
