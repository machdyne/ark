# Capacitors

```lesson
(objective "Explain how a capacitor stores charge and energy in its electric field, and use C = Q/V.")
(standards "HS-PS3-2")
(minutes 25)
(keywords "capacitor" "capacitance" "farad")
```

You can explain how a part stores charge and energy, and work out how
much.

A **capacitor** is two conductors, often thin metal plates, close
together with an insulator between them. Joined to a battery, electrons
flow onto one plate and off the other, until the voltage between the
plates equals the battery's. One plate then holds a positive charge $Q$
and the other an equal negative charge, $-Q$.

Between the plates is an electric field. The energy that moved the
charge is stored there, as electric potential energy.

```figure
(define v (slider 'v 0 12 6 "Battery (V)" 1))
(define k (choice 'c '("100" "220" "470") "C (microfarads)"))
(define c (list-ref '(100 220 470) k))
(define q (* c v))
(define n (round (/ q 500)))
(rect 120 40 8 120 'grey) (frame 120 40 8 120 'ink 1)
(rect 192 40 8 120 'grey) (frame 192 40 8 120 'ink 1)
(path '(124 40 124 20 60 20 60 70) 'ink 1.5) (path '(60 130 60 180 196 180 196 160) 'ink 1.5)
(el-cell 60 70 130 (string-append (fmt v 0) " V"))
(for-range 0 (min n 12)
  (lambda (j) (text 112 (+ 50 (* 9 j)) "+" 'right 'small 'bold)
              (text 208 (+ 50 (* 9 j)) "-" 'small 'bold)))
(if (> v 0) (for-range 0 4 (lambda (j) (arrow 134 (+ 60 (* 27 j)) 186 (+ 60 (* 27 j)) 'ink 1))))
(text 160 198 (string-append "Q = " (fmt q 0) " microcoulombs") 'centre 'small 'bold)
(text 160 214 (string-append "energy = " (fmt (* 0.5 c 0.000001 v v) 4) " J") 'centre 'small)
(caption "Signs: about 1 for each 500 microcoulombs.")
```

```sources
(source "OpenStax, Physics (2020), chapter 18, Static Electricity")
(source "OpenStax, College Physics (2012), sections 19.5 and 19.7, Capacitors and Dielectrics; Energy Stored in Capacitors")
```

```check
(choice
  (ask "A capacitor is joined to a battery. Which is true when it is charged?")
  (right "One plate is +Q and the other -Q, so the capacitor as a whole is neutral")
  (wrong "Both plates are positive"
    "Electrons are pushed onto one plate and pulled off the other. One plate ends negative and the other positive.")
  (wrong "Charge flows across the gap between the plates"
    "The gap holds an insulator, so no charge crosses it. Charge flows through the wires onto one plate and off the other.")
  (hint "What fills the gap between the plates?"))
```

---

## Capacitance

The charge a capacitor holds is proportional to the voltage across it.
The ratio is its **capacitance**:

$$ C = Q / V $$

Capacitance is measured in **farads** (F): 1 farad is 1 coulomb per
volt. That is a very large capacitance; most capacitors are measured in
microfarads, millionths of a farad.

Bigger plates closer together have a bigger capacitance.

```check
(number
  (ask "A 100 microfarad capacitor is charged to 9 V. How much charge does each plate hold, in microcoulombs?")
  (answer 900) (from "100 * 9") (unit "microcoulombs")
  (wrong-if 11.1 "That divides. From C = Q / V, the charge is Q = C V: multiply.")
  (hint "Q = C V. Microfarads times volts gives microcoulombs."))
```

---

## Stored energy

The energy stored in a charged capacitor is

$$ U = 1/2 Q V = 1/2 C V^2 $$

The half is there because the first charge moved across almost no
voltage, and only the last charge across the full $V$: on average,
half.

