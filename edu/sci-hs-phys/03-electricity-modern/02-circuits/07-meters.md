# Measuring current and voltage

```lesson
(objective "Place an ammeter and a voltmeter correctly, and read them, in a simulated circuit.")
(standards "HSN-Q.A.1")
(minutes 20)
(keywords "ammeter" "voltmeter")
```

You can place meters to measure a current and a voltage, and read them.

An **ammeter** measures current, in amperes. The current must flow
through it, so you open the circuit and put the ammeter in series, in
the loop. A good ammeter has almost no resistance, so it barely changes
the current it measures.

A **voltmeter** measures the voltage between two points. You join it
across a part, in parallel with it. A good voltmeter has a very large
resistance, so it takes almost no current.

Choose where the meter goes. The battery is 9 V; R1 is 3 ohms and R2
is 6 ohms. The meters here are ideal.

```figure
(define k (choice 'm '("a" "b" "c" "d" "e") "Meter"))
(text 20 22 (list-ref '("a: ammeter in the loop" "b: voltmeter across R1" "c: voltmeter across R2"
                        "d: voltmeter in the loop" "e: ammeter across R2") k) 'small 'bold)
(define inloop (or (= k 0) (= k 3)))
(define i (cond ((= k 3) 0) ((= k 4) 3) (else 1)))
(define rd (list-ref '("1.00 A" "3.00 V" "6.00 V" "9.00 V" "3.00 A") k))
(path '(60 50 110 50) 'ink 1.5) (path '(110 170 60 170) 'ink 1.5)
(el-res 110 50 190 50 "R1 = 3")
(el-res 190 170 110 170 "")
(text 150 196 "R2 = 6" 'centre 'small)
(el-cell 60 50 170 "9 V")
(if inloop
    (begin (path '(190 50 260 50 260 99) 'ink 1.5) (path '(260 121 260 170 190 170) 'ink 1.5)
           (el-meter 260 110 (if (= k 0) "A" "V")))
    (path '(190 50 260 50 260 170 190 170) 'ink 1.5))
(if (= k 1) (begin (dot 100 50) (dot 200 50) (path '(100 50 100 90 139 90) 'ink 1) (path '(161 90 200 90 200 50) 'ink 1)
                   (el-meter 150 90 "V")))
(if (> k 1) (if (not (= k 3))
    (begin (dot 100 170) (dot 200 170) (path '(100 170 100 130 139 130) 'ink 1) (path '(161 130 200 130 200 170) 'ink 1)
           (el-meter 150 130 (if (= k 2) "V" "A")))))
(text 160 214 (string-append "meter reads " rd) 'centre 'small 'bold)
(text 160 230 (string-append "current from the battery: " (fmt i 2) " A") 'centre 'small)
```

```sources
(source "OpenStax, Physics (2020), chapter 19, Electrical Circuits")
```

```check
(choice
  (ask "Where must an ammeter go to measure the current through a lamp?")
  (right "In series with the lamp, so the lamp's current flows through it")
  (wrong "Across the lamp, in parallel"
    "Across the lamp, the ammeter would give the current an easy path around the lamp: almost all of it would bypass the lamp. It must be in the loop.")
  (wrong "Anywhere, as long as it touches the circuit"
    "A meter measures only what passes through it or what it is joined across. Current must flow through an ammeter, so it goes in series.")
  (hint "An ammeter counts the charge flowing through it."))
```

---

## Reading the meters

With the meters placed right, the readings follow the rules of series
circuits: $R_(eq) = 3 + 6 = 9$ ohms, so $I = 9 / 9 = 1$ A. Then
$V_1 = 1 * 3 = 3$ V and $V_2 = 1 * 6 = 6$ V, which add up to 9 V.

```check
(number
  (ask "The voltmeter is moved to join across the battery itself. What does it read, in volts?")
  (answer 9) (from "3 + 6") (unit "V")
  (wrong-if 3 "That is the voltage across R1 alone. Across the battery, it reads the whole voltage: 3 + 6.")
  (hint "The voltages across the parts add up to the battery's."))
```

---

## Meters in the wrong place

- **A voltmeter in the loop** puts its very large resistance in series.
  The current almost stops, and the meter reads nearly the battery's
  whole voltage. No harm, but it measures the wrong thing.
- **An ammeter across a part** gives the current a path of almost no
  resistance around that part. It bypasses the part, and the current
  grows. Across a battery alone it is a short circuit, which can damage
  the meter.

Try both in the figure of the first step: d and e.

```check
(choice
  (ask "An ammeter is joined across R2 by mistake. Why does the current from the battery rise from 1 A to 3 A?")
  (right "Current bypasses R2 through the ammeter, so only R1's 3 ohms is left")
  (wrong "The ammeter adds its own current"
    "A meter does not add current. With almost no resistance, it gives the current a way around R2, so the loop has only 3 ohms.")
  (wrong "R2's resistance doubles"
    "R2 is unchanged, but almost no current passes through it now. The ammeter is an easier path around it.")
  (hint "Which is the easier path: R2, or an ammeter with almost no resistance?"))
```

---

## Practice

```check
(choice
  (ask "To measure the voltage across a lamp, how do you join the voltmeter?")
  (right "Across the lamp, one lead on each side of it")
  (wrong "In series with the lamp, in the loop"
    "In the loop, the voltmeter's huge resistance stops the current. It must be joined across the part, in parallel.")
  (hint "A voltmeter compares two points."))
```

```check
(number
  (ask "A 12 V battery is in series with a 1 ohm and a 3 ohm resistor. An ammeter is in the loop. What does it read, in amperes?")
  (answer 3) (from "12 / (1 + 3)") (unit "A")
  (wrong-if 12 "That uses only the 1 ohm resistor. The current passes through both: R = 1 + 3.")
  (hint "Find the equivalent resistance first."))
```

```check
(number
  (ask "In the same circuit, what does a voltmeter across the 3 ohm resistor read, in volts?")
  (answer 9) (from "12 / (1 + 3) * 3") (unit "V")
  (wrong-if 12 "Across one resistor it reads that resistor's share: V = I R = 3 x 3.")
  (hint "V = I R, with the current from the ammeter."))
```

---

An ammeter goes in series and reads the current through it; a voltmeter
goes across a part and reads the voltage between its ends.
