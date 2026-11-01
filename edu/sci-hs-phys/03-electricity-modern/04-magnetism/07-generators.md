# Generators

```lesson
(objective "Explain how a generator turns motion into alternating current, and tell alternating from direct current.")
(standards "HS-PS2-5" "HS-PS3-3")
(minutes 25)
(keywords "generator" "alternating current" "direct current")
```

You can explain how a spinning coil makes electricity, and why the
current from a wall outlet keeps changing direction.

A **generator** turns kinetic energy into electric energy by
electromagnetic induction. A coil is turned in a magnetic field. As it
turns, the field through it changes all the time, so a voltage is
induced in it. The figure shows the coil end on, and a graph of the
voltage it makes.

```figure
(still
  (rect 4 85 22 50 'grey) (frame 4 85 22 50 'ink 1) (circle 15 110 9 'paper) (text 15 116 "N" 'centre 'body 'bold)
  (rect 134 85 22 50 'grey) (frame 134 85 22 50 'ink 1) (circle 145 110 9 'paper) (text 145 116 "S" 'centre 'body 'bold)
  (ring 80 110 42 'grey 1)
  (line 170 110 314 110 'ink 1) (line 170 50 170 170 'ink 1)
  (text 176 46 "voltage" 'small) (text 312 126 "time" 'small 'right)
  (path (let loop ((i 40) (pts '()))
          (if (< i 0) pts
              (loop (- i 1) (cons (+ 170 (* 3.5 i)) (cons (- 110 (* 50 (cos (* 2 pi (/ i 20))))) pts)))))
        'ink 1.5))
(define t (seconds))
(define a (* 2 pi 0.25 t))
(define cx (* 38 (cos a)))
(define cy (* 38 (sin a)))
(line (+ 80 cx) (- 110 cy) (- 80 cx) (+ 110 cy) 'ink 2)
(circle (+ 80 cx) (- 110 cy) 6 'paper) (ring (+ 80 cx) (- 110 cy) 6 'ink 1.5)
(circle (- 80 cx) (+ 110 cy) 6 'warm) (ring (- 80 cx) (+ 110 cy) 6 'ink 1.5)
(define u (- (* 0.125 t) (floor (* 0.125 t))))
(define gx (+ 170 (* 140 u)))
(define gy (- 110 (* 50 (cos a))))
(line gx 110 gx gy 'ink 1)
(dot gx gy)
(caption "One turn every 4 s: slowed down a great deal.")
```

```sources
(source "OpenStax, Physics (2020), chapter 20, Magnetism")
(source "US Energy Information Administration, Electricity Explained: How Electricity Is Generated")
```

```check
(choice
  (ask "Why does a turning coil in a magnetic field make a voltage, even though the magnet never moves?")
  (right "As the coil turns, the field through it keeps changing")
  (wrong "The coil gets charged by rubbing as it turns"
    "Friction is not the cause. Induction needs a changing field through the coil, and turning the coil changes it.")
  (wrong "A magnet always makes a current in a nearby coil"
    "A coil held still beside a magnet has no induced current. Only a change in the field through it induces one.")
  (hint "What does induction need?"))
```

---

## Alternating and direct current

Each half turn, the sides of the coil swap places, so the induced
voltage reverses. A current that keeps reversing its direction is an
**alternating current** (AC). The voltage of a simple generator rises
and falls smoothly, like the sine curve in the graph.

A current that flows one way only, like the current from a battery or
a solar panel, is a **direct current** (DC).

```check
(choice
  (ask "Which is a source of direct current?")
  (right "A flashlight battery")
  (wrong "A simple generator turning at a steady speed"
    "As it turns, its voltage reverses every half turn. That makes alternating current.")
  (wrong "A wall outlet"
    "Wall outlets are fed by generators in power plants. Their current reverses many times a second: alternating current.")
  (hint "Which source keeps its + and - ends the same?"))
```

---

## Sixty times a second

The generators that feed homes turn steadily, so the current reverses
at a steady rate. In the US and Canada it goes through 60 full cycles
each second, 60 Hz; in much of the rest of the world, 50 Hz. Each cycle
has 2 reversals.

```sources
(source "OpenStax, College Physics (2012), section 20.5, Alternating Current versus Direct Current")
```

```check
(number
  (ask "How many times each second does the current from a 60 Hz outlet reverse its direction?")
  (answer 120) (from "60 * 2")
  (wrong-if 60 "60 Hz is 60 full cycles a second. In each cycle the current reverses twice: once each way.")
  (wrong-if 30 "Each cycle has 2 reversals, so there are more reversals than cycles, not fewer.")
  (hint "Follow the graph through one cycle. How many times does it cross the time axis?"))
```

---

## Bigger voltages

A generator gives a bigger voltage when its coil turns faster, when its
magnet is stronger, and when its coil has more turns. Turning it
faster also makes the voltage alternate more often.

```check
(choice
  (ask "A bicycle's wheel generator runs a lamp. Why does the lamp glow brighter when you ride faster?")
  (right "The coil turns faster, so the field through it changes faster and the induced voltage is bigger")
  (wrong "The battery inside is charged faster"
    "A simple bicycle generator has no battery. The faster turn changes the field faster, inducing a bigger voltage.")
  (wrong "Faster riding makes the magnet stronger"
    "The magnet is the same. What changes is how fast the field through the coil changes.")
  (hint "Induction depends on how fast the field changes."))
```

---

## Power plants

Almost all the electricity in a power grid comes from huge generators.
Something must turn them: steam from water boiled by burning fuel or by
a nuclear reactor, falling water in a dam, or wind. Solar panels are
the main exception: they make direct current without turning anything.

```check
(choice
  (ask "In a hydroelectric dam, which energy change happens in the generator?")
  (right "Kinetic energy of the turning shaft to electric energy")
  (wrong "Electric energy to kinetic energy"
    "That is what a motor does. A generator is turned by the falling water and gives out electric energy.")
  (wrong "Gravitational potential energy straight to electric energy"
    "The falling water's potential energy first becomes kinetic energy, which turns the turbine and the generator's shaft.")
  (hint "What turns the generator, and what comes out of it?"))
```

---

## Practice

```check
(choice
  (ask "How is a generator like a motor?")
  (right "Both have a coil that turns in a magnetic field; they convert energy in opposite directions")
  (wrong "Both turn electric energy into motion"
    "Only the motor does. A generator turns motion into electric energy.")
  (wrong "They have nothing in common"
    "They are built alike: a coil in a magnetic field. A motor uses a current to turn; a generator is turned to make a current.")
  (hint "Think of what goes in and what comes out of each."))
```

```check
(number
  (ask "A generator's coil turns 50 times a second. What is the frequency of its alternating current, in hertz?")
  (answer 50) (from "50") (unit "Hz")
  (wrong-if 100 "100 is the number of reversals. The frequency counts full cycles, and each turn of the coil makes 1 cycle.")
  (hint "Each turn of the coil makes one full cycle of the voltage."))
```

---

A generator turns motion into electric energy by turning a coil in a
magnetic field; its voltage reverses every half turn, giving
alternating current, while a battery gives direct current.
