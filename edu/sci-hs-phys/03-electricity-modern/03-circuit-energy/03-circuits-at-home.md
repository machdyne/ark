# Circuits at home

```lesson
(objective "Explain why a home's outlets are wired in parallel, and how fuses, circuit breakers and grounding protect people.")
(standards "HS-PS3-3")
(minutes 25)
(keywords "fuse" "circuit breaker")
```

You can explain how the wiring in a home is arranged, and what keeps it
from overheating or giving someone a shock.

This lesson describes how home wiring works, so you understand it. It
does not teach wiring or repairs.

```warn
(warn "Home wiring is for electricians" "Never open an outlet, a switch, a light fitting or the home's electrical panel, and never try to repair wiring, a plug or a damaged cord. Never touch a plug, cord or device with wet hands. The outlets supply about 120 volts in the US and Canada (about 230 volts in much of the world), enough to kill. Any work on home wiring is for a licensed electrician.")
```

```sources
(source "US Occupational Safety and Health Administration, Controlling Electrical Hazards (OSHA 3075)")
```

```check
(choice
  (ask "A wall outlet stops working. What is the safe thing to do?")
  (right "Leave it alone and have an adult call a licensed electrician")
  (wrong "Unscrew its cover and look at the wires"
    "Behind the cover the wires may be live, at about 120 or 230 volts. Opening it risks a deadly shock. That is work for an electrician.")
  (wrong "Push a metal tool into it to test it"
    "Metal in an outlet makes your body part of the circuit. Never put anything but a plug into an outlet.")
  (hint "Which choice keeps your body out of the circuit?"))
```

---

## Outlets in parallel

The outlets supply about 120 volts in the US and Canada. Each outlet
and each light is on its own branch, in parallel. So every device gets
the full voltage, and each can be switched on or off without affecting
the others.

Each device takes its own current, $I = P / V$, and the wires feeding a
group of outlets carry all those currents added together.

```check
(number
  (ask "A 1,200 W heater and a 1,500 W hair dryer run on the same 120 V home circuit. What total current do they draw, in amperes?")
  (answer 22.5) (within 0.05) (from "1200 / 120 + 1500 / 120") (unit "A")
  (wrong-if 10 "That is the heater alone, 1,200 / 120. The dryer adds 1,500 / 120 = 12.5 A, since currents in parallel add.")
  (hint "Find each current with I = P / V, then add them."))
```

---

## Fuses

A current in a wire heats it ($P = I^2 R$). Too much current can make
the wires in a wall hot enough to start a fire. So every home circuit
is protected.

A **fuse** is a short, thin wire in series with the circuit. If the
current goes above the fuse's rating, the thin wire heats up and melts.
That opens the circuit and the current stops. A blown fuse in a home's
fuse box is replaced only with one of the same rating, after the fault
is found: work for a licensed electrician.

```sources
(source "OpenStax, College Physics (2012), section 20.6, Electric Hazards and the Human Body")
```

```check
(choice
  (ask "Why must a blown fuse never be replaced by one with a higher rating?")
  (right "The wires could then carry more current than is safe without the fuse melting")
  (wrong "A higher rating makes the devices use more power"
    "Each device takes its own current, I = P / V, whatever the fuse. The danger is that a bigger fuse lets the wires overheat.")
  (wrong "It would melt too soon"
    "A higher rating melts later, not sooner. That is the danger: the wires can overheat first.")
  (hint "The fuse protects the wires. When would a bigger one melt?"))
```

---

## Circuit breakers

Newer homes usually have circuit breakers instead of fuses. A
**circuit breaker** is a switch that opens by itself when the current is too
large. Once the fault is found and fixed, it can be switched back on.
A breaker that opens again and again means a fault in the wiring or a
device: a job for a licensed electrician.

Switch devices on in this simulated home circuit. Its breaker opens
above 15 A.

