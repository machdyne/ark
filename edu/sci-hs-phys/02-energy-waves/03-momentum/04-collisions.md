# Elastic and inelastic collisions

```lesson
(objective "Tell elastic from inelastic collisions by checking kinetic energy, and solve a collision where the objects stick together.")
(standards "HS-PS2-2")
(minutes 25)
(keywords "elastic collision" "inelastic collision")
```

You learn to tell two kinds of collision apart by their kinetic
energy, and to solve one where the objects stick.

Momentum is conserved in every collision of an isolated system.
Kinetic energy is not always kept:

- In an **elastic collision**, the total kinetic energy after equals the total before. Hard steel balls and billiard balls come close to this.
- In an **inelastic collision**, some kinetic energy becomes thermal energy, sound, or the work of denting and bending. When the objects stick together, the loss is the greatest it can be.

The total energy is still conserved; only the kinetic part changes.

```sources
(source "OpenStax, College Physics 2e (2022), section 8.4, Elastic Collisions in One Dimension, and section 8.5, Inelastic Collisions in One Dimension")
```

```check
(choice
  (ask "Two cars collide, crumple and lock together. What kind of collision is it?")
  (right "Inelastic: kinetic energy is lost to bending metal, sound and thermal energy")
  (wrong "Elastic, because momentum is conserved"
    "Momentum is conserved in every collision. Elastic means kinetic energy is conserved too, and crumpling metal takes kinetic energy away.")
  (wrong "Neither: momentum is lost when they stop"
    "Momentum is never lost in an isolated system. The locked cars carry all of it together.")
  (hint "What happens to kinetic energy when metal crumples?"))
```

---

## Compare the two

Cart A, at 2.0 m/s, hits cart B at rest. Choose the kind of collision,
and compare the momentum and the kinetic energy before and after.

```figure
(still (wv-surface 10 310 150 #f))
(define k (choice 'kind '("elastic" "stick") "Collision"))
(define m1 (slider 'm1 1 3 2 "Cart A (kg)" 0.5))
(define m2 (slider 'm2 1 3 1 "Cart B (kg)" 0.5))
(define t (modulo (seconds) 3.2))
(define s (+ m1 m2))
(define u1 (if (= k 0) (/ (* 2 (- m1 m2)) s) (/ (* 2 m1) s)))
(define u2 (if (= k 0) (/ (* 4 m1) s) (/ (* 2 m1) s)))
(define after (> t 1.2))
(define x1 (if after (+ 80 (* 25 u1 (- t 1.2))) (+ 20 (* 50 t))))
(define x2 (if after (+ 120 (* 25 u2 (- t 1.2))) 120))
(wv-cart x1 150 40 'warm "A")
(wv-cart x2 150 40 'cool "B")
(wv-varrow (+ x1 20) 100 (if after u1 2) 15 'ink)
(wv-varrow (+ x2 20) 80 (if after u2 0) 15 'ink)
(text 60 26 "before" 'centre 'small 'bold)
(text 220 26 "after" 'centre 'small 'bold)
(text 60 44 (string-append "p = " (fmt (* 2 m1) 2)) 'centre 'small)
(text 220 44 (string-append "p = " (fmt (+ (* m1 u1) (* m2 u2)) 2)) 'centre 'small)
(text 60 60 (string-append "KE = " (fmt (* 2 m1) 2)) 'centre 'small)
(text 220 60 (string-append "KE = " (fmt (* 0.5 (+ (* m1 u1 u1) (* m2 u2 u2))) 2)) 'centre 'small)
(text 160 190 (string-append "after: A " (fmt u1 2) " m/s, B " (fmt u2 2) " m/s") 'centre 'small)
(caption "Real time. p in kg m/s, KE in J.")
```

