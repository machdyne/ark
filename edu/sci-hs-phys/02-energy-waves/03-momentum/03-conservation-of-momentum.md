# Conservation of momentum

```lesson
(objective "Use the conservation of momentum to find a velocity after two objects interact.")
(standards "HS-PS2-2")
(minutes 25)
(keywords "conservation of momentum")
```

You learn to predict how objects move after they collide or push on
each other, from the fact that their total momentum stays the same.

When two carts collide, each pushes on the other. By Newton's third
law the two forces are equal and opposite, and they act for the same
time. So the impulses are equal and opposite: what one cart gains in
momentum, the other loses.

That gives the law of **conservation of momentum**: in an isolated
system, with no net external force, the total momentum stays the same.

$$ m_1 v_1 + m_2 v_2 = m_1 u_1 + m_2 u_2 $$

Here $v_1$ and $v_2$ are the velocities before, and $u_1$ and $u_2$ the
velocities after.

```sources
(source "OpenStax, College Physics 2e (2022), section 8.3, Conservation of Momentum")
```

```check
(choice
  (ask "Two ice skaters push off each other. Why is their total momentum the same before and after?")
  (right "Their pushes on each other are equal and opposite, so the changes in momentum cancel")
  (wrong "Because neither skater feels a force"
    "Each skater feels a real push and changes velocity. The two changes are equal and opposite, so the total does not change.")
  (wrong "Because they have the same mass"
    "Conservation does not need equal masses. Whatever the masses, the internal forces are equal and opposite.")
  (hint "Think about Newton's third law."))
```

---

## Carts that stick together

Cart A rolls at 2.0 m/s into cart B, which is at rest. They stick
together. Change the masses and watch: the total momentum is the same
before and after.

```figure
(still (wv-surface 10 310 150 #f))
(define m1 (slider 'm1 1 3 2 "Cart A (kg)" 0.5))
(define m2 (slider 'm2 1 3 1 "Cart B (kg)" 0.5))
(define t (modulo (seconds) 3.2))
(define vf (/ (* 2 m1) (+ m1 m2)))
(define after (> t 1.2))
(define x1 (if after (+ 80 (* 25 vf (- t 1.2))) (+ 20 (* 50 t))))
(define x2 (if after (+ 120 (* 25 vf (- t 1.2))) 120))
(define v1 (if after vf 2))
(define v2 (if after vf 0))
(wv-cart x1 150 40 'warm "A")
(wv-cart x2 150 40 'cool "B")
(wv-varrow (+ x1 20) 100 v1 15 'ink)
(wv-varrow (+ x2 20) 80 v2 15 'ink)
(text 160 30 (string-append "p of A = " (fmt (* m1 v1) 1) ", p of B = " (fmt (* m2 v2) 1)) 'centre 'small)
(text 160 50 (string-append "total p = " (fmt (+ (* m1 v1) (* m2 v2)) 1) " kg m/s") 'centre 'small 'bold)
(text 160 190 (string-append "after: " (fmt vf 2) " m/s together") 'centre 'small)
(caption "Real time; the track is about 12 m long.")
```

```check
(number
  (ask "Set A to 2.0 kg and B to 2.0 kg. At what speed do the carts move together, in m/s?")
  (answer 1) (unit "m/s") (from "2.0 * 2.0 / (2.0 + 2.0)")
  (wrong-if 2 "That is A's speed before. After they stick, 4.0 kg share the same 4.0 kg m/s of momentum.")
  (wrong-if 0 "Momentum cannot vanish. The 4.0 kg m/s that A brought is shared by both carts.")
  (hint "Total p before: 2.0 * 2.0 = 4.0 kg m/s.")
  (hint "After: (2.0 + 2.0) v = 4.0."))
```

---

## Using it

1. Choose a positive direction.
2. Add up the momentum of every object before.
3. Write the momentum after with the unknown velocity.
4. Set them equal and solve.

```example
(example
  (problem "A 1,500 kg car moving at 20 m/s rear-ends a 1,000 kg car moving at 10 m/s the same way. They lock together. How fast do they move just after?")
  (step "Before: 1,500 * 20 + 1,000 * 10 = 30,000 + 10,000 = 40,000 kg m/s.")
  (step "After: (1,500 + 1,000) v = 2,500 v.")
  (step "v = 40,000 / 2,500 = 16 m/s, the way they were going.")
  (answer "16 m/s"))
```

```example
(example
  (problem "A 60 kg skater at 4.0 m/s grabs a 40 kg skater who is standing still. How fast do they glide together?")
  (step "Before: 60 * 4.0 + 40 * 0 = 240 kg m/s.")
  (step (number (ask "v after, in m/s?") (answer 2.4) (unit "m/s") (from "240 / (60 + 40)")
    (wrong-if 6 "That divides by 40 kg only. Both skaters move together after, so divide by 100 kg.")
    (hint "240 / 100.")))
  (answer "2.4 m/s"))
```

---

## Head-on

When objects move toward each other, one velocity is negative. Their
momenta partly cancel.

```check
(number
  (ask "A 2.0 kg cart at +3.0 m/s meets a 1.0 kg cart at -3.0 m/s head-on. They stick. What is their velocity after, in m/s? Give the sign.")
  (answer 1) (unit "m/s") (from "(2.0 * 3.0 + 1.0 * (-3.0)) / (2.0 + 1.0)")
  (wrong-if 3 "That adds the momenta as if both moved the same way. The 1.0 kg cart moves in the negative direction: its momentum is -3.0.")
  (wrong-if 0 "The speeds are equal, but the masses are not. Total p = 6.0 - 3.0 = +3.0 kg m/s.")
  (hint "Total p = 2.0 * 3.0 + 1.0 * (-3.0).")
  (hint "Divide by the total mass, 3.0 kg."))
```

---

## Practice

```check
(number
  (ask "A 0.020 kg ball of clay moving at 10 m/s hits a 0.18 kg block at rest on ice and sticks. How fast does the block move off, in m/s?")
  (answer 1) (unit "m/s") (from "0.020 * 10 / (0.020 + 0.18)")
  (wrong-if 1.11 "That divides by the block's mass only. The clay sticks, so it moves with the block: divide by 0.20 kg.")
  (hint "Momentum before: 0.020 * 10 = 0.20 kg m/s.")
  (hint "After: (0.20 kg) v."))
```

```check
(choice
  (ask "A truck and a small car collide head-on. Which is true?")
  (right "The car's change in momentum is as large as the truck's, in the opposite direction")
  (wrong "The truck's momentum changes more, because it is bigger"
    "The two forces are equal and opposite and act for the same time. The changes in momentum are equal in size; the car's velocity changes more because its mass is smaller.")
  (wrong "The truck feels a smaller force than the car"
    "By the third law, the forces are equal in size. The car is hurt more because the same force changes its velocity more.")
  (hint "Equal and opposite forces, for the same time."))
```

So: in an isolated system the total momentum before equals the total
momentum after, so you can solve for an unknown velocity.
