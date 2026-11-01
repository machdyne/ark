# Electric power

```lesson
(objective "Compute electric power with P = IV and P = I^2 R, and explain which lamp glows brighter.")
(standards "HS-PS3-1")
(minutes 25)
(keywords "electric power")
```

You can work out how fast a part uses electric energy, and predict
which of two lamps glows brighter.

Each coulomb passing through a part gives up $V$ joules, and $I$
coulombs pass each second. So the energy the part turns into other
forms each second is

$$ P = I V $$

This is **electric power**, in watts. An ampere is a coulomb per
second and a volt a joule per coulomb, so an ampere times a volt is a
joule per second: 1 watt.

```sources
(source "OpenStax, Physics (2020), chapter 19, Electrical Circuits")
```

```check
(number
  (ask "A lamp on 12 V carries 2 A. What is its power, in watts?")
  (answer 24) (from "2 * 12") (unit "W")
  (wrong-if 6 "That divides. Power is current times voltage: P = I V.")
  (hint "P = I V."))
```

---

## Two more forms

Put Ohm's law, $V = I R$, into $P = I V$:

$$ P = I^2 R $$

$$ P = V^2 / R $$

Use the form whose quantities you know. The current is squared, so
doubling the current through a resistor makes 4 times the power.

```check
(number
  (ask "A current of 3 A flows through a 4 ohm resistor. What is its power, in watts?")
  (answer 36) (from "3^2 * 4") (unit "W")
  (wrong-if 12 "That is I R, which is the voltage, 12 V. Power is I^2 R: 3^2 x 4.")
  (wrong-if 24 "That doubles the current instead of squaring it. 3^2 = 9, and 9 x 4 = 36.")
  (hint "P = I^2 R. Square the current first."))
```

---

## Which lamp is brighter?

A lamp's brightness follows its power. Treat each lamp as a fixed
resistor. Choose series or parallel, and change the lamps.

```figure
(define k (choice 'how '("Series" "Parallel") "Joined in"))
(define r1 (slider 'r1 2 12 4 "Lamp 1 (ohms)" 1))
(define r2 (slider 'r2 2 12 8 "Lamp 2 (ohms)" 1))
(define i (/ 12 (+ r1 r2)))
(define p1 (if (= k 0) (* i i r1) (/ 144 r1)))
(define p2 (if (= k 0) (* i i r2) (/ 144 r2)))
(if (= k 0)
    (begin (path '(50 50 280 50 280 170 50 170) 'ink 1.5)
           (el-cell 50 50 170 "12 V")
           (el-lamp 140 50 (/ p1 72)) (el-lamp 220 50 (/ p2 72))
           (text 140 92 "1" 'centre 'small 'bold) (text 220 92 "2" 'centre 'small 'bold))
    (begin (path '(50 40 240 40) 'ink 1.5) (path '(50 180 240 180) 'ink 1.5)
           (el-cell 50 40 180 "12 V")
           (for-each (lambda (x) (path (list x 40 x 98) 'ink 1.5) (path (list x 122 x 180) 'ink 1.5))
                     '(160 240))
           (dot 160 40) (dot 160 180)
           (el-lamp 160 110 (/ p1 72)) (el-lamp 240 110 (/ p2 72))
           (text 150 165 "1" 'right 'small 'bold) (text 230 165 "2" 'right 'small 'bold)))
(text 160 212 (string-append "P1 = " (fmt p1 1) " W    P2 = " (fmt p2 1) " W") 'centre 'body 'bold)
(caption "Rays: brightness, from each lamp's power.")
```

```check
(choice
  (ask "A 4 ohm and an 8 ohm lamp are in series. Which glows brighter?")
  (right "The 8 ohm lamp")
  (wrong "The 4 ohm lamp"
    "In series both carry the same current, so P = I^2 R is bigger for the bigger resistance. Try it in the figure.")
  (wrong "Both glow the same, since the current is the same"
    "The current is the same, but the resistances are not. P = I^2 R: the 8 ohm lamp turns twice as much energy into light and heat.")
  (hint "In series the current is the same. Which form of the power uses the current?"))
```

---

## In parallel, the reverse

In parallel, each lamp has the same voltage, so use $P = V^2 / R$: the
lamp with the **smaller** resistance takes more current and glows
brighter. That is why a 100 W lamp for a 120 V outlet has a smaller
resistance than a 40 W lamp for the same outlet.

```check
(choice
  (ask "A 4 ohm and an 8 ohm lamp are in parallel on 12 V. Which glows brighter?")
  (right "The 4 ohm lamp")
  (wrong "The 8 ohm lamp"
    "In parallel both have 12 V across them. P = V^2 / R is bigger for the smaller resistance: 36 W against 18 W.")
  (wrong "Both glow the same, since the voltage is the same"
    "The voltage is the same, but the smaller resistance lets more current through. P = V^2 / R.")
  (hint "In parallel the voltage is the same. Which form of the power uses the voltage?"))
```

---

## A lamp and a heater

```example
(example
  (problem "A 60 W lamp is designed for 120 V. Find its current and its resistance when lit.")
  (step "I = P / V = 60 / 120 = 0.5 A.")
  (step "R = V / I = 120 / 0.5 = 240 ohms.")
  (step "Check: P = I^2 R = 0.25 x 240 = 60 W.")
  (answer "0.5 A and 240 ohms."))
```

```example
(example
  (problem "A 1,200 W space heater runs on 120 V. What current does it draw?")
  (step "I = P / V.")
  (step (number (ask "What is the current, in amperes?") (answer 10) (from "1200 / 120")
          (wrong-if 144000 "That multiplies. Current is power divided by voltage: I = P / V.")))
  (answer "10 A."))
```

---

## Practice

```check
(number
  (ask "A phone charger supplies 2 A at 5 V. What power does it supply, in watts?")
  (answer 10) (from "2 * 5") (unit "W")
  (wrong-if 2.5 "That divides. P = I V = 2 x 5.")
  (hint "P = I V."))
```

```check
(number
  (ask "What power is used by a 6 ohm resistor with 12 V across it, in watts?")
  (answer 24) (from "12^2 / 6") (unit "W")
  (wrong-if 2 "That is V / R, the current. Power is V^2 / R = 144 / 6.")
  (wrong-if 72 "That is V x R. P = V^2 / R.")
  (hint "P = V^2 / R."))
```

```check
(choice
  (ask "The current through a resistor doubles. What happens to its power?")
  (right "It becomes 4 times as big")
  (wrong "It doubles"
    "P = I^2 R, so the power grows with the square of the current: 2^2 = 4.")
  (wrong "It halves"
    "More current through the same resistance turns more energy into heat, not less.")
  (hint "P = I^2 R. What is 2^2?"))
```

---

Electric power is $P = I V$, or $I^2 R$, or $V^2 / R$: in series the
bigger resistance glows brighter, and in parallel the smaller one.
