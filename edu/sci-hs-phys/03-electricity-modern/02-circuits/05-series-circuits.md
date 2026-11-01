# Series circuits

```lesson
(objective "Find the current and the voltage across each part of a series circuit, and its equivalent resistance.")
(standards "HSA-CED.A.4")
(minutes 25)
(keywords "series circuit" "equivalent resistance")
```

You can find the current in a single loop of parts, and how the
battery's voltage is shared among them.

In a **series circuit**, the parts are joined one after another in a
single loop. There is only one path, so the same current flows through
every part.

Add lamps to the loop. Each lamp is treated as a fixed 6 ohm resistor.

```figure
(define n (slider 'n 1 3 1 "Lamps" 1))
(define v (slider 'v 0 12 12 "Battery (V)" 1))
(define i (/ v (* 6 n)))
(define p (* i i (/ 36 144)))
(path '(60 50 280 50 280 170 60 170) 'ink 1.5)
(el-cell 60 50 170 (string-append (fmt v 0) " V"))
(for-range 0 n (lambda (k) (el-lamp (+ 130 (* 60 k)) 50 p)))
(if (> v 0) (arrow 290 95 290 130 'ink 1.5))
(text 160 205 (string-append "I = " (fmt v 0) " / " (fmt (* 6 n) 0) " = " (fmt i 2) " A") 'centre 'body 'bold)
(caption "Rays: the brighter the lamp, the longer they are.")
```

```sources
(source "OpenStax, Physics (2020), chapter 19, Electrical Circuits")
```

```check
(choice
  (ask "A second lamp is added in series with the first. What happens to the first lamp?")
  (right "It gets dimmer, because the current through it falls")
  (wrong "It stays as bright, because the battery is the same"
    "The battery is the same, but the current now has to pass through two lamps. More resistance in the loop means less current, so each lamp is dimmer.")
  (wrong "It gets brighter, because two lamps make more light"
    "The two lamps share the battery's voltage. Less current flows, and each lamp is dimmer than one alone.")
  (hint "Try it in the figure, with 1 lamp and then 2."))
```

---

## One path

Since a series circuit has only one path, a gap anywhere stops the
current everywhere. Take out one lamp, or let its wire break, and every
lamp in the loop goes dark.

```check
(choice
  (ask "Three lamps are in series. The middle one burns out. What happens to the other two?")
  (right "They both go out")
  (wrong "They stay lit, a little brighter"
    "There is only one path round a series circuit. The broken lamp is a gap in it, so no current flows anywhere.")
  (wrong "Only the one after it goes out"
    "Current does not flow \"up to\" the gap. With the loop open, it stops everywhere, before and after.")
  (hint "How many paths does a series circuit have?"))
```

---

## Sharing the voltage

The charge gets energy from the battery and gives it all up as it goes
round the loop. So the voltages across the parts add up to the
battery's voltage:

$$ V = V_1 + V_2 $$

Each part's voltage is $I R$ for that part, so the larger resistance
takes the larger share.

```figure
(define v 12)
(define r1 (slider 'r1 1 10 2 "R1 (ohms)" 1))
(define r2 (slider 'r2 1 10 4 "R2 (ohms)" 1))
(define i (/ v (+ r1 r2)))
(path '(60 50 110 50) 'ink 1.5) (path '(190 50 260 50 260 170 190 170) 'ink 1.5)
(path '(110 170 60 170) 'ink 1.5)
(el-res 110 50 190 50 (string-append "R1 = " (fmt r1 0)))
(el-res 190 170 110 170 "")
(text 150 192 (string-append "R2 = " (fmt r2 0)) 'centre 'small)
(el-cell 60 50 170 "12 V")
(text 160 90 (string-append "V1 = " (fmt (* i r1) 2) " V") 'centre 'small)
(text 160 145 (string-append "V2 = " (fmt (* i r2) 2) " V") 'centre 'small)
(text 160 222 (string-append "I = " (fmt i 2) " A") 'centre 'body 'bold)
```

```check
(number
  (ask "A 9 V battery is in series with two resistors. The voltage across the first is 6 V. What is the voltage across the second, in volts?")
  (answer 3) (from "9 - 6") (unit "V")
  (wrong-if 9 "Each part gets a share of the battery's voltage; the shares add up to 9 V. So the second gets 9 - 6.")
  (wrong-if 15 "The voltages across the parts add up to the battery's 9 V, not more.")
  (hint "The voltages across the parts add up to the battery's voltage."))
```

---

## Equivalent resistance

The current is the same as if one resistor, as big as all of them
together, were joined to the battery. That one resistance is the
circuit's **equivalent resistance**. In series it is the sum:

$$ R_(eq) = R_1 + R_2 + R_3 $$

Then the current is $I = V / R_(eq)$.

```check
(number
  (ask "Resistors of 3, 5 and 10 ohms are in series. What is the equivalent resistance, in ohms?")
  (answer 18) (from "3 + 5 + 10") (unit "ohms")
  (wrong-if 10 "That is only the largest. In series the current must pass through every resistor, so their resistances add.")
  (hint "In series, add them."))
```

---

## A series circuit, solved

```example
(example
  (problem "A 12 V battery is in series with a 2 ohm and a 4 ohm resistor. Find the current and the voltage across each.")
  (step "Equivalent resistance: 2 + 4 = 6 ohms.")
  (step "Current: I = 12 / 6 = 2 A, the same in both.")
  (step "V1 = 2 x 2 = 4 V and V2 = 2 x 4 = 8 V.")
  (answer "2 A; 4 V and 8 V, which add up to 12 V."))
```

```example
(example
  (problem "A 6 V battery is in series with a 1 ohm and a 2 ohm resistor. Find the voltage across the 2 ohm resistor.")
  (step "Equivalent resistance: 1 + 2 = 3 ohms. Current: 6 / 3 = 2 A.")
  (step (number (ask "V = I R. What is the voltage across the 2 ohm resistor, in volts?") (answer 4) (from "2 * 2")
          (wrong-if 2 "That is the voltage across the 1 ohm resistor. Use R = 2 ohms: 2 x 2.")))
  (answer "4 V (and 2 V across the 1 ohm resistor)."))
```

---

## Practice

```check
(number
  (ask "A 24 V battery is in series with resistors of 5 ohms and 7 ohms. What is the current, in amperes?")
  (answer 2) (from "24 / (5 + 7)") (unit "A")
  (wrong-if 4.8 "That uses only the 5 ohm resistor. In series, the current passes through both: R = 5 + 7.")
  (wrong-if 8.23 "That adds the two currents each resistor would take alone. In series there is one current through R = 12 ohms.")
  (hint "First find the equivalent resistance: 5 + 7."))
```

```check
(number
  (ask "In that circuit, what is the voltage across the 7 ohm resistor, in volts?")
  (answer 14) (from "24 / (5 + 7) * 7") (unit "V")
  (wrong-if 24 "Each resistor gets a share of the 24 V. Across the 7 ohm one, V = I R = 2 x 7.")
  (hint "V = I R, with I = 2 A."))
```

```check
(choice
  (ask "In a series circuit with two different resistors, which is true?")
  (right "The current is the same in both")
  (wrong "The voltage is the same across both"
    "Each part's voltage is I R, and the resistances differ, so the voltages differ. It is the current that is the same.")
  (wrong "The bigger resistor carries less current"
    "There is only one path, so every part carries the same current. The bigger resistor has the bigger voltage across it.")
  (hint "How many paths are there for the charge?"))
```

---

In a series circuit the current is the same everywhere, the voltages
add up to the battery's, and the equivalent resistance is the sum of
the resistances.
