# Combined circuits

```lesson
(objective "Find currents and voltages in a circuit with parts in series and in parallel.")
(standards "HSA-CED.A.4")
(minutes 30)
```

You can solve a circuit that has parts both in series and in parallel,
by simplifying it one step at a time.

Here R1 is in series with a parallel pair, R2 and R3. The trick is to
replace the pair by its equivalent resistance. Then the circuit is a
simple series circuit.

```figure
(define r1 (slider 'r1 1 8 2 "R1 (ohms)" 1))
(define r2 (slider 'r2 1 8 4 "R2 (ohms)" 1))
(define r3 (slider 'r3 1 12 4 "R3 (ohms)" 1))
(define rp (/ 1 (+ (/ 1 r2) (/ 1 r3))))
(define i (/ 12 (+ r1 rp)))
(define vp (* i rp))
(path '(50 40 80 40) 'ink 1.5) (path '(150 40 270 40 270 70) 'ink 1.5)
(path '(200 40 200 70) 'ink 1.5) (path '(200 150 200 180) 'ink 1.5)
(path '(270 150 270 180 50 180) 'ink 1.5)
(dot 200 40) (dot 200 180)
(el-res 80 40 150 40 (string-append "R1 = " (fmt r1 0)))
(el-res 200 70 200 150 "R2")
(el-res 270 70 270 150 "R3")
(el-cell 50 40 180 "12 V")
(text 160 204 (string-append "pair: " (fmt rp 2) " ohms; total: " (fmt (+ r1 rp) 2) " ohms") 'centre 'small)
(text 160 222 (string-append "I = " (fmt i 2) " A; V1 = " (fmt (* i r1) 2) " V; V pair = " (fmt vp 2) " V") 'centre 'small)
```

```sources
(source "OpenStax, Physics (2020), chapter 19, Electrical Circuits")
```

```check
(number
  (ask "R1 = 2 ohms, and R2 and R3 are both 4 ohms. What is the equivalent resistance of the whole circuit, in ohms?")
  (answer 4) (from "2 + 1 / (1/4 + 1/4)") (unit "ohms")
  (wrong-if 10 "That adds all three, as if they were in series. R2 and R3 are in parallel: together they are 4 / 2 = 2 ohms.")
  (wrong-if 1 "That treats all three as parallel. R1 is in series with the pair: 2 + 2.")
  (hint "First the parallel pair: two equal 4 ohm resistors give 2 ohms.")
  (hint "Then add R1, in series."))
```

---

## The method

1. Find the equivalent resistance of each parallel group.
2. Add the series parts to get the whole circuit's equivalent
   resistance.
3. Find the battery's current: $I = V / R_(eq)$.
4. Work back out: the voltage across each series part is $I R$; the
   voltage across a parallel group is $I$ times its equivalent
   resistance; each branch's current is that voltage over its own
   resistance.

```check
(number
  (ask "In the circuit with R1 = 2, R2 = 4 and R3 = 4 ohms on 12 V, what current does the battery supply, in amperes?")
  (answer 3) (from "12 / (2 + 1 / (1/4 + 1/4))") (unit "A")
  (wrong-if 1.2 "That divides by 10 ohms, adding all three in series. The equivalent resistance is 2 + 2 = 4 ohms.")
  (hint "I = V / R_eq, and R_eq = 4 ohms."))
```

---

## Back to the branches

With 3 A from the battery, R1 takes $3 * 2 = 6$ V. The pair takes the
rest, $12 - 6 = 6$ V, which is also $3 * 2$. Each 4 ohm branch then
carries $6 / 4 = 1.5$ A, and the two branches add up to the 3 A.

```check
(number
  (ask "Change R3 to 12 ohms, with R1 = 2 and R2 = 4 still. The pair is now 3 ohms, the battery's current 2.4 A, and the voltage across the pair 7.2 V. What current flows through R3, in amperes?")
  (answer 0.6) (from "12 / (2 + 1 / (1/4 + 1/12)) * (1 / (1/4 + 1/12)) / 12") (unit "A")
  (wrong-if 1.8 "That is the current through R2: 7.2 / 4. R3 has 12 ohms: 7.2 / 12.")
  (wrong-if 2.4 "That is the battery's current. It splits between R2 and R3; R3 takes 7.2 / 12.")
  (hint "Both branches have the pair's voltage, 7.2 V. Use I = V / R for R3."))
```

---

## Which lamp is brightest?

Three equal lamps: A in series with a parallel pair, B and C. Each lamp
is treated as a fixed 6 ohm resistor, on 12 V. A carries the whole
current; B and C share it. Take C out and see what happens.

