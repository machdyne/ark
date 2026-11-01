# Circuits

```lesson
(objective "Explain why a lamp lights only in a closed circuit, and read and draw circuit diagrams.")
(standards "HS-PS3-3")
(minutes 25)
(keywords "circuit" "circuit diagram" "closed circuit" "open circuit" "short circuit")
```

You can tell whether a lamp will light, and read the drawings that
show how parts are joined.

A **circuit** is a complete loop of conductors that charge can flow
around: out of one end of a battery, through wires and other parts, and
back into the other end. The battery gives energy to the charge; a lamp
turns that energy into light and thermal energy.

Open and close the switch.

```figure
(define on (toggle 'sw "Switch closed" #f))
(path '(60 60 130 60) 'ink 1.5)
(el-switch 130 60 180 60 on)
(path '(180 60 260 60 260 98) 'ink 1.5)
(path '(260 122 260 160 60 160) 'ink 1.5)
(el-cell 60 60 160 "battery")
(el-lamp 260 110 (if on 1 0))
(if on (begin (arrow 200 50 240 50 'ink 1.5) (arrow 140 170 100 170 'ink 1.5)
              (text 220 42 "current" 'small 'centre)))
(label 160 205 (if on "a closed loop: the lamp is lit" "a gap: no current, the lamp is dark") 'small 'bold)
```

```sources
(source "OpenStax, Physics (2020), chapter 19, Electrical Circuits")
```

```check
(choice
  (ask "Why is the lamp dark while the switch is open?")
  (right "There is a gap in the loop, so no charge can flow anywhere in it")
  (wrong "The battery is used up while the switch is open"
    "Close the switch and the lamp lights at once, so the battery still has energy. The gap stops the flow.")
  (wrong "Charge flows to the switch and stops there, so only the lamp misses out"
    "With a gap anywhere, charge cannot go round the loop, so it does not flow anywhere in it, not even up to the switch.")
  (hint "Charge needs a complete path from one end of the battery to the other."))
```

---

## Closed and open

A complete loop is a **closed circuit**: current flows all the way
around it. A loop with a gap is an **open circuit**: no current flows
anywhere in it. A switch opens and closes a circuit; so does a broken
wire or a lamp whose thin wire inside has burned through.

```check
(choice
  (ask "The thin wire inside a lamp breaks. What happens to the current in the rest of its loop?")
  (right "It stops everywhere in the loop")
  (wrong "It still flows in the wires, but not in the lamp"
    "The broken lamp makes a gap in the only path. With an open circuit, no current flows anywhere in the loop.")
  (wrong "It flows faster, since the lamp no longer slows it"
    "A gap does not speed the current up. It leaves no path, so the current stops.")
  (hint "Is the loop still complete?"))
```

---

## Circuit diagrams

A **circuit diagram** shows how the parts of a circuit are joined, with
a symbol for each part and straight lines for wires. Where the parts
sit on the page does not matter, only what is joined to what.

```figure
(el-cell 50 25 95 "")
(text 80 65 "battery" 'small)
(el-lamp 60 155 0)
(path '(30 155 48 155) 'ink 1.5) (path '(72 155 90 155) 'ink 1.5)
(text 100 160 "lamp" 'small)
(line 190 40 280 40 'ink 1.5)
(text 235 30 "wire" 'small 'centre)
(dot 235 95) (line 190 95 280 95 'ink 1.5) (line 235 95 235 120 'ink 1.5)
(text 235 85 "joined wires" 'small 'centre)
(el-switch 205 170 255 170 #f)
(text 230 200 "switch (open)" 'small 'centre)
(caption "Symbols in a circuit diagram.")
```

```check
(choice
  (ask "In a battery's symbol, which plate is the + end?")
  (right "The long, thin plate")
  (wrong "The short, thick plate"
    "The short, thick plate is the - end. The long plate is +.")
  (wrong "Either: it does not matter"
    "It matters for which way the current flows. The long plate is the + end.")
  (hint "Look at the + sign beside the symbol."))
```

---

## Will it light?

Choose an arrangement. A lamp lights only if there is a closed loop
from one end of the battery, through the lamp, to the other end.

