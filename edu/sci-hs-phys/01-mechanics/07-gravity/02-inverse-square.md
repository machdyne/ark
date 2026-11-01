# The inverse-square law

```lesson
(objective "Predict how the force of gravity changes with distance by the inverse-square law.")
(standards "HS-PS2-4")
(minutes 20)
(keywords "inverse-square law")
```

You can predict how much weaker gravity gets as you move away from a planet, without computing the whole formula.

In $F = G m_1 m_2 / r^2$, the distance is squared in the bottom. So the force follows an **inverse-square law**: it changes as 1 over the square of the distance.

- Twice as far: $1/2^2 = 1/4$ of the force.
- Three times as far: $1/3^2 = 1/9$.
- Half as far: $2^2 = 4$ times the force.

```check
(choice
  (ask "Two masses are moved twice as far apart. What happens to the gravitational force between them?")
  (right "It becomes 1/4 as large")
  (wrong "It becomes 1/2 as large"
    "The distance is squared in the formula. Twice the distance gives 2² = 4 times the bottom, so 1/4 of the force.")
  (wrong "It stays the same, because the masses are the same"
    "The masses are the same, but the force also depends on the distance between them.")
  (hint "Square the change in distance."))
```

---

## Measured from the center

For a planet, $r$ is measured from the planet's center, not from its surface. Standing on Earth you are already one Earth radius, 6,370 km, from the center. To be twice as far, you would need to be 6,370 km above the surface.

Move the slider: the distance from Earth's center, in Earth radii, and the pull on an object compared with its weight at the surface.

```figure
(define x (slider 'x 1 5 2 "r (Earth radii)" 0.5))
(graph 50 30 250 160 0 5 0 1.2)
(graph-axes 1 0.2 "r / R" "F / F surface")
(line (gx 1) (gy 0) (gx 1) (gy 1.2) 'grey 1)
(text (gx 0.5) (gy 0.5) "inside" 'centre 'tiny)
(text (gx 0.5) (gy 0.4) "Earth" 'centre 'tiny)
(plot (lambda (r) (if (< r 1) 2 (/ 1 (* r r)))) 'ink 2)
(plot-point x (/ 1 (* x x)) 'warm)
(caption (string-append "at " (fmt x 1) " R the pull is " (fmt (/ 1 (* x x)) 3) " of the surface value"))
```

```check
(number
  (ask "A space probe is 3 Earth radii from Earth's center. Its weight at the surface would be 900 N. How hard does Earth pull on it there?")
  (answer 100) (unit "N") (from "900 / 3^2")
  (wrong-if 300 "That divides by 3. The force falls as the square of the distance: divide by 9.")
  (wrong-if 225 "That uses 2 radii, the height above the surface. Distances are measured from Earth's center: 3 radii.")
  (hint "Divide by 3²."))
```

---

## A worked example

```example
(example
  (problem "The International Space Station flies about 400 km above Earth's surface. Compare Earth's pull on it with the pull at the surface.")
  (step "Distance from the center: 6,370 km + 400 km = 6,770 km.")
  (step "Ratio of distances: 6,770 / 6,370 = 1.063.")
  (step "Ratio of forces: 1 / 1.063² = 0.885.")
  (answer "About 89% of the surface pull: gravity is still strong there"))
```

```sources
(source "NASA, International Space Station facts and figures: altitude about 400 km (250 miles)")
```

Now you finish one.

```check
(number
  (ask "An object is 1,000 km above Earth's surface. What fraction of its surface weight does it have there? Round to the nearest hundredth.")
  (answer 0.75) (within 0.006) (from "(6370 / 7370)^2")
  (wrong-if 0.86 "That is 6,370 / 7,370 without squaring. The force goes as 1 over the distance squared.")
  (hint "r = 6,370 + 1,000 = 7,370 km.")
  (hint "(6,370 / 7,370)²."))
```

---

## Practice

```check
(number
  (ask "Two asteroids attract with 80 N. They drift to half their distance apart. What is the force now?")
  (answer 320) (unit "N") (from "80 * 2^2")
  (wrong-if 160 "Half the distance gives 4 times the force, because the distance is squared.")
  (wrong-if 20 "Closer means stronger, not weaker.")
  (hint "Half the distance: multiply by 2²."))
```

```check
(number
  (ask "By what factor does the force of gravity change when the distance is made 10 times larger?")
  (answer 0.01) (within 0.0001) (from "1 / 10^2")
  (wrong-if 0.1 "That divides by 10. Divide by 10², 100.")
  (hint "1 / 10²."))
```

```check
(choice
  (ask "An astronaut is 4 Earth radii from Earth's center. Does Earth's gravity still pull on her?")
  (right "Yes, with 1/16 of the pull at the surface")
  (wrong "No: gravity stops above the atmosphere"
    "Gravity reaches out with no end, getting weaker as 1/r^2. It holds the Moon, far beyond 4 Earth radii.")
  (wrong "Yes, with 1/4 of the pull at the surface"
    "Four times as far gives 1/4², which is 1/16, not 1/4.")
  (hint "1 / 4²."))
```

---

So by the inverse-square law, gravity weakens as 1 over the distance squared, measured from the center: twice as far, a quarter of the force.
