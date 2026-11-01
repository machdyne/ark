# Universal gravitation

```lesson
(objective "Compute the gravitational force between two masses with F = G m1 m2 / r^2.")
(standards "HS-PS2-4")
(minutes 25)
(keywords "Newton's law of universal gravitation" "gravitational constant")
```

You can compute the pull of gravity between any two objects, from apples to planets.

Isaac Newton proposed that the pull that makes an apple fall is the same pull that holds the Moon on its path around Earth, and that every mass pulls on every other mass. **Newton's law of universal gravitation**: two masses $m_1$ and $m_2$, whose centers are a distance $r$ apart, attract each other with a force

$$ F = G m_1 m_2 / r^2 $$

The force on each mass points toward the other. By Newton's third law the two forces are a force pair: equal in size, opposite in direction.

```sources
(source "Isaac Newton, Philosophiae Naturalis Principia Mathematica (1687), Book III, Proposition VII")
```

```check
(choice
  (ask "Earth pulls on you with your weight. How hard do you pull on Earth?")
  (right "Exactly as hard, toward you")
  (wrong "Not at all: only big objects pull"
    "Every mass pulls on every other mass. Your pull on Earth is the partner of Earth's pull on you, so it is equal in size.")
  (wrong "Much less, because you are much smaller"
    "The two pulls are a third-law pair, so they are equal. Earth moves far less only because its mass is huge.")
  (hint "The two forces are a force pair."))
```

---

## The gravitational constant

The number $G$ is the **gravitational constant**, the same everywhere in the universe:

$$ G = 6.67 * 10^-11 $$

in N m²/kg² (newton square meters per kilogram squared). It is tiny, so gravity between everyday objects is far too weak to notice. Henry Cavendish first measured the pull between lead spheres in the lab in 1798; from such measurements, $G$ can be found.

Two 1 kg masses 1 m apart pull on each other with only $6.67 * 10^-11$ N.

```sources
(source "Henry Cavendish, Experiments to determine the density of the Earth, Philosophical Transactions of the Royal Society (1798)")
(source "NIST, CODATA recommended values (2018): Newtonian constant of gravitation, 6.67430 x 10^-11 m^3 kg^-1 s^-2")
```

```check
(number
  (ask "Two 1,000 kg cars are parked with their centers 2 m apart. Their gravitational pull on each other is F = (x) x 10^-5 N. What is x? Round to the nearest hundredth.")
  (answer 1.67) (within 0.006) (from "6.67 * 10^-11 * 1000 * 1000 / 2^2 / 10^-5")
  (wrong-if 3.34 "That divides by r, not r squared. The distance is squared: 2² = 4.")
  (wrong-if 6.67 "That forgets to divide by r^2 = 4.")
  (hint "F = 6.67 x 10^-11 x 10^6 / 4.")
  (hint "6.67 x 10^-5 / 4."))
```

---

## Explore the law

Change the masses and the distance. The arrows show the two equal and opposite pulls.

```figure
(define m1 (slider 'm1 1 4 2 "m1 (1000 kg)" 1))
(define m2 (slider 'm2 1 4 2 "m2 (1000 kg)" 1))
(define r (slider 'r 2 6 3 "Distance r (m)" 1))
(define Fu (/ (* 66.7 m1 m2) (* r r)))
(define x1 (- 160 (* 20 r)))
(define x2 (+ 160 (* 20 r)))
(circle x1 120 (* 10 (sqrt m1)) 'grey)
(ring x1 120 (* 10 (sqrt m1)) 'ink 1)
(circle x2 120 (* 10 (sqrt m2)) 'grey)
(ring x2 120 (* 10 (sqrt m2)) 'ink 1)
(arrow x1 76 (+ x1 (* 0.37 Fu)) 76 'ink 2.5)
(arrow x2 90 (- x2 (* 0.37 Fu)) 90 'ink 2.5)
(line x1 160 x2 160 'ink 1)
(label 160 176 "r")
(text 160 40 (string-append "F = " (fmt Fu 1) " x 10^-6 N") 'centre 'small 'bold)
(caption "Arrows to scale, the same length on both")
```

```check
(choice
  (ask "Double one of the masses, keeping the distance. What happens to the force on each mass?")
  (right "It doubles, on both masses")
  (wrong "It doubles on the bigger mass only"
    "The two forces are always equal. F = G m_1 m_2 / r^2 grows in step with either mass, and acts on both.")
  (wrong "It becomes 4 times as large"
    "Only one mass doubled, so the product m_1 m_2 doubles. The force doubles.")
  (hint "Look at both arrows."))
```

---

## A worked example

```example
(example
  (problem "Find Earth's pull on a 70 kg person at its surface. Earth's mass is 5.97 x 10^24 kg and its radius is 6.37 x 10^6 m.")
  (step "r is the distance between centers: Earth's radius, 6.37 x 10^6 m.")
  (step "F = 6.67 x 10^-11 x 5.97 x 10^24 x 70 / (6.37 x 10^6)^2.")
  (step "Top: 2.79 x 10^16. Bottom: 4.06 x 10^13. F = 687 N.")
  (answer "About 687 N, which is 70 x 9.8: the person's weight"))
```

So the law of gravitation gives the weights we measure, with $g$ about 9.8 m/s².

Now you finish one.

```check
(number
  (ask "Earth pulls on the Moon. The Moon's mass is 7.35 x 10^22 kg and its center is 3.84 x 10^8 m from Earth's. The force is (x) x 10^20 N. What is x? Round to the nearest hundredth.")
  (answer 1.98) (within 0.006) (from "6.67 * 10^-11 * 5.97 * 10^24 * 7.35 * 10^22 / (3.84 * 10^8)^2 / 10^20")
  (hint "Top: 6.67 x 5.97 x 7.35 x 10^(-11 + 24 + 22).")
  (hint "Bottom: (3.84 x 10^8)^2 = 1.47 x 10^17."))
```

```sources
(source "NASA Goddard Space Flight Center, Moon Fact Sheet (NSSDCA): mass 0.07346 x 10^24 kg; orbit semimajor axis 0.3844 x 10^6 km")
```

---

## Practice

```check
(choice
  (ask "Why don't you feel a pull toward a large building as you walk past it?")
  (right "It does pull on you, but G is so small that the pull is far too weak to notice")
  (wrong "Buildings have no gravity; only planets do"
    "Every mass attracts every other mass. The pull from a building is real but tiny, because G is about 10^-11.")
  (wrong "Earth's gravity blocks it"
    "Gravity is not blocked. The building's pull simply adds to Earth's much larger one.")
  (hint "How big is G?"))
```

```check
(number
  (ask "Two objects attract with 12 N. One mass is tripled. What is the new force?")
  (answer 36) (unit "N") (from "12 * 3")
  (wrong-if 108 "Only one mass changed, so the force grows 3 times, not 9 times.")
  (hint "F is proportional to each mass."))
```

```check
(number
  (ask "Two equal 50 kg masses are 0.5 m apart. What is their pull on each other, in units of 10^-7 N? Round to the nearest hundredth.")
  (answer 6.67) (within 0.006) (from "6.67 * 10^-11 * 50 * 50 / 0.5^2 / 10^-7")
  (wrong-if 3.34 "That divides by r instead of r^2. 0.5² = 0.25.")
  (hint "F = 6.67 x 10^-11 x 2,500 / 0.25.")
  (hint "= 6.67 x 10^-11 x 10,000."))
```

---

So by Newton's law of universal gravitation, every two masses attract with $F = G m_1 m_2 / r^2$, where the gravitational constant $G = 6.67 * 10^-11$ N m²/kg² is tiny.
