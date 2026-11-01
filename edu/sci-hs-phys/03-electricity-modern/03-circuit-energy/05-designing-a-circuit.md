# Designing a circuit

```lesson
(objective "Design a circuit in a simulation that meets a goal, such as a lamp's brightness from a given battery, and explain the choices.")
(standards "HS-PS3-3")
(minutes 30)
```

You can choose parts and how to join them so that a circuit does what
it should, and explain why it works.

**The goal:** light a lamp at its normal brightness from a 9 V battery.
The lamp is made for 6 V and 0.5 A; treat it as a fixed resistor of
$6 / 0.5 = 12$ ohms. On 9 V alone it would carry 0.75 A and could burn
out. A resistor in series can take the extra voltage.

Find the resistor that gives the lamp 0.5 A.

```figure
(define r (slider 'r 0 20 0 "R (ohms)" 1))
(define i (/ 9 (+ 12 r)))
(define vl (* i 12))
(define pl (* i vl))
(path '(60 50 110 50) 'ink 1.5)
(el-res 110 50 190 50 (string-append (fmt r 0) " ohms"))
(path '(190 50 260 50 260 98) 'ink 1.5) (path '(260 122 260 170 60 170) 'ink 1.5)
(el-cell 60 50 170 "9 V")
(el-lamp 260 110 (/ pl 6.75))
(text 160 197 (string-append "lamp: " (fmt i 2) " A, " (fmt vl 1) " V, " (fmt pl 2) " W") 'centre 'small 'bold)
(text 160 216 (cond ((> i 0.51) "too bright: it may burn out") ((< i 0.49) "too dim") (else "just right")) 'centre 'small)
(caption "The lamp is treated as a fixed 12 ohm resistor.")
```

```sources
(source "OpenStax, Physics (2020), chapter 19, Electrical Circuits")
```

```check
(number
  (ask "What series resistance gives the lamp 0.5 A from the 9 V battery, in ohms?")
  (answer 6) (from "9 / 0.5 - 12") (unit "ohms")
  (wrong-if 18 "That is the whole circuit's resistance, 9 / 0.5. The lamp already gives 12 of those ohms; the resistor adds the rest.")
  (wrong-if 3 "That is the voltage the resistor must take, 9 - 6 = 3 V. Its resistance is R = V / I = 3 / 0.5.")
  (hint "The whole circuit needs R = 9 / 0.5 ohms. The lamp is 12 of them.")
  (hint "Or: the resistor takes 9 - 6 = 3 V at 0.5 A."))
```

---

## The cost of the design

The resistor works, but it is not free: it turns energy into thermal
energy too. At 0.5 A it uses $P = I^2 R = 0.25 * 6 = 1.5$ W, while the
lamp uses $0.5 * 6 = 3$ W. Of the battery's 4.5 W, only 3 W lights the
lamp.

```check
(number
  (ask "What is the efficiency of this design, the useful power over the total, as a percent? Give the nearest whole percent.")
  (answer 67) (within 0.5) (from "3 / 4.5 * 100") (unit "%")
  (wrong-if 50 "That is the resistor's 1.5 W over the lamp's 3 W. Efficiency is the useful power over the total: 3 / 4.5.")
  (wrong-if 33 "That is the wasted part, 1.5 / 4.5. The useful part is the lamp's 3 W of 4.5 W.")
  (hint "Useful: the lamp's 3 W. Total: 4.5 W."))
```

---

## Two lamps, one battery

**The next goal:** light two of these 6 V, 0.5 A lamps from a 12 V
battery, with no resistor wasting energy.

- **In series**, the lamps share the 12 V: 6 V each, 0.5 A through both.
  Each is at normal brightness. But if one burns out, both go dark.
- **In parallel**, each gets the full 12 V: 1 A each, twice the current
  they are made for.

```check
(choice
  (ask "Which design meets the goal?")
  (right "The two lamps in series")
  (wrong "The two lamps in parallel"
    "In parallel each lamp gets the full 12 V and carries 12 / 12 = 1 A, twice its 0.5 A. It would be too bright and could burn out.")
  (wrong "Either: two lamps share the battery either way"
    "Only in series do they share the voltage. In parallel each gets all 12 V.")
  (hint "Which way of joining them gives each lamp 6 V?"))
```

---

## Switching lamps on their own

**A third goal:** a 6 V battery and two 6 V lamps, each with its own
switch, so either can be on alone.

In series one switch would open the only path, and both lamps would go
dark. So join the lamps in parallel, each in its own branch with its
own switch. Each branch gets the full 6 V.

```figure
(define a (toggle 'a "Switch 1" #t))
(define b (toggle 'b "Switch 2" #f))
(path '(50 40 240 40) 'ink 1.5) (path '(50 180 240 180) 'ink 1.5)
(el-cell 50 40 180 "6 V")
(dot 160 40) (dot 160 180)
(for-each
  (lambda (it)
    (let ((x (car it)) (on (cadr it)))
      (path (list x 40 x 60) 'ink 1.5) (el-switch x 60 x 85 on)
      (path (list x 85 x 108) 'ink 1.5) (path (list x 132 x 180) 'ink 1.5)
      (el-lamp x 120 (if on 1 0))))
  (list (list 160 a) (list 240 b)))
(text 150 210 (string-append "battery current: " (fmt (+ (if a 0.5 0) (if b 0.5 0)) 1) " A") 'centre 'small 'bold)
(caption "Each lamp is on its own branch, with its own switch.")
```

```check
(number
  (ask "With both switches closed, what current does the 6 V battery supply, in amperes?")
  (answer 1) (from "0.5 + 0.5") (unit "A")
  (wrong-if 0.5 "That is one lamp's current. In parallel the branch currents add: 0.5 + 0.5.")
  (wrong-if 0.25 "That is the series current, 6 / 24. Here the lamps are in parallel, each on 6 V.")
  (hint "Each branch has 6 V across a 12 ohm lamp. Add the branch currents."))
```

---

## Practice

```check
(number
  (ask "A lamp made for 3 V and 0.3 A is to run from a 12 V battery with a series resistor. What resistance is needed, in ohms?")
  (answer 30) (from "(12 - 3) / 0.3") (unit "ohms")
  (wrong-if 40 "That is the whole circuit, 12 / 0.3. The lamp is 10 ohms of it; the resistor is the other 30.")
  (wrong-if 10 "That is the lamp's own resistance, 3 / 0.3.")
  (hint "The resistor must take 12 - 3 = 9 V at 0.3 A."))
```

```check
(choice
  (ask "A string of decorative lights should keep working when one lamp burns out. How should the lamps be joined?")
  (right "In parallel, so each lamp has its own path")
  (wrong "In series, so they share the voltage"
    "In series a burned-out lamp opens the only path, and every lamp goes dark.")
  (hint "Which way of joining lamps keeps the others lit when one fails?"))
```

---

To design a circuit, start from the goal, use Ohm's law and the rules
of series and parallel to choose the parts, and weigh what each choice
costs.
