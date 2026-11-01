# Parallel circuits

```lesson
(objective "Find the current in each branch of a parallel circuit, and its equivalent resistance.")
(standards "HSA-CED.A.4")
(minutes 25)
(keywords "parallel circuit" "branch (of a circuit)")
```

You can find the currents when parts are joined side by side, each
straight across the battery.

In a **parallel circuit**, each part is on its own path, joined
directly across the two ends of the battery. Each separate path is a
**branch**. Every branch has the battery's full voltage across it.

Add lamps in parallel. Each lamp is treated as a fixed 6 ohm resistor.

```figure
(define n (slider 'n 1 3 1 "Lamps" 1))
(define v (slider 'v 0 12 12 "Battery (V)" 1))
(define ib (/ v 6))
(define p (/ (* v v) 144))
(define xr (+ 150 (* 55 (- n 1))))
(path (list 50 40 xr 40) 'ink 1.5)
(path (list 50 180 xr 180) 'ink 1.5)
(el-cell 50 40 180 (string-append (fmt v 0) " V"))
(for-range 0 n
  (lambda (k)
    (let ((x (+ 150 (* 55 k))))
      (if (> k 0) (begin (dot x 40) (dot x 180)))
      (path (list x 40 x 98) 'ink 1.5) (path (list x 122 x 180) 'ink 1.5)
      (el-lamp x 110 p)
      (text (+ x 4) 160 (string-append (fmt ib 1) " A") 'tiny))))
(text 160 210 (string-append "battery current = " (fmt (* n ib) 1) " A") 'centre 'body 'bold)
(caption "Each branch: the full battery voltage.")
```

```sources
(source "OpenStax, Physics (2020), chapter 19, Electrical Circuits")
```

```check
(choice
  (ask "A second lamp is added in parallel with the first. What happens to the first lamp?")
  (right "It stays just as bright")
  (wrong "It gets dimmer, since the lamps share the current"
    "Each branch has the full battery voltage across it, so each lamp gets the same current as before. The battery supplies more current in all.")
  (wrong "It gets brighter"
    "Its voltage is still the battery's voltage, and its resistance has not changed, so its current is the same: I = V / R.")
  (hint "Try it in the figure. What voltage does each branch have?"))
```

---

## Currents add up

Each branch takes its own current, $I = V / R$ for that branch. The
battery supplies all of them, so the current leaving the battery is
the sum of the branch currents:

$$ I = I_1 + I_2 + I_3 $$

```check
(number
  (ask "A 12 V battery has a 4 ohm resistor and a 6 ohm resistor in parallel across it. What current does the battery supply, in amperes?")
  (answer 5) (from "12 / 4 + 12 / 6") (unit "A")
  (wrong-if 1.2 "That divides 12 V by 4 + 6. That is the rule for series. In parallel, find each branch's current and add.")
  (wrong-if 3 "That is only the 4 ohm branch. The 6 ohm branch takes 12 / 6 = 2 A as well.")
  (hint "Each branch: I = 12 / R. Then add the branch currents."))
```

---

## Independent branches

Since each branch is its own path, a gap in one branch stops the
current only in that branch. That is why the lights and outlets in a
home are wired in parallel: each works whether or not the others are
switched on.

```check
(choice
  (ask "Three lamps are in parallel. One burns out. What happens to the other two?")
  (right "They stay lit, just as bright")
  (wrong "They all go out"
    "That happens in series, where there is one path. In parallel, each lamp has its own branch to the battery.")
  (wrong "They get brighter, sharing the extra current"
    "Each lamp still has the battery's voltage and its own resistance, so its current is the same. The battery just supplies less in all.")
  (hint "Each branch is its own path to the battery."))
```

---

## Equivalent resistance

Adding a branch gives the charge another path, so the battery supplies
more current: the equivalent resistance goes **down**. For a parallel
circuit,

$$ 1 / R_(eq) = 1 / R_1 + 1 / R_2 + 1 / R_3 $$

The equivalent resistance is always less than the smallest branch's.
Two equal resistors $R$ in parallel give $R / 2$.

```check
(number
  (ask "A 6 ohm and a 3 ohm resistor are in parallel. What is their equivalent resistance, in ohms?")
  (answer 2) (from "1 / (1/6 + 1/3)") (unit "ohms")
  (wrong-if 9 "That adds them, the rule for series. In parallel, add the reciprocals: 1/6 + 1/3 = 1/2.")
  (wrong-if 0.5 "That is 1 / R_eq. Turn it over: R_eq = 1 / 0.5.")
  (hint "1 / R_eq = 1/6 + 1/3.")
  (hint "1/6 + 2/6 = 3/6 = 1/2. Turn it over."))
```

---

## A parallel circuit, solved

```example
(example
  (problem "A 6 V battery has a 2 ohm and a 3 ohm resistor in parallel. Find each branch current, the total current and the equivalent resistance.")
  (step "Each branch has 6 V. I1 = 6 / 2 = 3 A; I2 = 6 / 3 = 2 A.")
  (step "Total: 3 + 2 = 5 A.")
  (step "R_eq = 6 V / 5 A = 1.2 ohms; check: 1/2 + 1/3 = 5/6, and 6/5 = 1.2.")
  (answer "3 A and 2 A; 5 A in all; 1.2 ohms."))
```

```example
(example
  (problem "A 12 V battery has two 8 ohm resistors in parallel. Find the total current.")
  (step "Each branch: 12 / 8 = 1.5 A.")
  (step (number (ask "Total current, in amperes?") (answer 3) (from "12 / 8 + 12 / 8")
          (wrong-if 0.75 "That uses 16 ohms, the series rule. In parallel, add the branch currents.")))
  (answer "3 A (the equivalent resistance is 4 ohms)."))
```

---

## Practice

```check
(number
  (ask "Two 10 ohm resistors are in parallel. What is their equivalent resistance, in ohms?")
  (answer 5) (from "1 / (1/10 + 1/10)") (unit "ohms")
  (wrong-if 20 "That is the series rule. Two equal resistors in parallel give half of one: 10 / 2.")
  (hint "Two equal resistors in parallel: half of one."))
```

```check
(number
  (ask "A 9 V battery has resistors of 3, 9 and 18 ohms in parallel. What current flows in the 9 ohm branch, in amperes?")
  (answer 1) (from "9 / 9") (unit "A")
  (wrong-if 0.3 "That divides 9 V by all three resistances added. In parallel, the 9 ohm branch has the full 9 V across it.")
  (hint "Each branch has the full battery voltage."))
```

```check
(choice
  (ask "A 4 ohm resistor is joined in parallel with a 100 ohm resistor. The equivalent resistance is:")
  (right "a little less than 4 ohms")
  (wrong "104 ohms"
    "That adds them, as for series. A parallel branch adds a path, so the resistance falls below the smallest branch.")
  (wrong "about 52 ohms, the average"
    "The equivalent resistance in parallel is less than the smallest branch. The 100 ohm path adds only a little current.")
  (hint "Is the equivalent resistance in parallel bigger or smaller than the smallest branch?"))
```

---

In a parallel circuit every branch has the battery's voltage, the
branch currents add up, and the equivalent resistance is less than any
branch's.
