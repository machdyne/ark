# The pendulum

```lesson
(objective "Use T = 2 pi sqrt(L/g) for small swings, and find from simulated data that the period does not depend on the mass.")
(standards "HSA-CED.A.4" "HSS-ID.B.6")
(minutes 25)
(keywords "simple pendulum")
```

You learn to predict a pendulum's period from its length, and to find
from data what does not matter.

A **simple pendulum** is a small, heavy bob hanging from a light string
or rod that does not stretch. Pull the bob aside and let go: gravity
gives a restoring force toward the lowest point, and the pendulum
oscillates. For small swings, up to about 15 degrees,

$$ T = 2 pi sqrt(L/g) $$

where $L$ is the length from the pivot to the center of the bob, and
$g = 9.8$ m/s^2. The mass of the bob is not in the formula.

```sources
(source "OpenStax, College Physics 2e (2022), section 16.4, The Simple Pendulum")
```

```check
(number
  (ask "A simple pendulum is 1.0 m long. What is its period, to the nearest hundredth of a second?")
  (answer 2.01) (within 0.005) (unit "s") (from "2 pi sqrt(1.0/9.8)")
  (wrong-if 0.32 "That is sqrt(L/g) without the 2 pi.")
  (wrong-if 19.67 "That uses g/L. A longer pendulum swings more slowly, so L goes on top.")
  (hint "L/g = 1.0/9.8 = 0.102.")
  (hint "2 pi sqrt(0.102)."))
```

---

## A pendulum to try

Change the length, the mass and the swing. The graph shows the period
against length, and the dot is your pendulum.

```figure
(define L (slider 'L 0.25 2 1 "Length (m)" 0.25))
(define m (slider 'm 0.1 1 0.5 "Mass (kg)" 0.1))
(define a0 (slider 'a 5 15 10 "Swing (deg)" 5))
(define T (* 2 pi (sqrt (/ L 9.8))))
(still
  (wv-surface 50 150 20 #t)
  (graph 200 40 105 130 0 2 0 3)
  (graph-axes 0.5 1 "L (m)" "T (s)")
  (plot (lambda (l) (* 2 pi (sqrt (/ l 9.8)))) 'ink 1.5)
  (plot-point L T 'warm)
  (text 250 210 (string-append "T = " (fmt T 2) " s") 'centre 'body 'bold))
(wv-pendulum 100 20 (* 85 L) (wv-swing a0 T (seconds)) (+ 4 (* 6 m)) 'warm)
(caption "Real time. Small swings, no air.")
```

```check
(choice
  (ask "Set the length to 1.0 m. Change the mass from 0.1 kg to 1.0 kg. What happens to the period?")
  (right "Nothing: it stays about 2.0 s")
  (wrong "It gets shorter, because heavy things fall faster"
    "With the air ignored, heavy and light things fall the same way. A heavier bob gets a larger pull, but it is harder to speed up by the same factor.")
  (wrong "It gets longer, because the bob is heavier to move"
    "It is harder to move, but gravity pulls it harder in proportion. The two cancel, so the mass drops out of the formula.")
  (hint "Is m in T = 2 pi sqrt(L/g)?"))
```

---

## Finding the law in data

A simulation timed pendulums. Look at what changes the period and
what does not.

| Length (m) | Mass (kg) | Period (s) |
|---|---|---|
| 0.25 | 0.20 | 1.00 |
| 0.50 | 0.20 | 1.42 |
| 1.00 | 0.20 | 2.01 |
| 2.00 | 0.20 | 2.84 |
| 1.00 | 0.50 | 2.01 |
| 1.00 | 1.00 | 2.01 |

Four times the length gives twice the period. So $T$ grows with
$sqrt(L)$, and $T^2 / L$ is the same for every row: about 4.0 s^2/m,
which is $4 pi^2 / g$.

```check
(number
  (ask "Using the pattern in the table, what period would a 4.00 m pendulum have, to the nearest hundredth of a second?")
  (answer 4.01) (within 0.01) (unit "s") (from "2 pi sqrt(4.00/9.8)")
  (wrong-if 8.04 "That makes the period grow in step with the length. From the table, 4 times the length gives only 2 times the period.")
  (hint "4.00 m is 4 times 1.00 m.")
  (hint "4 times the length, sqrt(4) = 2 times the period: 2 * 2.01."))
```

---

## Small swings only

The formula is for small swings. Larger swings take a little longer
than it says, so a pendulum clock keeps good time only if its swing
stays small and steady. Up to about 15 degrees, the formula is very
close.

```check
(choice
  (ask "A pendulum is pulled back 60 degrees and let go. How does its period compare with 2 pi sqrt(L/g)?")
  (right "It is a little longer")
  (wrong "It is exactly the same, since the amplitude never matters"
    "For a spring the amplitude does not matter. For a pendulum the formula holds only for small swings; large ones take longer.")
  (wrong "It is much shorter, because the bob moves faster"
    "The bob does move faster, but it also has much farther to go. Large swings take a little longer, not shorter.")
  (hint "The formula is true for swings up to about 15 degrees."))
```

---

## Worked example

```example
(example
  (problem "A pendulum clock needs a period of exactly 2.00 s. How long must its pendulum be?")
  (step "Square both sides: T^2 = 4 pi^2 L / g.")
  (step "L = g T^2 / (4 pi^2) = 9.8 * 4.00 / 39.48.")
  (step "L = 0.993 m, just under 1 m (about 3.3 ft).")
  (answer "about 0.99 m"))
```

```example
(example
  (problem "A playground swing is 2.5 m long. About what is its period for small swings?")
  (step "T = 2 pi sqrt(2.5 / 9.8) = 2 pi sqrt(0.255).")
  (step (number (ask "T, to the nearest tenth of a second?") (answer 3.2) (within 0.05) (unit "s") (from "2 pi sqrt(2.5/9.8)")
    (wrong-if 0.5 "That is sqrt(L/g) without the 2 pi.")
    (hint "sqrt(0.255) is about 0.505.")))
  (answer "about 3.2 s"))
```

---

## Practice

```check
(number
  (ask "On the Moon, g is about 1.6 m/s^2. What would the period of a 1.0 m pendulum be there, to the nearest tenth of a second?")
  (answer 5) (within 0.05) (unit "s") (from "2 pi sqrt(1.0/1.6)")
  (wrong-if 2 "That is the period on Earth. On the Moon g is smaller, so the pendulum swings more slowly.")
  (wrong-if 0.8 "That is sqrt(L/g) without the 2 pi. Multiply by 2 pi: the period on the Moon is longer than on Earth.")
  (hint "T = 2 pi sqrt(1.0/1.6)."))
```

```check
(choice
  (ask "To make a pendulum swing with half its period, what should you do to its length?")
  (right "Make it 1/4 as long" (true "sqrt(1/4) = 1/2"))
  (wrong "Make it half as long"
    "T grows with sqrt(L). Half the length gives sqrt(1/2), about 0.71 of the period, not half.")
  (wrong "Use a bob of half the mass"
    "The mass does not change the period. Only the length (and g) do.")
  (hint "Which L makes sqrt(L) half as big?"))
```

```sources
(source "NASA, Moon Fact Sheet (NSSDCA): surface gravity 1.62 m/s^2")
```

So: for small swings $T = 2 pi sqrt(L/g)$; the period grows with the
square root of the length and does not depend on the mass.
