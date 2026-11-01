# Specific heat capacity

```lesson
(objective "Compute the heat needed to change an object's temperature with Q = m c Delta T.")
(standards "HS-PS3-4" "HSA-CED.A.4")
(minutes 25)
(keywords "heat (in physics)" "specific heat capacity")
```

You learn to compute how much energy it takes to warm something up by
a given number of degrees.

Put a cold spoon into hot soup. Energy passes from the soup to the
spoon, because the soup is hotter. Energy that passes from one object
to another because of a difference in temperature is **heat**. Heat
always flows by itself from the hotter object to the colder one.

Heat is energy on the move, measured in joules. An object does not
contain heat: it has thermal energy, and heat is what flows in or out.

```sources
(source "OpenStax, College Physics 2e (2022), section 14.1, Heat, and section 14.2, Temperature Change and Heat Capacity")
```

```check
(choice
  (ask "Which sentence uses the word heat as physics does?")
  (right "Heat flowed from the warm tea into the cold cup")
  (wrong "The warm tea contains a lot of heat"
    "In physics, heat is energy moving because of a temperature difference. The tea has thermal energy; heat is what flows out of it.")
  (wrong "Heat flowed from the cold cup into the warm tea"
    "Heat flows by itself from hotter to colder, never the other way. The tea warms the cup.")
  (hint "Heat is energy moving, and it moves from hot to cold."))
```

---

## Warming by some degrees

The heat $Q$ needed to change the temperature of an object by
$Delta T$ is

$$ Q = m c Delta T $$

Here $c$ is the material's **specific heat capacity**: the energy
needed to warm 1 kg of it by 1 K. A change of 1 K is the same as a
change of 1 °C. Water's is large, about 4,200 J/(kg K):

| Material | c in J/(kg K) |
|---|---|
| water | 4,186 |
| aluminum | 900 |
| iron or steel | 452 |
| copper | 387 |

Move the slider to add heat to 1 kg of each, all starting at 20 °C.

```figure
(define q (slider 'q 0 100 40 "Heat (kJ)" 5))
(graph 60 30 220 160 0 100 0 120)
(graph-axes 20 20 "Q (kJ)" "T (°C)")
(plot (lambda (x) (+ 20 (/ (* 1000 x) 4186))) 'cool 2)
(plot (lambda (x) (+ 20 (/ (* 1000 x) 900))) 'warm 2)
(plot (lambda (x) (+ 20 (/ (* 1000 x) 387))) 'ink 1.5)
(plot-point q (+ 20 (/ (* 1000 q) 4186)) 'cool)
(if (<= (+ 20 (/ (* 1000 q) 900)) 120) (plot-point q (+ 20 (/ (* 1000 q) 900)) 'warm))
(if (<= (+ 20 (/ (* 1000 q) 387)) 120) (plot-point q (+ 20 (/ (* 1000 q) 387)) 'ink))
(text (gx 85) (gy 30) "water" 'centre 'small)
(text (gx 72) (gy 80) "aluminum" 'small)
(text (gx 40) (gy 100) "copper" 'small)
(caption "1 kg of each, from 20 °C. Solid only below its melting point.")
```

```sources
(source "OpenStax, College Physics 2e (2022), section 14.2, table 14.1, Specific Heats of Various Substances")
```

```check
(number
  (ask "How much heat does it take to warm 2.0 kg of water from 20 °C to 70 °C? Use c = 4,186 J/(kg K).")
  (answer 418600) (unit "J") (from "2.0 * 4186 * (70 - 20)")
  (wrong-if 586040 "That uses 70 degrees as the change. Delta T is the change: 70 - 20 = 50 K.")
  (wrong-if 209300 "That leaves out the mass, or uses 1 kg. Multiply by 2.0 kg too.")
  (hint "Delta T = 70 - 20 = 50 K.")
  (hint "Q = 2.0 * 4,186 * 50."))
```

---

## Why water warms slowly

The same heat warms water far less than metal, because water's $c$ is
large. Warming 1 kg of water by 1 K takes about 11 times the heat that
1 kg of copper needs.

To find a temperature change, rearrange the formula:

$$ Delta T = Q / (m c) $$

```check
(number
  (ask "50,000 J of heat flow into 1.0 kg of copper (c = 387 J/(kg K)). By how many degrees does it warm, to the nearest degree?")
  (answer 129) (within 0.5) (unit "K") (from "50000 / (1.0 * 387)")
  (wrong-if 12 "That uses water's c, 4,186. Copper's c is much smaller, so it warms much more.")
  (hint "Delta T = Q / (m c).")
  (hint "50,000 / 387."))
```

---

## Worked example

```example
(example
  (problem "A 0.50 kg aluminum pan warms from 20 °C to 180 °C. How much heat did it take in?")
  (step "Delta T = 180 - 20 = 160 K, and c = 900 J/(kg K).")
  (step "Q = m c Delta T = 0.50 * 900 * 160 = 72,000 J.")
  (answer "72,000 J, or 72 kJ"))
```

```example
(example
  (problem "A 2.0 kg block of an unknown metal warms by 10 K when it takes in 9,040 J. What is its specific heat capacity?")
  (step "Rearrange: c = Q / (m Delta T).")
  (step (number (ask "c, in J/(kg K)?") (answer 452) (unit "J/(kg K)") (from "9040 / (2.0 * 10)")
    (wrong-if 904 "That divides by 10 only. Divide by the mass too: 2.0 * 10 = 20.")
    (hint "9,040 / 20.")))
  (answer "452 J/(kg K): the table suggests iron or steel"))
```

---

## Practice

```check
(number
  (ask "A swimming pool holds 50,000 kg of water. How much heat warms it by 2.0 K? Give the answer in megajoules (MJ), to the nearest MJ. Use c = 4,186 J/(kg K).")
  (answer 419) (within 0.5) (unit "MJ") (from "50000 * 4186 * 2.0 / 1000000")
  (wrong-if 418600000 "That is right in joules. The question asks for megajoules: divide by 1,000,000.")
  (wrong-if 209 "That forgets the 2.0 K. Q = m c Delta T, with Delta T = 2.0.")
  (hint "Q = 50,000 * 4,186 * 2.0 joules.")
  (hint "1 MJ = 1,000,000 J."))
```

```check
(choice
  (ask "1 kg of water and 1 kg of iron each take in 10,000 J of heat. Which warms more?")
  (right "The iron" (true "10000 / 452 > 10000 / 4186"))
  (wrong "The water"
    "Water has the larger specific heat capacity, so each degree takes more energy. The same heat warms it less.")
  (wrong "They warm the same, since the heat and the mass are the same"
    "The materials differ. Delta T = Q / (m c), and c is about 9 times larger for water.")
  (hint "Delta T = Q / (m c). Which has the smaller c?"))
```

So: heat is energy flowing from hot to cold, and warming a mass $m$ by
$Delta T$ takes $Q = m c Delta T$.