```check
(choice
  (ask "Set the collision to stick, with A = 2.0 kg and B = 1.0 kg. Which is true?")
  (right "Momentum stays 4.0 kg m/s, and kinetic energy falls from 4.0 J to about 2.7 J")
  (wrong "Both momentum and kinetic energy stay the same"
    "That happens only in an elastic collision. When carts stick, some kinetic energy always becomes other forms.")
  (wrong "Both momentum and kinetic energy fall"
    "Momentum is conserved in every collision: the after column still reads 4.0 kg m/s.")
  (hint "Read the before and after columns."))
```

---

## Checking for elastic

To tell what kind a collision was, compute the total kinetic energy
before and after. If they are equal, it was elastic. If kinetic energy
went down, it was inelastic.

```example
(example
  (problem "A 1.0 kg cart at 3.0 m/s hits a 2.0 kg cart at rest. After, the first moves at -1.0 m/s and the second at 2.0 m/s. Elastic or inelastic?")
  (step "Momentum check: before 1.0 * 3.0 = 3.0; after 1.0 * (-1.0) + 2.0 * 2.0 = 3.0 kg m/s. Good.")
  (step "KE before: 1/2 * 1.0 * 3.0^2 = 4.5 J.")
  (step "KE after: 1/2 * 1.0 * 1.0^2 + 1/2 * 2.0 * 2.0^2 = 0.5 + 4.0 = 4.5 J.")
  (answer "Elastic: kinetic energy is the same"))
```

```example
(example
  (problem "A 1,000 kg car at 12 m/s hits a 1,000 kg car at rest, and they lock together at 6.0 m/s. How much kinetic energy is lost?")
  (step "KE before: 1/2 * 1,000 * 12^2 = 72,000 J.")
  (step "KE after: 1/2 * 2,000 * 6.0^2 = 36,000 J.")
  (step (number (ask "KE lost, in joules?") (answer 36000) (unit "J") (from "1/2 * 1000 * 12^2 - 1/2 * 2000 * 6.0^2")
    (wrong-if 0 "Momentum is conserved, but kinetic energy is not when cars lock together. Subtract the two values.")
    (hint "72,000 - 36,000.")))
  (answer "36,000 J, half of it"))
```

---

## Practice

```check
(number
  (ask "A 3.0 kg cart at 4.0 m/s hits a 1.0 kg cart at rest, and they stick. How fast do they move after, in m/s?")
  (answer 3) (unit "m/s") (from "3.0 * 4.0 / (3.0 + 1.0)")
  (wrong-if 4 "That is the first cart's speed before. Both carts now share its 12 kg m/s.")
  (wrong-if 12 "12 kg m/s is the momentum. Divide by the total mass, 4.0 kg, for the speed.")
  (hint "Momentum before: 3.0 * 4.0 = 12 kg m/s."))
```

```check
(number
  (ask "In that collision, how much kinetic energy is lost, in joules?")
  (answer 6) (unit "J") (from "1/2 * 3.0 * 4.0^2 - 1/2 * 4.0 * 3.0^2")
  (wrong-if 0 "When carts stick, kinetic energy always drops. Before: 24 J. After: 1/2 * 4.0 * 3.0^2 = 18 J.")
  (wrong-if 18 "18 J is the kinetic energy after. The loss is before minus after.")
  (hint "KE before = 1/2 * 3.0 * 16 = 24 J.")
  (hint "KE after = 1/2 * 4.0 * 9 = 18 J."))
```

```check
(choice
  (ask "A rubber ball and a ball of clay, of the same mass and speed, each hit a wall. Which collision is closer to elastic?")
  (right "The rubber ball's, which bounces back at almost the same speed")
  (wrong "The clay's, because the clay keeps its momentum"
    "The clay stops dead, so its kinetic energy is gone, turned into thermal energy and the work of squashing. That is very inelastic.")
  (wrong "Both are the same, since mass and speed are the same"
    "Mass and speed are the same before, but not after. Elastic means kinetic energy after equals before.")
  (hint "Compare the kinetic energy after each impact."))
```

So: momentum is conserved in every collision; kinetic energy is
conserved only in an elastic one, and lost most when the objects stick.
