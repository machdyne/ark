# Coulomb's law

```lesson
(objective "Compute the force between two charges with Coulomb's law, and compare it with gravity.")
(standards "HS-PS2-4")
(minutes 25)
(keywords "Coulomb's law")
```

You can work out the force between two charges, and see how much
stronger it is than gravity.

**Coulomb's law** gives the size of the force between two small charged
objects, $q_1$ and $q_2$, a distance $r$ apart:

$$ F = k q_1 q_2 / r^2 $$

Here $k = 8.99 * 10^9$ N m^2/C^2, charges are in coulombs and $r$ is in
meters. Use the sizes of the charges; the signs tell you only the
direction: like charges repel, unlike attract.

Change the charges and the distance.

```figure
(define q1 (slider 'q1 -5 5 3 "q1" 1))
(define q2 (slider 'q2 -5 5 -2 "q2" 1))
(define r (slider 'r 0.2 1 0.4 "r (m)" 0.1))
(define f (/ (* 0.00899 (abs q1) (abs q2)) (* r r)))
(define x1 (- 160 (* 110 r)))
(define x2 (+ 160 (* 110 r)))
(define len (/ (* 40 f) (+ f 2)))
(define rep (> (* q1 q2) 0))
(if (> f 0)
    (if rep
        (begin (arrow (- x1 12) 100 (- x1 12 len) 100 'ink 2.5) (arrow (+ x2 12) 100 (+ x2 12 len) 100 'ink 2.5))
        (begin (arrow (+ x1 12) 100 (+ x1 12 len) 100 'ink 2.5) (arrow (- x2 12) 100 (- x2 12 len) 100 'ink 2.5))))
(if (= q1 0) (ring x1 100 10 'grey 1.5) (el-charge x1 100 q1 10))
(if (= q2 0) (ring x2 100 10 'grey 1.5) (el-charge x2 100 q2 10))
(line x1 130 x2 130 'ink 1)
(text 160 146 (string-append "r = " (fmt r 1) " m") 'centre 'small)
(text 160 180 (string-append "F = " (fmt f 2) " N") 'centre 'body 'bold)
(text 160 200 (if (= f 0) "no force" (if rep "they repel" "they attract")) 'centre 'small)
(caption "q1, q2 in microcoulombs. Longer arrow: bigger force.")
```

```sources
(source "OpenStax, Physics (2020), chapter 18, Static Electricity")
(source "C.-A. de Coulomb, Premier mémoire sur l'électricité et le magnétisme, Histoire de l'Académie Royale des Sciences (1785)")
```

```check
(number
  (ask "Two charges of +2 microcoulombs each are 0.3 m apart. What is the force between them, in newtons, to the nearest hundredth?")
  (answer 0.40) (within 0.005) (unit "N")
  (from "8.99 * 10^9 * (2 * 10^-6) * (2 * 10^-6) / 0.3^2")
  (wrong-if 0.12 "That divides by 0.3, not by 0.3 squared. Coulomb's law divides by r^2 = 0.09.")
  (hint "A microcoulomb is 10^-6 C, so each charge is 2 x 10^-6 C.")
  (hint "F = 8.99 x 10^9 x (2 x 10^-6) x (2 x 10^-6) / 0.09."))
```

---

## Distance matters most

Like gravity, the electric force follows an inverse-square law: it goes
as $1 / r^2$. Twice as far apart, the force is $1/2^2 = 1/4$ as big.
Three times as far, $1/9$.

Try it in the figure: from 0.4 m to 0.8 m, the force falls to a quarter.

```check
(choice
  (ask "Two charges attract with a force of 20 N. They are moved twice as far apart. What is the force now?")
  (right "5 N")
  (wrong "10 N"
    "That halves the force for double the distance. The force goes as 1/r^2, so doubling r divides it by 4.")
  (wrong "80 N"
    "Moving apart weakens the force. Twice the distance gives a quarter of the force, not four times.")
  (hint "The force goes as 1/r^2. What is 1/2^2?"))
```

---

## Charge matters too

The force is proportional to each charge. Double one charge and the
force doubles; double both and it is 4 times as big. Both charges feel
the same size of force, even when one is far bigger: the forces are a
Newton's third law pair.

```check
(choice
  (ask "A charge of 6 microcoulombs and a charge of 2 microcoulombs push each other apart. Which feels the bigger force?")
  (right "Both feel the same size of force")
  (wrong "The 6 microcoulomb charge"
    "The formula has both charges in it, and gives one force. Each charge feels it, in opposite directions: Newton's third law.")
  (wrong "The 2 microcoulomb charge"
    "The smaller charge may move more if it is lighter, but the forces on the two are equal in size.")
  (hint "Newton's third law: what can you say about the two forces of a pair?"))
```

