# Electromagnets

```lesson
(objective "Explain how a coil with a current, and an iron core, make an electromagnet, and what makes it stronger.")
(standards "HS-PS2-5")
(minutes 25)
(keywords "solenoid" "electromagnet")
```

You can explain how a coil of wire becomes a magnet you can switch on
and off, and how to make it stronger.

Wind a wire into a long coil of many turns. This is a **solenoid**.
With a current in it, the fields of all the turns add up. Inside, the
field is strong and runs along the coil. Outside, it looks like the
field of a bar magnet: one end of the coil is an N pole and the other
an S pole.

To find the N end, curl the fingers of your right hand the way the
current goes around the turns: your thumb points to the N end.

```figure
(define k (choice 'dir '("Up" "Down") "Current on front"))
(define nl (= k 0))
(el-maglines 160 110 140 2 (not nl))
(rect 90 76 140 68 'paper)
(for-range 0 7
  (lambda (i)
    (let ((x (+ 90 (* 20 i))))
      (line (+ x 10) 76 (+ x 20) 144 'grey 1)
      (line x 144 (+ x 10) 76 'ink 2.5)
      (if (= i 3) (if nl (arrow (+ x 2) 126 (+ x 7) 96 'ink 1.5) (arrow (+ x 7) 96 (+ x 2) 126 'ink 1.5))))))
(for-range 0 3 (lambda (j) (if nl (arrow 200 (+ 95 (* 15 j)) 120 (+ 95 (* 15 j)) 'cool 1)
                              (arrow 120 (+ 95 (* 15 j)) 200 (+ 95 (* 15 j)) 'cool 1))))
(text 72 116 (if nl "N" "S") 'centre 'big 'bold)
(text 248 116 (if nl "S" "N") 'centre 'big 'bold)
(caption "Thick: the front of each turn. Inner arrows: field.")
```

```sources
(source "OpenStax, Physics (2020), chapter 20, Magnetism")
```

```check
(choice
  (ask "The current in a solenoid is reversed. What happens to its poles?")
  (right "They swap: the N end becomes the S end")
  (wrong "Nothing: the coil is the same"
    "The field comes from the current. Reverse the current and, by the right-hand rule, the field and the poles reverse too. Try it in the figure.")
  (wrong "The field disappears"
    "There is still a current, so there is still a field. It points the other way.")
  (hint "Curl your right hand's fingers the other way. Where does your thumb point now?"))
```

---

## An iron core

Put a rod of iron inside the solenoid, and the field becomes many times
stronger. The coil's field lines up countless tiny magnetic regions in
the iron, and their fields add to the coil's. A solenoid with an iron
core is an **electromagnet**.

Switch off the current, and a soft iron core loses most of its
magnetism: unlike a bar magnet, an electromagnet can be turned on and
off.

```check
(choice
  (ask "Why is an electromagnet useful for lifting scrap iron in a scrapyard?")
  (right "It can be switched off to drop the load")
  (wrong "It attracts every kind of metal, such as aluminum and copper"
    "An electromagnet, like any magnet, attracts iron and steel, not aluminum or copper. Its use is that it can be turned on and off.")
  (wrong "It needs no electric energy"
    "It needs a current all the time it holds the load. Its advantage is that switching off the current lets the load go.")
  (hint "What can an electromagnet do that a bar magnet cannot?"))
```

---

## Making it stronger

Three things make an electromagnet's field stronger:

- **more current** in the wire;
- **more turns** of wire on the same length of coil;
- **an iron core**.

The field of a long solenoid without a core grows in proportion to the
current times the number of turns per meter of its length.

```figure
(define n (slider 'n 5 40 10 "Turns" 5))
(define i (slider 'i 0.5 3 1 "Current (A)" 0.5))
(define w (* 2 n i))
(rect 60 80 w 30 'cool) (frame 60 80 240 30 'ink 1)
(text 60 70 "turns x current (coil 10 cm long)" 'small)
(text 160 150 (string-append (fmt n 0) " x " (fmt i 1) " = " (fmt (* n i) 0) " ampere-turns") 'centre 'body 'bold)
(caption "The field inside grows with turns x current.")
```

```check
(choice
  (ask "A coil has 20 turns and 1 A. Which change makes its field strongest?")
  (right "40 turns on the same length, still with 1 A")
  (wrong "20 turns with 1.5 A"
    "That gives 20 x 1.5 = 30. 40 turns at 1 A gives 40 x 1 = 40, a stronger field.")
  (wrong "20 turns with 1 A, on a coil twice as long"
    "Spreading the same turns over twice the length halves the turns per meter, so the field gets weaker.")
  (hint "Compare the turns times the current, per meter of coil."))
```

---

## Electromagnets at work

Electromagnets are in doorbells, electric locks, loudspeakers and the
switches called relays, which let a small current switch a large one.
Most hospital MRI scanners use very large electromagnets, with coils that
are cooled until their resistance vanishes.

```sources
(source "National Institute of Biomedical Imaging and Bioengineering (NIH), Magnetic Resonance Imaging (MRI)")
```

```check
(choice
  (ask "In a loudspeaker, a changing current flows in a coil near a permanent magnet. Why does the coil move?")
  (right "The current makes the coil an electromagnet, which the magnet pushes and pulls")
  (wrong "The current heats the coil and it expands"
    "The coil does warm a little, but it moves because its current makes a magnetic field, which the magnet pushes and pulls.")
  (wrong "Sound waves push the coil"
    "In a loudspeaker the coil makes the sound, not the other way round. Its magnetic field and the magnet push and pull it.")
  (hint "What does a current in a coil make?"))
```

---

## Practice

```check
(choice (several)
  (ask "Which changes make an electromagnet stronger? Choose every one.")
  (right "More current")
  (right "More turns on the same length")
  (right "An iron core")
  (wrong "A copper core"
    "Copper is not a magnetic material. Its tiny regions do not line up with the field, so it does not add to it.")
  (hint "Think of what adds to the field: the current, the turns, and the core's material."))
```

```check
(choice
  (ask "Looking at one end of a solenoid, you see the current go counterclockwise around the turns. Is that end N or S?")
  (right "N")
  (wrong "S"
    "Curl your right hand's fingers counterclockwise as you look at it: your thumb points toward you. The field comes out of this end, so it is N.")
  (hint "Curl your fingers counterclockwise. Does your thumb point toward you or away?"))
```

---

A solenoid with a current is a magnet with N and S ends; an iron core
makes it a strong electromagnet, made stronger still by more current
and more turns.
