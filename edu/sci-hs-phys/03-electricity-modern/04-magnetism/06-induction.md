# Electromagnetic induction

```lesson
(objective "Show that a changing magnetic field through a coil makes a current, and predict its direction from how the field changes.")
(standards "HS-PS2-5")
(minutes 25)
(keywords "electromagnetic induction" "induced current")
```

You can show that a moving magnet makes a current in a coil, and
predict which way that current flows.

In 1831 Michael Faraday found that a magnet moved into a coil of wire
makes a current in it, but only while the magnet moves. A magnetic
field that changes through a coil makes a voltage in it. This is
**electromagnetic induction**. If the coil is part of a closed circuit,
a current flows: an **induced current**.

Start the magnet moving, and watch the meter.

```figure
(define mv (toggle 'mv "Magnet moving" #t))
(define sp (slider 'sp 0.5 2 1 "Speed" 0.5))
(still
  (el-coil 180 100 80 60 6)
  (path '(180 130 180 200 205 200) 'ink 1) (path '(260 130 260 200 235 200) 'ink 1)
  (circle 220 200 16 'paper) (ring 220 200 16 'ink 1.5))
(define w (* 2 pi 0.25 sp))
(define t (seconds))
(define xm (if mv (+ 110 (* 35 (sin (* w t)))) 140))
(define v (if mv (* 35 w (cos (* w t))) 0))
(define u (/ (- 220 (+ xm 40)) 40))
(define emf (* 40 (/ (* 2 u) (* 40 (+ 1 (* u u)) (+ 1 (* u u)))) v))
(define ang (deg->rad (clamp emf -75 75)))
(el-magnet xm 100 80 #t)
(line 220 200 (+ 220 (* 13 (sin ang))) (- 200 (* 13 (cos ang))) 'ink 2)
(caption "The meter's needle shows the induced current.")
```

```sources
(source "M. Faraday, Experimental Researches in Electricity, First Series, Philosophical Transactions of the Royal Society 122 (1832)")
(source "OpenStax, Physics (2020), chapter 20, Magnetism")
```

```check
(choice
  (ask "The magnet is pushed into the coil and then held still inside it. What does the meter show while it is still?")
  (right "No current")
  (wrong "A steady current, since the magnet's field is inside the coil"
    "A field that stays the same makes no current. Only a changing field through the coil induces one.")
  (wrong "The biggest current, since the field is strongest there"
    "The field is strong, but it is not changing. Induction needs change.")
  (hint "Turn off \"Magnet moving\" in the figure."))
```

---

## Which way?

Watch the needle: it swings one way as the magnet goes in, and the
other way as it comes out. Reverse the change, and the induced current
reverses. Turning the magnet around, S end first, reverses it too.

The direction follows a rule found by Heinrich Lenz: the induced current
makes a magnetic field that **opposes the change**. As an N pole comes
toward the coil, the near end of the coil becomes an N pole and pushes
back. As the N pole leaves, that end becomes an S pole and pulls it back.

```sources
(source "OpenStax, College Physics (2012), section 23.2, Faraday's Law of Induction: Lenz's Law")
```

```check
(choice
  (ask "An N pole is pulled away from the end of a coil. What pole does the induced current make at that end?")
  (right "An S pole, which pulls on the leaving N pole")
  (wrong "An N pole, which pushes it away"
    "The induced current opposes the change. The change is the N pole leaving, so the coil pulls it back: an S pole.")
  (wrong "No pole: a coil cannot become a magnet"
    "A coil with a current is a magnet, a solenoid. The induced current makes one, with poles that oppose the change.")
  (hint "The induced field opposes the change. What would oppose the magnet leaving?"))
```

---

## Bigger currents

The faster the field through the coil changes, the bigger the induced
voltage. So the induced current is bigger with:

- a faster-moving magnet;
- a stronger magnet;
- more turns on the coil, since each turn adds its own voltage.

Try a faster speed in the figure.

```check
(choice
  (ask "The magnet moves in and out of the coil twice as fast. What happens to the biggest swing of the needle?")
  (right "It gets bigger")
  (wrong "It stays the same, since the magnet is the same"
    "The magnet is the same, but its field through the coil changes faster. A faster change induces a bigger voltage.")
  (wrong "It gets smaller, since there is less time"
    "Less time for the same change means a faster change, and a bigger induced voltage.")
  (hint "Induction depends on how fast the field changes."))
```

---

## Induction at work

Induction is everywhere: a wireless phone charger uses a changing field
in one coil to induce a current in a coil in the phone. Induction
cooktops induce currents that heat the metal pan. Microphones, card
readers and, as the next lessons show, power plants use it too.

```check
(choice
  (ask "A wireless charger's coil carries a current that keeps changing. Why must it change?")
  (right "Only a changing field induces a current in the phone's coil")
  (wrong "A changing current is safer"
    "Safety is not the reason. A steady current would make a steady field, and a steady field induces nothing.")
  (wrong "It does not have to: a steady current would work as well"
    "A steady current makes a steady field, which induces no current in the phone's coil.")
  (hint "What does induction need?"))
```

---

## Practice

```check
(choice
  (ask "A coil sits in a strong, steady magnetic field, not moving. Is there an induced current?")
  (right "No: the field through the coil is not changing")
  (wrong "Yes: there is a strong field through it"
    "Strength alone does nothing. Only a change in the field through the coil induces a current.")
  (hint "What must happen to the field?"))
```

```check
(choice
  (ask "A magnet's S pole is pushed into a coil. Compared with pushing in an N pole, the induced current:")
  (right "flows the other way")
  (wrong "flows the same way"
    "The change is the opposite: an S pole coming in instead of an N pole. So the induced current reverses.")
  (wrong "does not flow"
    "Any changing field induces a current. An S pole coming in changes the field just as an N pole does, the other way.")
  (hint "Opposite pole, opposite change."))
```

```check
(choice
  (ask "Which change makes the biggest induced current?")
  (right "A stronger magnet moved faster into a coil of more turns")
  (wrong "A stronger magnet held still in a coil of more turns"
    "Held still, the field does not change, so nothing is induced, however strong the magnet.")
  (wrong "A weaker magnet moved slowly into a coil of fewer turns"
    "Each of those makes the induced voltage smaller.")
  (hint "Strong, fast, many turns."))
```

---

A changing magnetic field through a coil induces a current, bigger for
faster changes, stronger magnets and more turns, and in the direction
that opposes the change.