```figure
(define k (choice 'arr '("A" "B" "C" "D") "Arrangement"))
(el-cell 70 60 160 "")
(path '(208 110 196 110) 'ink 1.5) (path '(232 110 244 110) 'ink 1.5)
(path '(70 60 196 60 196 110) 'ink 1.5)
(cond ((= k 0) (path '(70 160 244 160 244 110) 'ink 1.5))
      ((= k 1) (path '(70 60 70 36 244 36 244 110) 'ink 1.5))
      ((= k 3) (path '(70 160 130 160) 'ink 1.5) (el-switch 130 160 170 160 #f)
               (path '(170 160 244 160 244 110) 'ink 1.5)))
(el-lamp 220 110 (if (= k 0) 1 0))
(label 160 205 (list-ref '("A: lamp to + and to -" "B: both lamp wires to +"
                           "C: one wire only" "D: switch open") k) 'small 'bold)
```

```check
(choice
  (ask "In arrangement B, both wires of the lamp go to the + end of the battery. Why does it stay dark?")
  (right "There is no path from the + end through the lamp to the - end")
  (wrong "Two wires to + give too much charge"
    "The lamp needs charge to flow through it and on to the - end. Both its wires lead back to +, so there is no loop through it.")
  (wrong "It should light: it has two wires"
    "Two wires are not enough; they must make a loop from + to -. Here both go to +.")
  (hint "Follow a path from + through the lamp. Does it reach the - end?"))
```

---

## Short circuits

A **short circuit** is a path of plain wire that lets current go
straight from one end of the battery to the other, past the parts meant
to use it. With almost nothing to hold it back, the current becomes very
large. The wire and the battery get hot, and the lamp the wire goes
around goes dark.

```figure
(define sh (toggle 'short "Short wire" #f))
(path '(60 60 260 60 260 98) 'ink 1.5)
(path '(260 122 260 160 60 160) 'ink 1.5)
(el-cell 60 60 160 "battery")
(el-lamp 260 110 (if sh 0 1))
(if sh (begin (dot 210 60) (dot 210 160) (line 210 60 210 160 'ink 2)
              (arrow 200 85 200 135 'ink 3)
              (text 160 205 "a very large current" 'centre 'small 'bold)
              (text 160 222 "lamp dark; wire and battery get hot" 'centre 'small)))
```

```warn
(warn "Short circuits start fires" "Never join the two ends of a battery with a wire, a coin or a key, even for a moment. The current can make the wire and the battery hot enough to burn you, and a damaged or shorted lithium battery can catch fire. Try short circuits only in the simulation.")
```

```check
(choice
  (ask "A wire is joined across the lamp, from one side of it to the other. Why does the lamp go dark?")
  (right "Almost all the current takes the easy path through the wire instead of the lamp")
  (wrong "The battery stops working"
    "The battery works harder than ever: the current is very large. It flows through the wire, not the lamp.")
  (wrong "The extra wire makes an open circuit"
    "The loop is still closed: through the short wire. It is so easy a path that the lamp is bypassed.")
  (hint "Charge can go through the lamp or through the plain wire. Which is easier?"))
```

---

## Practice

```check
(choice
  (ask "A flashlight has a battery, a lamp and a switch in one loop. Which change makes the lamp light?")
  (right "Closing the switch")
  (wrong "Adding a second wire from the lamp to the + end"
    "That joins the lamp to + twice. It needs a path back to the - end, and the switch is still open.")
  (wrong "Turning the battery around"
    "Reversing the battery reverses the current, but the open switch still leaves a gap.")
  (hint "What does the loop need to be complete?"))
```

```check
(choice
  (ask "Two circuit diagrams join the same parts in the same way, but one is drawn as a square and the other as a long rectangle. Do they work the same?")
  (right "Yes: only what is joined to what matters")
  (wrong "No: the square one carries more current"
    "A circuit diagram shows connections, not shapes or lengths. The same connections make the same circuit.")
  (hint "What does a circuit diagram show?"))
```

---

A lamp lights only in a closed circuit, a loop from one end of the
battery through the lamp to the other; a gap opens it, and a short
circuit bypasses it.
