# Ohm's law

```lesson
(objective "Use Ohm's law, V = IR, and find a resistance from the slope of simulated current-voltage data.")
(standards "HSA-CED.A.4" "HSS-ID.B.6")
(minutes 25)
(keywords "Ohm's law")
```

You can use one rule to find a current, a voltage or a resistance, and
find a resistance from measurements.

For a metal wire or a resistor at a steady temperature, the current is
proportional to the voltage: double the voltage and the current doubles,
so $V / I$, the resistance, stays the same. This is **Ohm's law**:

$$ V = I R $$

Change the battery and the resistor.

```figure
(define v (slider 'v 0 12 6 "Battery (V)" 1))
(define k (choice 'r '("2" "4" "6" "12") "Resistor (ohms)"))
(define r (list-ref '(2 4 6 12) k))
(define i (/ v r))
(path '(60 60 130 60) 'ink 1.5)
(el-res 130 60 210 60 (string-append (fmt r 0) " ohms"))
(path '(210 60 270 60 270 150 60 150) 'ink 1.5)
(el-cell 60 60 150 (string-append (fmt v 0) " V"))
(if (> v 0) (arrow 280 90 280 125 'ink 1.5))
(text 160 190 (string-append "I = V / R = " (fmt v 0) " / " (fmt r 0)) 'centre 'body)
(text 160 214 (string-append "= " (fmt i 2) " A") 'centre 'body 'bold)
```

```sources
(source "OpenStax, Physics (2020), chapter 19, Electrical Circuits")
(source "G. S. Ohm, Die galvanische Kette, mathematisch bearbeitet (Berlin, 1827)")
```

```check
(number
  (ask "A 12 V battery is joined across a 4 ohm resistor. What is the current, in amperes?")
  (answer 3) (from "12 / 4") (unit "A")
  (wrong-if 48 "That multiplies. A bigger resistance should give a smaller current, so divide: I = V / R.")
  (wrong-if 0.33 "That divides R by V. I = V / R: the voltage goes on top.")
  (hint "I = V / R."))
```

---

## Three ways to write it

Ohm's law gives any one of the three from the other two:

$$ V = I R $$

$$ I = V / R $$

$$ R = V / I $$

```check
(number
  (ask "A current of 0.5 A flows through a 20 ohm resistor. What is the voltage across it, in volts?")
  (answer 10) (from "0.5 * 20") (unit "V")
  (wrong-if 40 "That divides 20 by 0.5. The voltage is V = I R: multiply.")
  (hint "V = I R."))
```

---

## Resistance from a graph

A student's simulation measures the current through a resistor at
several voltages:

| V (volts) | 2 | 4 | 6 | 8 |
|---|---|---|---|---|
| I (amperes) | 0.41 | 0.79 | 1.22 | 1.58 |

The points lie close to a straight line through the origin. Its slope,
$I / V$, is $1 / R$. A line that fits them best has a slope of about
0.20 A per volt.

```figure
(graph 50 20 240 170 0 10 0 2)
(graph-axes 2 0.5 "V (volts)" "I (A)")
(plot (lambda (x) (* 0.2 x)) 'grey 1.5)
(plot-point 2 0.41 'warm)
(plot-point 4 0.79 'warm)
(plot-point 6 1.22 'warm)
(plot-point 8 1.58 'warm)
(caption "Measured points, and the line that fits them best.")
```

```check
(number
  (ask "The slope of the best line is 0.20 A per volt. What is the resistance, in ohms?")
  (answer 5) (within 0.05) (from "1 / 0.20") (unit "ohms")
  (wrong-if 0.2 "That is the slope, I / V. The resistance is V / I, the slope turned upside down: 1 / 0.20.")
  (hint "The slope is I / V = 1 / R. So R = 1 / slope."))
```

---

## When the line curves

Ohm's law holds only while the resistance stays the same. A lamp's
thin wire heats up as the current grows, and its resistance rises.
Its graph of current against voltage bends over: the current grows more
slowly than the voltage. Parts like that do not obey Ohm's law, though
$R = V / I$ still gives their resistance at each point.

```figure
(graph 50 20 240 170 0 10 0 2)
(graph-axes 2 0.5 "V (volts)" "I (A)")
(plot (lambda (x) (* 0.2 x)) 'ink 1.5)
(plot (lambda (x) (* 0.55 (sqrt x))) 'cool 2)
(text 230 60 "resistor" 'small)
(text 200 140 "lamp" 'small)
(caption "A resistor's line is straight; a lamp's curve bends over.")
```

```check
(choice
  (ask "A lamp's current-voltage graph bends over at higher voltages. What does that show?")
  (right "Its resistance rises as it heats up")
  (wrong "Its resistance falls as it heats up"
    "If the resistance fell, the current would grow faster than the voltage and the curve would bend up. It bends over, so the resistance rises.")
  (wrong "It obeys Ohm's law"
    "Ohm's law gives a straight line through the origin. A curve means the resistance is changing.")
  (hint "On a steep part of the graph, a little voltage drives a lot of current."))
```

---

## Finding a resistance

```example
(example
  (problem "A 9 V battery drives 0.03 A through a resistor. What is its resistance?")
  (step "Use R = V / I.")
  (step "R = 9 / 0.03.")
  (answer "300 ohms."))
```

```example
(example
  (problem "A 1.5 V battery drives 0.25 A through a lamp. What is its resistance?")
  (step "Use R = V / I.")
  (step (number (ask "R = 1.5 / 0.25. How many ohms?") (answer 6) (from "1.5 / 0.25")
          (wrong-if 0.375 "That multiplies. R = V / I: divide.")))
  (answer "6 ohms."))
```

---

## Practice

```check
(number
  (ask "What current flows through a 470 ohm resistor with 4.7 V across it, in amperes?")
  (answer 0.01) (from "4.7 / 470") (unit "A")
  (wrong-if 100 "That divides R by V. I = V / R = 4.7 / 470.")
  (hint "I = V / R."))
```

```check
(choice
  (ask "The voltage across a resistor is tripled. What happens to the current?")
  (right "It triples")
  (wrong "It falls to a third"
    "A bigger push drives more current. With R fixed, I = V / R grows in proportion to V.")
  (wrong "It stays the same, since the resistance is the same"
    "The resistance is the same, but the voltage is not. I = V / R: three times V, three times I.")
  (hint "I = V / R, and R does not change."))
```

```check
(number
  (ask "A heater draws 10 A from a 120 V supply. What is its resistance, in ohms?")
  (answer 12) (from "120 / 10") (unit "ohms")
  (wrong-if 1200 "That multiplies. R = V / I = 120 / 10.")
  (hint "R = V / I."))
```

---

Ohm's law, $V = I R$, ties voltage, current and resistance together,
and the slope of a straight current-voltage graph is $1 / R$.
