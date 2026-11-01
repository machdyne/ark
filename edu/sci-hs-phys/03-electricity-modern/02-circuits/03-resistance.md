# Resistance

```lesson
(objective "Explain what a wire's resistance depends on: its material, length and thickness.")
(standards "HS-PS2-6")
(minutes 25)
(keywords "resistance" "ohm (unit)" "resistor")
```

You can explain why some wires let current through more easily than
others.

As free electrons drift through a metal, they keep bumping into its
vibrating atoms. Each bump turns some of their energy into thermal
energy, and holds the flow back. How strongly a part opposes current is
its **resistance**. The more resistance, the less current a battery
drives through it.

Resistance is the voltage across a part divided by the current through
it, $R = V / I$. It is measured in **ohms** ($Omega$): a part has a
resistance of 1 ohm if 1 V drives 1 A through it.

```sources
(source "OpenStax, Physics (2020), chapter 19, Electrical Circuits")
```

```check
(choice
  (ask "Two lamps are joined in turn to the same battery. Lamp X has the higher resistance. Which carries the bigger current?")
  (right "Lamp Y, with the lower resistance")
  (wrong "Lamp X, with the higher resistance"
    "Resistance holds the current back. With the same battery, more resistance means less current.")
  (wrong "Both carry the same current"
    "The battery is the same, but the resistances differ. The lamp that opposes current less carries more.")
  (hint "Does resistance help the current or hold it back?"))
```

```check
(number
  (ask "A voltage of 6 V drives a current of 2 A through a wire. What is its resistance, in ohms?")
  (answer 3) (from "6 / 2") (unit "ohms")
  (wrong-if 12 "That multiplies. Resistance is voltage divided by current: R = V / I.")
  (hint "R = V / I."))
```

---

## Material, length, thickness

A wire's resistance depends on three things:

- **its material**: copper and aluminum resist little; nichrome, used in
  heaters and toasters, resists far more;
- **its length**: twice as long, twice the resistance, since the
  electrons have twice as far to push through;
- **its thickness**: twice the area of cross-section, half the
  resistance, since there are twice as many paths side by side.

Change the wire.

```figure
(define m (choice 'mat '("Copper" "Nichrome") "Material"))
(define len (slider 'len 1 4 2 "Length (m)" 1))
(define d (slider 'd 1 3 1 "Diameter (mm)" 0.5))
(define rho (if (= m 0) 0.0000000172 0.000001))
(define r (/ (* rho len) (* 0.25 pi d d 0.000001)))
(define w (* 60 len))
(define h (* 9 d))
(rect 40 (- 80 (/ h 2)) w h (if (= m 0) 'warm 'grey))
(frame 40 (- 80 (/ h 2)) w h 'ink 1)
(text 160 150 (string-append "R = " (fmt r (if (< r 0.1) 4 2)) " ohms") 'centre 'body 'bold)
(caption "Resistance of the wire at room temperature.")
```

```sources
(source "OpenStax, College Physics (2012), section 20.3, Resistance and Resistivity")
```

```check
(choice
  (ask "A copper wire is replaced by one twice as long, of the same copper and thickness. What happens to its resistance?")
  (right "It doubles")
  (wrong "It halves"
    "A longer wire gives the electrons farther to push through. Resistance grows with length: twice as long, twice the resistance.")
  (wrong "It stays the same"
    "Same material and thickness, but twice the length. Each meter adds resistance, so the total doubles.")
  (hint "Try it in the figure: length 1 m, then 2 m."))
```

---

## Thicker wires

The area of a round wire's cross-section is $pi d^2 / 4$. Double the
diameter $d$ and the area is $2^2 = 4$ times as big, so the resistance
is a quarter.

That is why the cord of a heater, which carries a large current, is
thicker than the cord of a lamp.

