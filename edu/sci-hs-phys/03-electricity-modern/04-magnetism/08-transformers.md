# Transformers

```lesson
(objective "Use the turns of a transformer to find its output voltage, and explain why power lines use high voltages.")
(standards "HS-PS2-5" "HSA-CED.A.4")
(minutes 25)
(keywords "transformer")
```

You can find the voltage a transformer gives out, and explain why
electricity travels across the country at very high voltages.

A **transformer** is two coils wound on one iron core. An alternating
current in the first coil, the primary, makes a magnetic field in the
core that keeps changing. That changing field passes through the second
coil, the secondary, and induces an alternating voltage in it.

Change the turns on each coil.

```figure
(define np (slider 'np 10 100 50 "Primary turns" 10))
(define ns (slider 'ns 10 100 20 "Secondary turns" 10))
(define vs (* 120 (/ ns np)))
(frame 90 40 140 140 'ink 3) (frame 112 62 96 96 'ink 1)
(for-range 0 (round (/ np 10))
  (lambda (k) (line 80 (+ 50 (* 12 k)) 122 (+ 56 (* 12 k)) 'ink 1.5)))
(for-range 0 (round (/ ns 10))
  (lambda (k) (line 198 (+ 50 (* 12 k)) 240 (+ 56 (* 12 k)) 'ink 1.5)))
(text 60 30 "primary" 'centre 'small) (text 260 30 "secondary" 'centre 'small)
(text 50 200 "120 V AC in" 'centre 'small 'bold)
(text 260 200 (string-append (fmt vs 0) " V out") 'centre 'small 'bold)
(caption "Each line on a coil stands for 10 turns.")
```

```sources
(source "OpenStax, College Physics (2012), section 23.7, Transformers")
```

```check
(choice
  (ask "A transformer's primary is joined to a battery, which gives a steady direct current. What voltage does the secondary give out once the current is steady?")
  (right "None")
  (wrong "The battery's voltage, scaled by the turns"
    "A steady current makes a steady field in the core, and a steady field induces nothing. Transformers need alternating current.")
  (wrong "A bigger voltage, since the core is iron"
    "The iron core makes the field stronger, but it must still change to induce a voltage.")
  (hint "Does a steady current make a changing field?"))
```

---

## The turns rule

Each turn of a coil has the same voltage induced in it, so the voltages
of the coils are in the ratio of their turns:

$$ V_s / V_p = N_s / N_p $$

A transformer with more turns on the secondary **steps up** the
voltage; one with fewer turns **steps down** the voltage.

```check
(number
  (ask "A transformer has 600 turns on its primary and 30 on its secondary. The primary is on 120 V. What is the secondary voltage, in volts?")
  (answer 6) (from "120 * 30 / 600") (unit "V")
  (wrong-if 2400 "That is the turns ratio upside down. Fewer secondary turns means a lower voltage: 120 x 30 / 600.")
  (hint "V_s = V_p x N_s / N_p."))
```

---

## Power in, power out

A transformer cannot make energy. A good one wastes very little, so
we treat it as ideal: the power out equals the power in,

$$ V_p I_p = V_s I_s $$

So when a transformer steps the voltage down, it steps the current up
by the same factor, and the reverse.

```check
(number
  (ask "An ideal transformer steps 120 V down to 12 V. The secondary supplies 2 A. What current does the primary take, in amperes?")
  (answer 0.2) (from "12 * 2 / 120") (unit "A")
  (wrong-if 20 "That makes the power in 10 times the power out. The primary has the higher voltage, so it takes the smaller current.")
  (hint "Power in = power out: 120 x I = 12 x 2."))
```

---

## Why power lines use high voltages

Power lines are long, so their wires have resistance, and they turn
$P = I^2 R$ into thermal energy. To send the same power with less
current, a power company steps the voltage up, to many thousands of
volts, at the power plant. Transformers near homes step it back down.

```warn
(warn "Power lines" "Stay far away from power lines and anything touching them, never climb poles or towers, and never go near a fallen line: treat it as live, and have an adult report it to the power company or emergency services. Their voltages can kill without touching, by a spark through the air.")
```

```sources
(source "US Energy Information Administration, Electricity Explained: How Electricity Is Delivered to Consumers")
(source "US Occupational Safety and Health Administration, Controlling Electrical Hazards (OSHA 3075)")
```

```check
(number
  (ask "A line of total resistance 5 ohms carries 100,000 W at 10,000 V. What power is lost in the line, in watts?")
  (answer 500) (from "(100000 / 10000)^2 * 5") (unit "W")
  (wrong-if 50 "That uses I R, not I^2 R. The current is 100,000 / 10,000 = 10 A, and 10^2 x 5 = 500 W.")
  (wrong-if 100000 "That is the power sent, not the power lost. Find the current, then I^2 R.")
  (hint "First the current: I = P / V.")
  (hint "Then the loss: I^2 R."))
```

```check
(number
  (ask "The same 100,000 W is sent at 100,000 V instead. What power is lost in the 5 ohm line now, in watts?")
  (answer 5) (from "(100000 / 100000)^2 * 5") (unit "W")
  (wrong-if 50 "Ten times the voltage gives a tenth of the current, and the loss goes as I^2: a hundredth. 500 / 100 = 5 W.")
  (hint "The current is now 1 A."))
```

---

## Practice

```check
(number
  (ask "A transformer steps 230 V down to 11.5 V. Its primary has 2,000 turns. How many turns has its secondary?")
  (answer 100) (from "2000 * 11.5 / 230")
  (wrong-if 40000 "That steps up. The secondary voltage is lower, so it has fewer turns: 2,000 x 11.5 / 230.")
  (hint "N_s = N_p x V_s / V_p."))
```

```check
(choice
  (ask "Why does a step-up transformer not give out more energy than it takes in?")
  (right "Its output current is smaller in the same proportion as its voltage is bigger")
  (wrong "It does give out more: that is why it is used"
    "Energy is conserved. Stepping the voltage up steps the current down, so the power stays the same.")
  (wrong "Its iron core stores the extra"
    "The core does not store energy for later. The output current is simply smaller.")
  (hint "Power = V I."))
```

---

A transformer changes an alternating voltage in the ratio of its
turns, $V_s / V_p = N_s / N_p$, and power lines use high voltages so
that small currents waste little energy.