```check
(number
  (ask "A 0.01 F capacitor is charged to 10 V. How much energy does it store, in joules?")
  (answer 0.5) (from "1/2 * 0.01 * 10^2") (unit "J")
  (wrong-if 1 "That leaves out the half. U = 1/2 C V^2.")
  (wrong-if 0.05 "That uses V, not V^2. U = 1/2 x 0.01 x 100.")
  (hint "U = 1/2 C V^2."))
```

---

## What capacitors do

A capacitor can let its stored energy out very quickly, far faster
than a battery. A camera's flash charges a capacitor for a few seconds,
then empties it through the flash lamp in a fraction of a second. Other
capacitors smooth out changes in a voltage, or keep a clock running for
a moment when the power goes off.

```warn
(warn "Charged capacitors in devices" "Large capacitors inside TVs, computer power supplies, camera flashes and microwave ovens can stay charged for a long time after the device is unplugged, enough to give a dangerous shock. Never open such a device.")
```

```check
(choice
  (ask "Why does a camera flash use a capacitor, not just its battery?")
  (right "A capacitor can release its stored energy much faster than a battery can")
  (wrong "A capacitor stores more energy than a battery"
    "A battery usually stores far more energy. The capacitor's advantage is speed: it can release its energy in a fraction of a second.")
  (wrong "A capacitor makes energy"
    "No device makes energy. The capacitor stores energy from the battery and releases it all at once.")
  (hint "Is the flash about how much energy, or how fast?"))
```

---

## A camera flash

```example
(example
  (problem "A flash capacitor of 200 microfarads is charged to 300 V. Find its charge and its energy.")
  (step "Q = C V = 200 x 10^-6 x 300 = 0.06 C.")
  (step "U = 1/2 C V^2 = 1/2 x 200 x 10^-6 x 300^2.")
  (step "300^2 = 90,000, so U = 100 x 10^-6 x 90,000 = 9 J.")
  (answer "0.06 C and 9 J."))
```

```example
(example
  (problem "A 1,000 microfarad capacitor is charged to 20 V. How much energy does it store?")
  (step "C = 1,000 x 10^-6 F = 0.001 F.")
  (step (number (ask "U = 1/2 C V^2. How many joules?") (answer 0.2) (from "1/2 * 0.001 * 20^2")
          (wrong-if 0.4 "That leaves out the half. U = 1/2 x 0.001 x 400.")))
  (answer "0.2 J."))
```

---

## Practice

```check
(number
  (ask "A capacitor holds 0.003 C when charged to 6 V. What is its capacitance, in farads?")
  (answer 0.0005) (from "0.003 / 6") (unit "F")
  (wrong-if 0.018 "That multiplies. C = Q / V: divide the charge by the voltage.")
  (wrong-if 2000 "That divides V by Q. C = Q / V.")
  (hint "C = Q / V."))
```

```check
(choice
  (ask "The voltage across a capacitor is doubled. What happens to the energy it stores?")
  (right "It becomes 4 times as big")
  (wrong "It doubles"
    "U = 1/2 C V^2: the energy grows with the square of the voltage. Doubling V gives 2^2 = 4 times the energy.")
  (wrong "It stays the same, since C does not change"
    "C stays the same, but V^2 grows. The plates hold twice the charge, each moved across twice the voltage.")
  (hint "U = 1/2 C V^2."))
```

```check
(choice
  (ask "Where is a charged capacitor's energy stored?")
  (right "In the electric field between its plates")
  (wrong "In the current flowing across the gap"
    "No current crosses the insulating gap. The energy is in the electric field the separated charges make between the plates.")
  (wrong "In the battery, which keeps it charged"
    "Take the charged capacitor away from the battery and it still holds its energy, in the field between its plates.")
  (hint "What is between the plates of a charged capacitor?"))
```

---

A capacitor stores charge $Q = C V$ on two separated plates, and energy
$U = 1/2 C V^2$ in the electric field between them; capacitance is
measured in farads.
