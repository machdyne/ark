# Energy in a spring

```lesson
(objective "Compute the energy stored in a stretched or squeezed spring as 1/2 k x^2.")
(standards "HS-PS3-2")
(minutes 20)
(keywords "elastic potential energy")
```

You learn to compute the energy stored in a spring when you stretch it
or squeeze it.

A stretched spring can launch a toy, and a squeezed one can push a
door shut. The energy stored in an object that is stretched, squeezed
or bent out of its usual shape is **elastic potential energy**. For a
spring with spring constant $k$, stretched or squeezed a distance $x$
from its relaxed length:

$$ PE_s = 1/2 k x^2 $$

with $k$ in N/m and $x$ in meters, so $PE_s$ is in joules.

```sources
(source "OpenStax, College Physics 2e (2022), section 7.4, Conservative Forces and Potential Energy")
```

```check
(number
  (ask "A spring with k = 200 N/m is stretched 0.10 m. How much elastic potential energy does it store, in joules?")
  (answer 1) (unit "J") (from "1/2 * 200 * 0.10^2")
  (wrong-if 10 "That is 1/2 k x, without squaring the stretch. Square 0.10 first: 0.010.")
  (wrong-if 20 "That is k x, the spring's force in newtons. The energy is 1/2 k x^2.")
  (hint "0.10^2 = 0.010.")
  (hint "1/2 * 200 * 0.010."))
```

---

## Where the 1/2 comes from

By Hooke's law, the force you need grows as you stretch: $F = k x$. It
starts at 0 and ends at $k x$, so on average it is $1/2 k x$. Work is
average force times distance: $1/2 k x * x = 1/2 k x^2$.

On a graph of force against stretch, that work is the area of the
shaded triangle. Move the sliders.

```figure
(define k (slider 'k 100 500 200 "k (N/m)" 50))
(define x (slider 'x 0 0.2 0.1 "Stretch (m)" 0.02))
(define e (* 0.5 k x x))
(wv-wall 30 20 70)
(wv-spring 30 (+ 120 (* 400 x)) 45 6)
(wv-block (+ 120 (* 400 x)) 30 30 30 'grey #f)
(line 150 74 150 82 'ink 1)
(if (> x 0) (arrow 150 78 (+ 150 (* 400 x)) 78 'ink 1))
(graph 70 100 200 100 0 0.2 0 100)
(graph-axes 0.05 25 "x (m)" "F (N)")
(if (> x 0) (poly (list (gx 0) (gy 0) (gx x) (gy 0) (gx x) (gy (* k x))) 'warm))
(plot (lambda (s) (* k s)) 'ink 1.5)
(text 160 228 (string-append "PE = 1/2 k x^2 = " (fmt e 2) " J") 'centre 'small 'bold)
```

```check
(choice
  (ask "You stretch a spring twice as far. How does its stored energy change?")
  (right "It becomes 4 times as large" (true "2^2 = 4"))
  (wrong "It doubles"
    "The force doubles, but so does the distance it acts over. The triangle is twice as wide and twice as tall: 4 times the area.")
  (wrong "It stays the same, because the spring is the same"
    "The spring's k is the same, but the energy depends on the stretch too, squared.")
  (hint "Set the stretch to 0.1 m, then 0.2 m. Compare the energies."))
```

---

## Stretched or squeezed

Squeezing a spring stores energy too. A squeeze of 0.05 m and a
stretch of 0.05 m store the same energy, because $x^2$ is the same for
$x = 0.05$ and $x = -0.05$.

A stiffer spring, with a larger $k$, stores more energy for the same
stretch, but it also takes more force to stretch.

```check
(number
  (ask "A toy launcher's spring has k = 400 N/m. It is squeezed 0.050 m. How much energy does it store, in joules?")
  (answer 0.5) (unit "J") (from "1/2 * 400 * 0.050^2")
  (wrong-if 10 "That is 1/2 k x, without the square. 0.050^2 = 0.0025.")
  (wrong-if 1 "That is k x^2 without the 1/2.")
  (hint "Squeezed or stretched, the formula is the same: 1/2 k x^2."))
```

---

## Worked example

```example
(example
  (problem "A spring stores 4.0 J when it is stretched 0.20 m. What is its spring constant?")
  (step "Write the formula: 4.0 = 1/2 k (0.20)^2.")
  (step "(0.20)^2 = 0.040, so 4.0 = 0.020 k.")
  (step "k = 4.0 / 0.020 = 200 N/m.")
  (answer "200 N/m"))
```

```example
(example
  (problem "A spring with k = 800 N/m stores 1.0 J. How far is it stretched?")
  (step "1.0 = 1/2 * 800 * x^2, so x^2 = 2 * 1.0 / 800 = 0.0025.")
  (step (number (ask "x, in meters?") (answer 0.05) (within 0.001) (unit "m") (from "sqrt(0.0025)")
    (wrong-if 0.0025 "That is x^2. Take the square root to find x.")
    (hint "sqrt(0.0025) = ?")))
  (answer "0.050 m, or 5.0 cm"))
```

---

## Practice

```check
(number
  (ask "A car's suspension spring has k = 30,000 N/m. A bump squeezes it 0.040 m. How much energy does it store, in joules?")
  (answer 24) (unit "J") (from "1/2 * 30000 * 0.040^2")
  (wrong-if 48 "That leaves out the 1/2.")
  (wrong-if 600 "That is 1/2 k x without squaring x. 0.040^2 = 0.0016.")
  (hint "0.040^2 = 0.0016."))
```

```check
(choice
  (ask "Spring A has twice the spring constant of spring B. Both are stretched the same distance. Which stores more energy?")
  (right "A, twice as much" (true "1/2 * 2 * 1^2 = 2 * (1/2 * 1 * 1^2)"))
  (wrong "A, 4 times as much"
    "The stretch is squared, not k. With the same stretch, twice the k gives twice the energy.")
  (wrong "They store the same"
    "The same stretch takes twice the force on the stiffer spring, so twice the work is done on it.")
  (hint "In 1/2 k x^2, only k differs."))
```

So: a spring stretched or squeezed by $x$ stores elastic potential
energy $1/2 k x^2$, the area under its force-stretch line.