```check
(number
  (ask "A wire has a resistance of 8 ohms. A wire of the same material and length but twice the diameter replaces it. What is its resistance, in ohms?")
  (answer 2) (from "8 / 2^2") (unit "ohms")
  (wrong-if 4 "Twice the diameter gives 4 times the area, not twice. Divide the resistance by 4.")
  (wrong-if 16 "A thicker wire has more paths for the current, so its resistance is lower, not higher.")
  (hint "Twice the diameter: how many times the area?"))
```

---

## Temperature

The resistance of a metal grows as it gets hotter, because its atoms
vibrate more and the electrons bump into them more often. The thin wire
of an old-style lamp has a much higher resistance when it glows white
hot than when it is cold.

In this course, a lamp is treated as having a fixed resistance. That
keeps the arithmetic simple, though a real lamp's resistance changes
as it warms up.

```check
(choice
  (ask "A copper wire is heated. What happens to its resistance?")
  (right "It rises")
  (wrong "It falls"
    "In a metal, heat makes the atoms vibrate more. The electrons bump into them more often, so the resistance rises.")
  (wrong "It stays the same"
    "Resistance depends on temperature as well as on material, length and thickness.")
  (hint "What does heat do to the atoms of the metal?"))
```

---

## Resistors

A **resistor** is a part made to have a set resistance, from less than
an ohm to millions of ohms. Resistors set the currents in electronic
devices. In a circuit diagram, a resistor is a zigzag line.

```figure
(path '(40 100 80 100) 'ink 1.5)
(el-res 80 100 240 100 "resistor, 100 ohms")
(path '(240 100 280 100) 'ink 1.5)
(caption "The symbol for a resistor.")
```

```check
(choice
  (ask "Why do electronic devices use resistors?")
  (right "To set how much current flows in each part")
  (wrong "To store charge for later"
    "A resistor does not store charge. It opposes current, which lets a designer choose the current.")
  (wrong "To make the current bigger"
    "Adding resistance holds current back. Resistors are used to limit and set currents.")
  (hint "What does resistance do to a current?"))
```

---

## A long cord

```example
(example
  (problem "A copper wire 1 m long has a resistance of 0.02 ohm. What is the resistance of 15 m of the same wire?")
  (step "Resistance grows in proportion to length.")
  (step "15 m is 15 times as long, so R = 15 x 0.02.")
  (answer "0.3 ohm."))
```

```check
(number
  (ask "A wire 3 m long has a resistance of 0.6 ohm. What is the resistance of 12 m of the same wire, in ohms? Give it to the nearest tenth.")
  (answer 2.4) (within 0.05) (from "0.6 * 12 / 3") (unit "ohms")
  (wrong-if 0.15 "A longer wire has more resistance, not less. 12 m is 4 times as long as 3 m.")
  (hint "How many times as long is 12 m as 3 m?"))
```

---

## Practice

```check
(choice
  (ask "Which wire has the least resistance?")
  (right "Short, thick and copper")
  (wrong "Long, thick and copper"
    "Length adds resistance. A short wire of the same copper and thickness resists less.")
  (wrong "Short, thick and nichrome"
    "Nichrome resists far more than copper. That is why it is used in heaters.")
  (wrong "Short, thin and copper"
    "A thin wire has fewer paths side by side, so it resists more than a thick one.")
  (hint "Choose the best material, the shortest length and the greatest thickness."))
```

```check
(number
  (ask "A wire's resistance is 2 ohms. Another wire is the same material, twice as long and twice the diameter. What is its resistance, in ohms?")
  (answer 1) (from "2 * 2 / 2^2") (unit "ohms")
  (wrong-if 2 "Twice the length doubles it, but twice the diameter divides it by 4, not by 2.")
  (wrong-if 8 "Twice the diameter makes the wire thicker, which lowers the resistance.")
  (hint "Length: times 2. Diameter: divide by 2^2 = 4."))
```

---

A wire's resistance depends on its material, grows with its length and
falls as it gets thicker; resistors are parts made to a set
resistance, in ohms.
