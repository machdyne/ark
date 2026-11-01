# Springs

```lesson
(objective "Use Hooke's law, F = kx, to find a spring's force or its stretch.")
(standards "HS-PS2-1" "HSA-CED.A.4")
(minutes 25)
(keywords "Hooke's law" "spring constant")
```

You can predict how hard a spring pulls back when you stretch it, and how far a weight stretches it.

Pull a spring and it pulls back; squeeze it and it pushes back. **Hooke's law** says the spring's force grows in step with how far it is stretched or squeezed from its relaxed length:

$$ F = k x $$

Here $x$ is the stretch (or squeeze) in meters, and $F$ is the size of the spring's force, which points back toward the relaxed length. The number $k$ is the **spring constant**, in N/m: how many newtons it takes to stretch the spring 1 m. A stiff spring has a large $k$.

```sources
(source "Robert Hooke, Lectures de Potentia Restitutiva, or of Spring (1678)")
(source "OpenStax, College Physics (2012), section 5.3: elasticity, stress and strain, Hooke's law")
```

```check
(number
  (ask "A spring has k = 200 N/m. What force does it exert when stretched 0.15 m?")
  (answer 30) (unit "N") (from "200 * 0.15")
  (wrong-if 1333 "That divides 200 by 0.15. Hooke's law multiplies: F = k x.")
  (hint "F = k x."))
```

---

## See it

The spring is fixed to a wall. Pull its end out with the slider. The arrow is the spring's force on your hand, drawn to scale.

```figure
(define x (slider 'x -0.3 0.3 0.2 "Stretch x (m)" 0.05))
(define k 100)
(define ex (+ 160 (* 300 x)))
(rect 10 70 10 60 'earth)
(line 20 70 20 130 'ink 2)
(mc-spring 20 ex 100 8)
(rect (- ex 2) 88 12 24 'ink)
(line 160 140 160 150 'ink 1)
(text 160 164 "relaxed" 'centre 'tiny)
(if (> (abs x) 0.01) (mc-vec (+ ex 5) 60 (* 300 (abs x)) (if (> x 0) 180 0) 'ink))
(text 160 36 (string-append "F = " (fmt k 0) " x " (fmt (abs x) 2) " = " (fmt (* k (abs x)) 0) " N") 'centre 'small 'bold)
(graph 200 170 100 50 0 0.3 0 30)
(line (gx 0) (gy 0) (gx 0.3) (gy 0) 'ink 1)
(line (gx 0) (gy 0) (gx 0) (gy 30) 'ink 1)
(text 306 (gy 0) "x" 'small)
(text 192 (+ (gy 30) 8) "F" 'small)
(path (list (gx 0) (gy 0) (gx 0.3) (gy 30)) 'cool 1.5)
(plot-point (abs x) (* k (abs x)) 'warm)
(caption "k = 100 N/m; the graph of F against x is a line")
```

```check
(choice
  (ask "Squeeze the spring (a negative x). Which way does its force on your hand point?")
  (right "Out, away from the wall, back toward the relaxed length")
  (wrong "In, toward the wall"
    "A squeezed spring pushes back out. Its force always points back toward the relaxed length.")
  (wrong "There is no force when it is squeezed"
    "Hooke's law holds for squeezing as well as stretching. The spring pushes back with k x.")
  (hint "Watch the arrow when x is below 0."))
```

---

## A graph of force against stretch

Because $F = k x$, a graph of the force against the stretch is a straight line through 0, and its slope is the spring constant.

In a simulated test, a spring is pulled with known forces:

| Force (N) | Stretch (m) |
|---|---|
| 2 | 0.04 |
| 4 | 0.08 |
| 6 | 0.12 |

```check
(number
  (ask "What is this spring's constant?")
  (answer 50) (unit "N/m") (from "2 / 0.04")
  (wrong-if 0.02 "That is the stretch divided by the force. k = F / x: newtons per meter.")
  (hint "k = F / x for any row."))
```

---

## Hanging a mass

A mass hanging at rest on a spring is in equilibrium: the spring's pull up balances the weight down.

$$ k x = m g $$

so the stretch is $x = m g / k$.

```check
(number
  (ask "A 0.5 kg mass hangs at rest from a spring with k = 98 N/m. How far is the spring stretched?")
  (answer 0.05) (unit "m") (from "0.5 * 9.8 / 98")
  (wrong-if 0.0051 "That divides the mass, not the weight, by k. The spring holds up the weight, m g = 4.9 N.")
  (wrong-if 196 "That multiplies. x = m g / k.")
  (hint "Weight: 0.5 x 9.8 = 4.9 N.")
  (hint "x = 4.9 / 98."))
```

---

## A worked example

```example
(example
  (problem "A spring stretches 3.0 cm when a 1.2 kg mass hangs from it. Find k.")
  (step "Weight: m g = 1.2 x 9.8 = 11.76 N.")
  (step "Stretch in meters: 3.0 cm = 0.030 m.")
  (step "k = F / x = 11.76 / 0.030 = 392 N/m.")
  (answer "k = 392 N/m"))
```

Now you finish one.

```check
(number
  (ask "A spring stretches 4.0 cm when a 2.0 kg mass hangs from it. What is k?")
  (answer 490) (unit "N/m") (from "2 * 9.8 / 0.04")
  (wrong-if 4.9 "That uses the stretch in centimeters. Change 4.0 cm to 0.040 m first.")
  (wrong-if 50 "That uses the mass, not the weight. The spring holds up m g = 19.6 N.")
  (hint "F = 19.6 N and x = 0.040 m."))
```

---

## Practice

```check
(number
  (ask "A car's suspension spring has k = 30,000 N/m. How much force squeezes it 2 cm?")
  (answer 600) (unit "N") (from "30000 * 0.02")
  (wrong-if 60000 "That uses 2 cm as 2 m. Change it to 0.02 m.")
  (hint "x = 0.02 m."))
```

```check
(choice
  (ask "You double the stretch of a spring. What happens to its force, if Hooke's law holds?")
  (right "It doubles")
  (wrong "It becomes 4 times as large"
    "F = k x grows in step with x, not with x squared. Double x, double F.")
  (wrong "It stays the same"
    "The spring pulls harder the more it is stretched.")
  (hint "F is proportional to x."))
```

```check
(choice
  (ask "A spring is stretched far past its usual range and stays longer after you let go. What can you say?")
  (right "Hooke's law no longer held; the spring was bent out of shape")
  (wrong "Its spring constant doubled"
    "A spring stretched too far is damaged, and stops following F = k x at all. It does not just get a new k.")
  (hint "Does F = k x hold for any stretch?"))
```

---

So by Hooke's law, a spring pulls or pushes back with a force $F = k x$, where the spring constant $k$ tells how stiff it is.