```figure
(define off (toggle 'c "Take lamp C out" #f))
(define rp (if off 6 3))
(define i (/ 12 (+ 6 rp)))
(define pa (/ (* i i 6) 24))
(define vp (* i rp))
(define pb (/ (/ (* vp vp) 6) 24))
(path '(50 40 103 40) 'ink 1.5) (path '(127 40 270 40 270 98) 'ink 1.5)
(path '(200 40 200 98) 'ink 1.5) (path '(200 122 200 180) 'ink 1.5)
(path '(270 122 270 180 50 180) 'ink 1.5)
(dot 200 40) (dot 200 180)
(el-cell 50 40 180 "12 V")
(el-lamp 115 40 pa) (text 115 92 "A" 'centre 'small 'bold)
(el-lamp 200 110 pb) (text 192 172 "B" 'right 'small 'bold)
(if off (begin (dot 270 98) (dot 270 122) (text 282 114 "out" 'small))
    (begin (el-lamp 270 110 pb) (text 262 172 "C" 'right 'small 'bold)))
(text 160 210 (string-append "A: " (fmt (* pa 24) 1) " W   B: " (fmt (* pb 24) 1) " W") 'centre 'small)
(caption "Rays: brightness, from each lamp's power.")
```

```check
(choice
  (ask "Lamp C is taken out. What happens to lamps A and B?")
  (right "A gets dimmer and B gets brighter")
  (wrong "Both get dimmer"
    "With C gone, the circuit's resistance rises, so less current flows: A dims. But B no longer shares, and it gets a bigger part of the voltage: it brightens.")
  (wrong "Nothing changes for A or B"
    "Taking C out changes the equivalent resistance from 9 to 12 ohms, so every current changes.")
  (wrong "A gets brighter and B dimmer"
    "Less total current flows once C is out, so A, which carries all of it, dims. B now gets 6 V instead of 4 V.")
  (hint "Try it in the figure. What happens to the total resistance?"))
```

---

## A combined circuit, solved

```example
(example
  (problem "A 9 V battery feeds a 1 ohm resistor in series with a pair of 4 ohm and 12 ohm resistors in parallel. Find the current in the 12 ohm resistor.")
  (step "Pair: 1 / (1/4 + 1/12) = 1 / (4/12) = 3 ohms.")
  (step "Whole circuit: 1 + 3 = 4 ohms. Battery current: 9 / 4 = 2.25 A.")
  (step "Voltage across the pair: 2.25 x 3 = 6.75 V.")
  (step "Current in the 12 ohm resistor: 6.75 / 12 = 0.5625 A.")
  (answer "About 0.56 A."))
```

```example
(example
  (problem "A 10 V battery feeds a 2 ohm resistor in series with two 6 ohm resistors in parallel. Find the current in one 6 ohm resistor.")
  (step "Pair: 6 / 2 = 3 ohms. Whole circuit: 2 + 3 = 5 ohms. Current: 10 / 5 = 2 A.")
  (step "Voltage across the pair: 2 x 3 = 6 V.")
  (step (number (ask "Current in one 6 ohm resistor, in amperes?") (answer 1) (from "6 / 6")
          (wrong-if 2 "That is the battery's current. It splits equally between the two 6 ohm branches.")))
  (answer "1 A in each 6 ohm resistor."))
```

---

## Practice

```check
(number
  (ask "Two 6 ohm resistors in parallel are in series with a 7 ohm resistor. What is the equivalent resistance, in ohms?")
  (answer 10) (from "7 + 1 / (1/6 + 1/6)") (unit "ohms")
  (wrong-if 19 "That adds all three. The two 6 ohm resistors in parallel make 3 ohms; then add 7.")
  (hint "Two equal resistors in parallel: half of one."))
```

```check
(number
  (ask "That circuit is on a 20 V battery. What is the voltage across the 7 ohm resistor, in volts?")
  (answer 14) (from "20 / 10 * 7") (unit "V")
  (wrong-if 20 "The 7 ohm resistor shares the 20 V with the parallel pair. I = 20 / 10 = 2 A, so V = 2 x 7.")
  (hint "First the current: I = 20 / 10."))
```

```check
(choice
  (ask "A lamp in series with a parallel group carries:")
  (right "the sum of the group's branch currents")
  (wrong "the current of one branch only"
    "All the current that goes through the group passes through the series lamp too. It carries the branch currents added together.")
  (wrong "no current, since the group takes it all"
    "The current through the group must come through the series lamp first: there is no other path.")
  (hint "Is there any other path for the current to reach the group?"))
```

---

Replace each parallel group by its equivalent resistance, add the
series parts, find the battery's current, and work back out to every
part.