---

## A hydrogen atom

```example
(example
  (problem "In a hydrogen atom, an electron is about 5.3 x 10^-11 m from a proton. Find the electric force between them.")
  (step "Each has a charge of size e = 1.60 x 10^-19 C.")
  (step "F = 8.99 x 10^9 x (1.60 x 10^-19)^2 / (5.3 x 10^-11)^2.")
  (step "(1.60 x 10^-19)^2 = 2.56 x 10^-38, and (5.3 x 10^-11)^2 = 2.81 x 10^-21.")
  (step "F = 8.99 x 10^9 x 2.56 x 10^-38 / (2.81 x 10^-21) = 8.2 x 10^-8 N.")
  (answer "About 8.2 x 10^-8 N, an attraction."))
```

The force of gravity between the same two, from Newton's law of
universal gravitation, is about $3.6 * 10^-47$ N.

```sources
(source "NIST, CODATA Recommended Values of the Fundamental Physical Constants (2018): electron mass, proton mass, Newtonian constant of gravitation, Bohr radius")
```

```check
(choice
  (ask "About how many times stronger is the electric force than gravity between the electron and the proton?")
  (right "About 10^39 times")
  (wrong "About 39 times"
    "Divide the forces: 8.2 x 10^-8 / 3.6 x 10^-47. The powers of 10 subtract: -8 - (-47) = 39, so it is 10^39 times, not 39 times.")
  (wrong "About the same"
    "Gravity is far weaker. The powers of 10 differ by 39: the electric force is about 2 x 10^39 times stronger.")
  (hint "Divide 10^-8 by 10^-47: subtract the powers."))
```

---

## Why gravity rules the sky

If the electric force is so much stronger, why does gravity hold planets
in orbit? Because gravity only ever attracts, while charges come in two
signs. A planet has almost exactly as many electrons as protons, so the
electric forces on it nearly cancel. The gravity of every kilogram adds
up.

```check
(choice
  (ask "Why do the electric forces between the Earth and the moon not matter?")
  (right "Both are almost exactly neutral, so their electric forces nearly cancel")
  (wrong "The electric force does not reach that far"
    "Like gravity, the electric force falls as 1/r^2 but never reaches zero. It is the near-perfect balance of + and - that makes it tiny.")
  (wrong "The electric force is weaker than gravity"
    "Charge for charge, it is far stronger. But large objects carry almost no net charge.")
  (hint "Gravity only attracts. What about charges?"))
```

---

## Practice

```check
(number
  (ask "A +3 microcoulomb charge and a -4 microcoulomb charge are 0.2 m apart. Find the size of the force between them, in newtons, to the nearest tenth.")
  (answer 2.7) (within 0.05) (unit "N")
  (from "8.99 * 10^9 * (3 * 10^-6) * (4 * 10^-6) / 0.2^2")
  (wrong-if 0.5 "That divides by 0.2, not 0.2 squared: r^2 = 0.04.")
  (wrong-if -2.7 "The question asks for the size of the force. The minus sign only tells you that they attract.")
  (hint "Use the sizes of the charges, in coulombs: 3 x 10^-6 and 4 x 10^-6.")
  (hint "Divide by 0.2^2 = 0.04."))
```

```check
(number
  (ask "Two charges repel with 36 N. They are moved 3 times as far apart. What is the force now, in newtons?")
  (answer 4) (from "36 / 3^2") (unit "N")
  (wrong-if 12 "That divides by 3. The force goes as 1/r^2, so divide by 3^2 = 9.")
  (hint "3 times the distance: divide the force by 3^2."))
```

```check
(choice
  (ask "Both charges are doubled, and the distance is doubled too. What happens to the force?")
  (right "It stays the same")
  (wrong "It doubles"
    "Doubling both charges multiplies the force by 2 x 2 = 4. Doubling the distance divides it by 2^2 = 4. The two cancel.")
  (wrong "It is 4 times as big"
    "That counts the charges but forgets the distance. Twice as far divides the force by 4 again.")
  (hint "Charges: times 2 x 2. Distance: divide by 2^2."))
```

---

Coulomb's law, $F = k q_1 q_2 / r^2$, gives the force between charges:
it grows with each charge, falls as the square of the distance, and is
far stronger than gravity.
