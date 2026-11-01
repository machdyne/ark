# Momentum

```lesson
(objective "Compute momentum as p = mv, a vector in the direction of the velocity.")
(standards "HS-PS2-2" "HSA-CED.A.4")
(minutes 20)
(keywords "momentum")
```

You learn to compute momentum, and to give it a direction.

A slow truck and a fast baseball are both hard to stop. What makes a
moving object hard to stop depends on both its mass and its velocity.
The product of the two is the object's **momentum**:

$$ p = m v $$

Momentum is measured in kilogram meters per second, kg m/s. It has no
special name of its own.

```sources
(source "OpenStax, College Physics 2e (2022), section 8.1, Linear Momentum and Force")
```

```check
(number
  (ask "A 1,200 kg car moves at 25 m/s (about 56 mph). What is the size of its momentum, in kg m/s?")
  (answer 30000) (unit "kg m/s") (from "1200 * 25")
  (wrong-if 375000 "That is 1/2 m v^2, the kinetic energy in joules. Momentum is m v, with the speed not squared.")
  (wrong-if 48 "That is 1,200 / 25. Momentum is mass times velocity.")
  (hint "p = m v."))
```

---

## Momentum is a vector

Velocity has a direction, so momentum does too: it points the way the
object moves. Along a line, choose one direction as positive. A cart
moving the other way has a negative velocity, and a negative momentum.

Move the sliders. The arrow is the cart's momentum, to scale.

```figure
(define m (slider 'm 1 4 2 "Mass (kg)" 0.5))
(define v (slider 'v -3 3 2 "v (m/s)" 0.5))
(define p (* m v))
(wv-surface 10 310 130 #f)
(wv-cart 125 130 70 'grey (string-append (fmt m 1) " kg"))
(if (> (abs p) 0.01) (arrow 160 70 (+ 160 (* 12 p)) 70 'warm 3))
(text 160 54 "momentum" 'centre 'small)
(arrow 240 196 290 196 'ink 1)
(text 230 186 "+ direction" 'small)
(text 120 200 (string-append "p = m v = " (fmt p 1) " kg m/s") 'centre 'body 'bold)
```

```check
(number
  (ask "A 2.0 kg cart moves at 3.0 m/s in the negative direction. What is its momentum, in kg m/s? Give the sign.")
  (answer -6) (unit "kg m/s") (from "2.0 * (-3.0)")
  (wrong-if 6 "The size is right, but the cart moves the negative way. Momentum has the direction of the velocity, so it is -6.")
  (hint "The velocity is -3.0 m/s.")
  (hint "p = 2.0 * (-3.0)."))
```

---

## Mass or speed

A heavy, slow object can have the same momentum as a light, fast one.
Unlike kinetic energy, momentum grows with the speed itself, not its
square: twice the speed means twice the momentum.

```check
(choice
  (ask "Which has more momentum: a 0.15 kg baseball at 40 m/s, or a 60 kg runner at 0.5 m/s?")
  (right "The runner" (true "60 * 0.5 > 0.15 * 40"))
  (wrong "The baseball, because it is much faster" (false "0.15 * 40 > 60 * 0.5")
    "Speed is only half the story. The ball's p = 0.15 * 40 = 6 kg m/s; the runner's is 60 * 0.5 = 30 kg m/s.")
  (wrong "They are the same" (false "0.15 * 40 = 60 * 0.5")
    "Work out each one: 6 kg m/s and 30 kg m/s are not equal.")
  (hint "Compute m v for each."))
```

---

## Worked example

```example
(example
  (problem "A 0.40 kg ball moving at 10 m/s to the right is hit and moves at 15 m/s to the left. Taking right as positive, what are its momenta before and after?")
  (step "Before: p = 0.40 * 10 = +4.0 kg m/s.")
  (step "After: v = -15 m/s, so p = 0.40 * (-15) = -6.0 kg m/s.")
  (step "The change is -6.0 - 4.0 = -10 kg m/s: the direction counts.")
  (answer "+4.0 kg m/s before, -6.0 kg m/s after"))
```

```example
(example
  (problem "A 70 kg skater has a momentum of 280 kg m/s. How fast is she moving?")
  (step "Rearrange p = m v: v = p / m.")
  (step (number (ask "v, in m/s?") (answer 4) (unit "m/s") (from "280 / 70")
    (wrong-if 19600 "That is p times m. Divide the momentum by the mass.")
    (hint "280 / 70.")))
  (answer "4.0 m/s"))
```

---

## Practice

```check
(number
  (ask "A 9,000 kg truck has the same momentum as a 1,500 kg car moving at 24 m/s. How fast is the truck moving, in m/s?")
  (answer 4) (unit "m/s") (from "1500 * 24 / 9000")
  (wrong-if 144 "That multiplies by the truck's mass ratio instead of dividing. The heavier truck needs a smaller speed for the same momentum.")
  (hint "The car's p = 1,500 * 24 = 36,000 kg m/s.")
  (hint "36,000 / 9,000."))
```

```check
(choice
  (ask "A cart's speed doubles. What happens to its momentum?")
  (right "It doubles" (true "2 * 1 = 2"))
  (wrong "It becomes 4 times as large"
    "That is what kinetic energy does, because of the v^2. Momentum, m v, grows in step with the speed.")
  (wrong "It stays the same, since the mass is the same"
    "The mass is the same, but momentum is mass times velocity, so the faster cart has more.")
  (hint "p = m v. Nothing is squared."))
```

So: momentum is $p = m v$, in kg m/s, pointing the way the object
moves.
