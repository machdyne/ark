# Newton's first law

```lesson
(objective "Use Newton's first law: with no net force, an object keeps its velocity, at rest or moving.")
(standards "HS-PS2-1")
(minutes 25)
(keywords "Newton's first law" "inertia" "equilibrium (of forces)")
```

You can predict what an object does when the forces on it balance: it keeps doing what it was doing.

**Newton's first law**: an object at rest stays at rest, and a moving object keeps moving at the same speed in a straight line, unless a net force acts on it.

A force is not needed to keep something moving. A force is needed to change its velocity: to start it, stop it, speed it up, slow it down or turn it.

```sources
(source "Isaac Newton, Philosophiae Naturalis Principia Mathematica (1687), Axioms, or Laws of Motion: Law I")
```

```check
(choice
  (ask "A hockey puck slides across a perfectly smooth, level surface with no air. Nothing pushes it along. What does it do?")
  (right "It keeps sliding at the same speed in a straight line")
  (wrong "It slows down and stops, because nothing is pushing it"
    "With no net force, the velocity does not change. Real pucks stop because the ice and the air act on them; take those away and it never stops.")
  (wrong "It speeds up"
    "Speeding up is a change in velocity, which needs a net force. Here there is none.")
  (hint "Is there a net force to change its velocity?"))
```

---

## Watch it

The puck slides on a perfectly smooth, level surface. With the push off, the net force on it is 0. Turn on a steady push and watch what changes.

```figure
(define p (toggle 'p "Steady push to the right"))
(still
  (line 10 150 310 150 'ink 2)
  (caption "Real time, to scale: 1 m = 40 units; repeats"))
(define t (mc-mod (seconds) (if p 2.45 7)))
(define x (if p (+ 20 (* 40 (+ (* 1 t) (* 0.5 1.5 t t)))) (+ 20 (* 40 t))))
(rect (- x 14) 136 28 14 'ink)
(text 160 60 (if p "net force: to the right" "net force: 0") 'centre 'small 'bold)
(text 160 84 (string-append "v = " (fmt (if p (+ 1 (* 1.5 t)) 1) 1) " m/s") 'centre 'small)
```

```check
(choice
  (ask "With the push off, what is true of the puck's velocity?")
  (right "It stays at 1 m/s")
  (wrong "It falls toward 0"
    "Read the velocity: it stays 1 m/s. With no net force, nothing changes it.")
  (wrong "It grows"
    "It grows only when you turn on the push, which gives a net force.")
  (hint "Read v with the push off."))
```

---

## Inertia

**Inertia** is an object's tendency to keep its velocity: to stay at rest, or to keep moving. The more mass an object has, the more inertia it has, and the harder it is to change its velocity.

That is why you lurch forward when a car brakes suddenly. The car slows; your body keeps moving forward until the seat belt pulls on you.

```check
(choice
  (ask "Which has more inertia?")
  (right "A 1,500 kg car at rest")
  (wrong "A 0.06 kg tennis ball moving at 50 m/s"
    "Inertia depends on mass, not on speed. The car has far more mass, so its velocity is far harder to change.")
  (wrong "They have the same inertia"
    "Inertia grows with mass. 1,500 kg is much more than 0.06 kg.")
  (hint "Inertia depends on mass."))
```

---

## Equilibrium

An object is in **equilibrium** when the net force on it is 0. Then, by the first law, its velocity does not change. Equilibrium can mean at rest, like a book on a table, or moving at a steady velocity in a straight line, like a car at a steady 25 m/s on a straight, level road.

```figure
(mc-fbd 160 120 2 '((270 40 "down 40 N") (90 40 "up 40 N") (0 20 "push 20 N") (180 20 "back 20 N")))
(caption "A box pushed at a steady velocity: all forces balance")
```

```check
(choice
  (ask "A car drives at a steady 25 m/s along a straight, level road. What is the net force on it?")
  (right "Zero: it is in equilibrium")
  (wrong "Forward, to keep it moving"
    "A net force would change the car's velocity. At a steady velocity, the forward and backward forces balance.")
  (wrong "It cannot be known without the car's mass"
    "A steady velocity in a straight line means no acceleration, so the net force is 0 whatever the mass.")
  (hint "Is its velocity changing?"))
```

---

## A worked example

```example
(example
  (problem "A crate slides across a floor at a steady 2 m/s while a worker pushes it with 150 N. How large is the backward force from the floor?")
  (step "Steady velocity in a straight line: the crate is in equilibrium.")
  (step "So the net force is 0: the forces along the floor balance.")
  (step "The backward force must equal the push.")
  (answer "150 N backward"))
```

Now you finish one.

```check
(number
  (ask "A parachutist falls at a steady 5 m/s. Earth pulls her down with 700 N. How large is the upward force from the air and the parachute?")
  (answer 700) (unit "N") (from "700")
  (wrong-if 0 "She is not at rest, but her velocity is steady. That is equilibrium, so the upward force balances gravity.")
  (wrong-if 1400 "The forces balance, so the upward force equals the 700 N downward pull, not double it.")
  (hint "A steady velocity means a net force of 0."))
```

---

## Practice

```check
(choice
  (ask "A book lies at rest on a table. Which is true?")
  (right "The forces on it balance: it is in equilibrium")
  (wrong "No forces act on it"
    "Gravity pulls the book down and the table pushes it up. They balance, so the net force is 0.")
  (wrong "Gravity is larger than the table's push, but the table holds it"
    "If gravity were larger, the net force would point down and the book would speed up downward.")
  (hint "Is the book's velocity changing?"))
```

```check
(choice
  (ask "A space probe far from any star or planet has its engines off. It moves at 15 km/s. What happens next?")
  (right "It keeps moving at 15 km/s in a straight line")
  (wrong "It slowly stops, because its engines are off"
    "Engines are needed to change velocity, not to keep it. With almost no forces on it, the probe keeps its velocity.")
  (wrong "It drifts toward the nearest planet at once"
    "Far from any star or planet, the pulls of gravity on it are tiny. Its velocity stays almost exactly the same.")
  (hint "Is there a net force on it?"))
```

```check
(choice
  (ask "You stand in a bus that starts forward suddenly. You fall backward relative to the bus. Why?")
  (right "Your body tends to stay at rest while the bus speeds up under you")
  (wrong "The bus pushes you backward"
    "Nothing pushes you backward. Your inertia keeps you where you were while the floor moves forward, so you seem to fall back.")
  (wrong "Gravity pulls you backward"
    "Gravity pulls down, not back. This is inertia: your body resists the change in velocity.")
  (hint "What does inertia tend to do?"))
```

---

So by Newton's first law, an object in equilibrium, with no net force, keeps its velocity, at rest or moving, and its inertia resists any change.