```figure
(define a (toggle 'a "Lamp" #t))
(define b (toggle 'b "TV" #f))
(define c (toggle 'c "Heater" #f))
(define d (toggle 'd "Dryer" #f))
(define amps (/ (+ (if a 60 0) (if b 120 0) (if c 1200 0) (if d 1500 0)) 120))
(define trip (> amps 15))
(path '(30 95 30 40 60 40) 'ink 1.5) (path '(110 40 290 40) 'ink 1.5) (path '(30 135 30 180 290 180) 'ink 1.5)
(frame 10 95 40 40 'ink 1.5) (text 30 113 "120 V" 'centre 'tiny) (text 30 126 "supply" 'centre 'tiny)
(frame 60 30 50 20 'ink 1.5) (text 85 44 "15 A" 'centre 'tiny)
(text 85 22 "breaker" 'centre 'tiny)
(for-each
  (lambda (it)
    (let ((x (car it)) (on (cadr it)))
      (dot x 40) (dot x 180)
      (path (list x 40 x 70) 'ink 1.5)
      (el-switch x 70 x 90 on)
      (path (list x 90 x 108) 'ink 1.5) (path (list x 132 x 180) 'ink 1.5)
      (el-lamp x 120 (if (and on (not trip)) 0.6 0))
      (text x 194 (caddr it) 'centre 'tiny)))
  (list (list 140 a "60 W") (list 185 b "120 W") (list 230 c "1200 W") (list 275 d "1500 W")))
(text 160 214 (if trip "breaker open: everything off" (string-append "current: " (fmt amps 1) " A")) 'centre 'small 'bold)
(caption "Each device drawn as a lamp symbol.")
```

```check
(choice
  (ask "In the figure, the lamp and TV are on, and then the heater and the dryer. What happens, and why?")
  (right "The breaker opens: the currents add up to more than 15 A")
  (wrong "Only the dryer goes off, since it was last"
    "The breaker is in series with the whole branch. When it opens, the current stops in every device on it.")
  (wrong "Nothing: each device has its own branch"
    "Each device has its own branch, but all the branches draw their current through the same breaker and wires. 0.5 + 1 + 10 + 12.5 = 24 A.")
  (hint "Add the currents: I = P / V for each device."))
```

---

## Grounding and shocks

Many plugs have a third pin, the ground pin. It joins the metal case
of the device to ground through the home's wiring. If a loose wire inside
touches the case, a large current flows through the grounding wire,
not through a person, and the breaker or fuse opens.

A **ground-fault circuit interrupter** (GFCI; in many countries a
residual-current device, RCD), used where water is near, checks that the current going out to a device equals the current coming
back. If a little goes missing, perhaps through a person, it opens the
circuit in a fraction of a second.

```sources
(source "US Consumer Product Safety Commission, GFCI Fact Sheet (publication 099)")
```

```check
(choice
  (ask "A washing machine's metal case is grounded, and a loose live wire touches it inside. What happens?")
  (right "A large current flows to ground through the grounding wire, and the breaker opens")
  (wrong "The case stays charged until someone touches it"
    "The grounding wire gives the charge a path of very low resistance to ground. The current is so large that the breaker opens at once.")
  (wrong "Nothing, since the case is metal"
    "Metal is a conductor, which is the danger. The grounding wire is what makes it safe.")
  (hint "What does a grounding wire give the current?"))
```

---

## Practice

```check
(number
  (ask "A home circuit runs at 120 V with a 15 A breaker. What is the most power its devices can draw together without opening the breaker, in watts?")
  (answer 1800) (from "120 * 15") (unit "W")
  (wrong-if 8 "That divides. P = I V = 15 x 120.")
  (hint "P = I V."))
```

```check
(choice
  (ask "Why are the lights and outlets in a home wired in parallel, not in series?")
  (right "Each gets the full voltage and works whether the others are on or off")
  (wrong "Parallel wiring uses less current in all"
    "Each branch adds its own current, so the total grows with every device. Parallel is used so each device gets the full voltage on its own branch.")
  (wrong "Series wiring would be more dangerous to touch"
    "In series, switching off one device would switch off all, and they would share the voltage. That is the reason, not safety to touch.")
  (hint "Think of what would happen in series when one lamp is switched off."))
```

```check
(choice
  (ask "What does a fuse do when the current is too large?")
  (right "Its thin wire melts and opens the circuit")
  (wrong "It stores the extra charge"
    "A fuse does not store charge. It is a thin wire that melts, leaving a gap, so no current flows.")
  (wrong "It sends the extra current to ground"
    "That is the grounding wire's job. A fuse melts and opens the circuit.")
  (hint "A fuse is a thin wire in series."))
```

---

Home outlets are wired in parallel; fuses and circuit breakers open a
circuit that carries too much current, and grounding gives a fault
current a safe path.
