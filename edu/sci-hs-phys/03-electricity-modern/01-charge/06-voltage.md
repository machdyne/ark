# Voltage

```lesson
(objective "Explain electric potential energy, and voltage as the energy per coulomb, in volts.")
(standards "HS-PS3-5" "HS-PS3-2")
(minutes 25)
(keywords "electric potential energy" "voltage" "volt")
```

You can explain the energy a charge has in an electric field, and what
the number on a battery's label means.

Lifting a ball against gravity stores gravitational potential energy.
In the same way, pushing a positive charge against an electric field
stores energy. Energy stored by a charge's place in an electric field
is **electric potential energy**.

Let the charge go and the field pushes it: its electric potential
energy turns into kinetic energy, as a falling ball's does.

Drag the slider to move a + charge between two plates.

```figure
(define x (slider 'x 60 260 220 "Charge at" 10))
(still
  (rect 30 30 8 150 'grey) (frame 30 30 8 150 'ink 1)
  (rect 282 30 8 150 'grey) (frame 282 30 8 150 'ink 1)
  (text 34 24 "+" 'centre 'body 'bold) (text 286 24 "-" 'centre 'body 'bold)
  (for-range 0 4 (lambda (i) (arrow 48 (+ 50 (* 37 i)) 272 (+ 50 (* 37 i)) 'grey 1)))
  (text 22 214 "PE" 'small 'right)
  (frame 30 202 252 16 'ink 1))
(el-charge x 105 1 10)
(rect 30 202 (* 252 (/ (- 282 x) 252)) 16 'warm)
(frame 30 202 252 16 'ink 1)
(caption "The field points from + to -. Bar: electric potential energy.")
```

```sources
(source "OpenStax, Physics (2020), chapter 18, Static Electricity")
```

```check
(choice
  (ask "Where does the + charge have the most electric potential energy?")
  (right "Next to the + plate")
  (wrong "Next to the - plate"
    "The field pushes a + charge toward the - plate, as gravity pulls a ball down. Next to the - plate it has \"fallen\" all the way: least energy.")
  (wrong "The same everywhere"
    "Moving the charge against the field takes work, and that work is stored. So its energy depends on where it is.")
  (hint "Which way does the field push the + charge? Where is it \"highest\"?"))
```

---

## Energy per coulomb

Twice the charge in the same place stores twice the energy. So we
describe a place by its energy per coulomb. The difference in electric
potential energy per coulomb between two points is the **voltage**
between them:

$$ V = W / q $$

$W$ is the energy, in joules, gained or lost by charge $q$ moving
between the points. Voltage is measured in **volts** (V): 1 volt is 1
joule per coulomb.

```check
(number
  (ask "Moving 2 C of charge from one point to another takes 12 J of work. What is the voltage between the points, in volts?")
  (answer 6) (from "12 / 2") (unit "V")
  (wrong-if 24 "That multiplies. Voltage is energy per coulomb: divide the joules by the coulombs.")
  (hint "V = W / q."))
```

---

## A battery's volts

A 1.5 V battery gives each coulomb that passes through it from one end
to the other 1.5 J of energy. A 12 V car battery gives 12 J to each
coulomb. The energy for any charge is

$$ W = q V $$

```check
(number
  (ask "3 C of charge pass through a 9 V battery. How much energy does the battery give them, in joules?")
  (answer 27) (from "3 * 9") (unit "J")
  (wrong-if 3 "That divides 9 by 3. Each coulomb gets 9 J, so 3 coulombs get 3 times as much.")
  (wrong-if 12 "That adds. Each of the 3 coulombs gets 9 J: multiply.")
  (hint "W = q V."))
```

---

## A speeding electron

```example
(example
  (problem "An electron, starting at rest, is pulled across a voltage of 100 V. How much kinetic energy does it gain?")
  (step "Its electric potential energy turns into kinetic energy: W = qV.")
  (step "The size of its charge is e = 1.60 x 10^-19 C.")
  (step "W = 1.60 x 10^-19 x 100 = 1.60 x 10^-17 J.")
  (answer "1.60 x 10^-17 J of kinetic energy."))
```

```check
(number
  (ask "A proton is pushed across 500 V. How much kinetic energy does it gain? Write the number that goes in front of" (math "10^-17") "J.")
  (answer 8.0) (within 0.05) (from "1.60 * 10^-19 * 500 / 10^-17")
  (wrong-if 1.6 "That is the energy for 100 V. 500 V gives 5 times as much: 8.0 x 10^-17 J.")
  (hint "W = qV = 1.60 x 10^-19 x 500.")
  (hint "1.60 x 500 = 800, so W = 800 x 10^-19 J. Write that as ... x 10^-17."))
```

---

## Wall outlets

Wall outlets supply about 120 V in the US and Canada and about 230 V in
much of the rest of the world. That is far more energy per coulomb than
a flashlight battery's 1.5 V, and enough for charge driven through a
body to kill.

```warn
(warn "Outlets are not for experiments" "Never put anything but a plug into a wall outlet, and never use a plug or cord that is damaged. Do every experiment in this course in the simulations, not with outlets or batteries.")
```

```sources
(source "US Occupational Safety and Health Administration, Controlling Electrical Hazards (OSHA 3075)")
```

```check
(number
  (ask "0.5 C of charge moves across a 120 V outlet's voltage. How much energy is that, in joules?")
  (answer 60) (from "0.5 * 120") (unit "J")
  (wrong-if 240 "That divides 120 by 0.5. The energy is W = qV: multiply.")
  (hint "W = q V."))
```

---

## Practice

```check
(choice
  (ask "What does a battery's label \"6 V\" tell you?")
  (right "It gives 6 J of energy to each coulomb that passes through it")
  (wrong "It holds 6 C of charge"
    "Volts measure energy per coulomb, not an amount of charge. 6 V means 6 joules for each coulomb.")
  (wrong "It gives 6 J of energy in all"
    "The total depends on how much charge passes. Each coulomb gets 6 J; 10 coulombs get 60 J.")
  (hint "1 volt is 1 joule per coulomb."))
```

```check
(number
  (ask "A charge of 0.25 C gains 3 J moving between two points. What is the voltage between them, in volts?")
  (answer 12) (from "3 / 0.25") (unit "V")
  (wrong-if 0.75 "That multiplies. Voltage is energy per coulomb: V = W / q.")
  (hint "V = W / q = 3 / 0.25."))
```

---

Charge in an electric field stores electric potential energy, and the
voltage between two points is that energy per coulomb, in volts:
$V = W / q$.
