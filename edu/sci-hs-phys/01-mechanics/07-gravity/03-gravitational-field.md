# The gravitational field

```lesson
(objective "Describe gravity as a field, and find g at a planet's surface from its mass and radius.")
(standards "HS-PS2-4")
(minutes 25)
(keywords "field (in physics)" "gravitational field")
```

You can describe the pull of a planet at every point around it, and find the strength of gravity on any world from its mass and size.

A planet pulls on a mass placed anywhere around it, without touching it. Physicists describe this with a **field**: a quantity that has a value at every point in space. A temperature map is a field of numbers; the gravity around a planet is a field of vectors.

The **gravitational field** at a point is the gravitational force on a mass placed there, divided by that mass:

$$ g = F / m $$

Its unit is newtons per kilogram, N/kg, which is the same as m/s². It points toward the planet.

```check
(number
  (ask "A 4 kg mass at some point feels a gravitational force of 39.2 N. What is the gravitational field there?")
  (answer 9.8) (within 0.001) (unit "N/kg") (from "39.2 / 4")
  (wrong-if 156.8 "That multiplies. The field is the force per kilogram: divide by the mass.")
  (hint "g = F / m."))
```

---

## A picture of the field

The arrows show the field at points around a planet: each points toward the planet's center, and its length shows the field's strength. By the inverse-square law, the arrows twice as far from the center are a quarter as long.

```figure
(mc-planet 160 112 26 "planet")
(for-range 0 8
  (lambda (i)
    (let* ((d (deg->rad (* 45 i))) (c (cos d)) (s (sin d)))
      (arrow (+ 160 (* 50 c)) (- 112 (* 50 s)) (+ 160 (* 26 c)) (- 112 (* 26 s)) 'ink 2)
      (arrow (+ 160 (* 100 c)) (- 112 (* 100 s)) (+ 160 (* 94 c)) (- 112 (* 94 s)) 'ink 1.5))))
(caption "Twice as far from the center: a quarter as long")
```

```check
(choice
  (ask "Which way does a planet's gravitational field point?")
  (right "Toward the planet's center, at every point")
  (wrong "Away from the planet"
    "Gravity attracts, so the force on a mass, and the field, point toward the planet.")
  (wrong "Straight down the page, everywhere"
    "Down means toward the center. Around a round planet, that direction is different on each side.")
  (hint "Gravity pulls masses toward the planet."))
```

---

## g at the surface

The force on a mass $m$ at distance $r$ from a planet of mass $M$ is $G M m / r^2$. Dividing by $m$ gives the field:

$$ g = G M / r^2 $$

At the surface, $r$ is the planet's radius. For Earth:

$$ g = (6.67 * 10^-11 * 5.97 * 10^24)/(6.37 * 10^6)^2 = 9.8 $$

in N/kg: the same 9.8 m/s² every falling object has. The mass of the falling object does not appear, which is why all objects fall alike.

```check
(number
  (ask "The Moon has mass 7.35 x 10^22 kg and radius 1.74 x 10^6 m. What is g at its surface? Round to the nearest hundredth.")
  (answer 1.62) (within 0.006) (unit "N/kg") (from "6.67 * 10^-11 * 7.35 * 10^22 / (1.74 * 10^6)^2")
  (wrong-if 9.8 "9.8 N/kg is Earth's field. Use the Moon's own mass and radius in g = G M / R^2.")
  (hint "g = G M / R^2.")
  (hint "Top: 4.90 x 10^12. Bottom: 3.03 x 10^12."))
```

```sources
(source "NASA Goddard Space Flight Center, Moon Fact Sheet (NSSDCA): mass 0.07346 x 10^24 kg, radius 1,737.4 km, surface gravity 1.62 m/s²")
```

---

## A worked example

```example
(example
  (problem "Mars has mass 6.42 x 10^23 kg and radius 3.39 x 10^6 m. Find g at its surface.")
  (step "Top: G M = 6.67 x 10^-11 x 6.42 x 10^23 = 4.28 x 10^13.")
  (step "Bottom: R^2 = (3.39 x 10^6)^2 = 1.15 x 10^13.")
  (step "g = 4.28 / 1.15 = 3.7 N/kg.")
  (answer "About 3.7 m/s², a little over a third of Earth's"))
```

```sources
(source "NASA Goddard Space Flight Center, Mars Fact Sheet (NSSDCA): mass 0.64169 x 10^24 kg, radius 3,389.5 km, surface gravity 3.71 m/s²")
```

Now you finish one.

```check
(number
  (ask "A planet has the same mass as Earth but twice its radius. What is g at its surface? Round to the nearest hundredth.")
  (answer 2.45) (within 0.006) (unit "N/kg") (from "9.8 / 2^2")
  (wrong-if 4.9 "Twice the radius gives 1/4 of the field, not 1/2: the radius is squared.")
  (wrong-if 19.6 "A larger radius puts the surface farther from the center, so the field is weaker.")
  (hint "g = G M / R^2: R doubles."))
```

---

## Practice

```check
(choice
  (ask "Why do N/kg and m/s² measure the same thing?")
  (right "A newton is a kg m/s², so N/kg is m/s²")
  (wrong "They do not: one is a force and one is an acceleration"
    "N/kg is force per mass, which by F = ma is an acceleration. 1 N/kg = 1 (kg m/s²)/kg = 1 m/s².")
  (hint "What is a newton in kg, m and s?"))
```

```check
(number
  (ask "A 70 kg astronaut stands on Mars, where g = 3.7 N/kg. What is her weight there?")
  (answer 259) (unit "N") (from "70 * 3.7")
  (wrong-if 18.9 "That divides. Weight = m g.")
  (hint "W = m g."))
```

```check
(choice
  (ask "A planet has twice Earth's mass and twice Earth's radius. How does its surface gravity compare with Earth's?")
  (right "Half of Earth's")
  (wrong "The same as Earth's"
    "Twice the mass doubles g, but twice the radius divides it by 4. 2 / 4 = 1/2.")
  (wrong "Twice Earth's"
    "The radius is squared, so its doubling has the bigger effect.")
  (hint "g = G M / R^2: M x 2, R^2 x 4."))
```

---

So the gravitational field is the force per kilogram at each point, pointing toward the planet, and at a planet's surface it is $g = G M / R^2$.
