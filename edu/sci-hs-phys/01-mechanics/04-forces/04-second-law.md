# Newton's second law

```lesson
(objective "Use F = ma to find a net force, a mass or an acceleration, and find the law in a table of data.")
(standards "HS-PS2-1" "HSA-CED.A.4")
(minutes 30)
(keywords "Newton's second law")
```

You can predict exactly how much an object speeds up from the net force on it and its mass.

**Newton's second law**: the acceleration of an object is the net force on it divided by its mass, and it points in the direction of the net force.

$$ a = F_(net) / m $$

or, as it is often written,

$$ F_(net) = m a $$

A bigger net force gives a bigger acceleration; a bigger mass gives a smaller one. Move the sliders: the cart starts from rest each time.

```figure
(define F (slider 'F 1 20 10 "Net force (N)" 1))
(define m (slider 'm 1 10 2 "Mass (kg)" 0.5))
(define a (/ F m))
(define T (sqrt (/ 14 a)))
(still
  (line 10 150 310 150 'ink 2)
  (for-range 0 9 (lambda (k) (line (+ 20 (* 35 k)) 150 (+ 20 (* 35 k)) 156 'ink 1)))
  (text 160 40 (string-append "a = " (fmt F 0) " N / " (fmt m 1) " kg = " (fmt a 2) " m/s²") 'centre 'small 'bold)
  (caption "Real time; a mark every meter; smooth level track"))
(define t (min T (mc-mod (seconds) (+ T 1))))
(mc-cart (+ 38 (* 35 0.5 a t t)) 150 'cool)
```

```sources
(source "Isaac Newton, Philosophiae Naturalis Principia Mathematica (1687), Axioms, or Laws of Motion: Law II")
(source "OpenStax, Physics (high school), 2020, chapter 4.3: Newton's second law of motion")
```

```check
(number
  (ask "A net force of 12 N acts on a 3 kg cart. What is its acceleration?")
  (answer 4) (unit "m/s²") (from "12 / 3")
  (wrong-if 36 "That multiplies force and mass, which gives nothing useful here. The acceleration is the force divided by the mass.")
  (wrong-if 0.25 "That is mass over force. a = F / m: the force goes on top.")
  (hint "a = F_net / m."))
```

---

## Finding a force or a mass

Rearrange $F_(net) = m a$ for whatever is missing:

- the net force: $F_(net) = m a$;
- the mass: $m = F_(net) / a$.

A 1,200 kg car speeding up at 2.5 m/s² needs a net force of 1,200 x 2.5 = 3,000 N.

```check
(number
  (ask "What net force gives a 0.15 kg ball an acceleration of 40 m/s²?")
  (answer 6) (unit "N") (from "0.15 * 40")
  (wrong-if 266.7 "That divides the acceleration by the mass. F_net = m a: multiply.")
  (hint "F_net = m a."))
```

```check
(number
  (ask "A net force of 50 N gives a crate an acceleration of 2 m/s². What is the crate's mass?")
  (answer 25) (unit "kg") (from "50 / 2")
  (wrong-if 100 "That multiplies. m = F_net / a.")
  (hint "m = F_net / a."))
```

---

## Finding the law in data

In a simulated experiment, carts are pulled by different net forces and their accelerations measured. The measurements scatter a little, as real ones do.

| Net force (N) | Acceleration (m/s²) |
|---|---|
| 2 | 1.0 |
| 4 | 2.1 |
| 6 | 2.9 |
| 8 | 4.0 |
| 10 | 5.1 |

```figure
(graph 50 20 250 170 0 12 0 6)
(graph-axes 2 1 "F (N)" "a (m/s²)")
(plot (lambda (f) (/ f 2)) 'cool 1.5)
(plot-point 2 1.0 'warm)
(plot-point 4 2.1 'warm)
(plot-point 6 2.9 'warm)
(plot-point 8 4.0 'warm)
(plot-point 10 5.1 'warm)
(caption "The points lie close to a straight line through 0")
```

The points lie close to a straight line through the origin: the acceleration is proportional to the net force. The slope is $a / F = 1/m$.

```check
(number
  (ask "The best line has a slope of 0.5 (m/s²) per newton. What is the cart's mass?")
  (answer 2) (unit "kg") (from "1 / 0.5")
  (wrong-if 0.5 "The slope is a / F, which is 1 / m. So m = 1 / 0.5.")
  (hint "Slope = 1 / m.")
  (hint "m = 1 / slope."))
```

---

## Direction

The acceleration always points the same way as the net force, whatever way the object is moving. A cart rolling right with a net force to the left slows down.

```check
(choice
  (ask "A ball rolls east. A net force of 2 N acts on it toward the west. Which way is its acceleration?")
  (right "West: the ball slows down")
  (wrong "East, the way it moves"
    "The acceleration points with the net force, not with the velocity. A westward acceleration on an eastward ball slows it.")
  (wrong "There is no acceleration, because it still moves east"
    "Any net force gives an acceleration. Here it slows the ball, and later may turn it around.")
  (hint "The acceleration points with the net force."))
```

---

## A worked example

```example
(example
  (problem "A 40 kg sled is pulled forward with 120 N, and the snow pushes back on it with 40 N. Find its acceleration.")
  (step "Net force, forward as +: 120 N + (-40 N) = 80 N.")
  (step "a = F_net / m = 80 N / 40 kg.")
  (step "a = 2 m/s², forward.")
  (answer "2 m/s² forward"))
```

Now you finish one.

```check
(number
  (ask "A 2,000 kg truck has a forward push of 6,000 N from the road and 2,000 N of backward force from the air. What is its acceleration?")
  (answer 2) (unit "m/s²") (from "(6000 - 2000) / 2000")
  (wrong-if 3 "That uses only the forward 6,000 N. The net force is 6,000 - 2,000 = 4,000 N.")
  (wrong-if 4 "That adds the two forces. They point opposite ways, so subtract.")
  (hint "First the net force.")
  (hint "4,000 N / 2,000 kg."))
```

---

## Practice

```check
(number
  (ask "A 70 kg skater speeds up at 0.4 m/s². What net force acts on her?")
  (answer 28) (unit "N") (from "70 * 0.4")
  (wrong-if 175 "That divides 70 by 0.4. Net force = m a: multiply.")
  (hint "F_net = m a."))
```

```check
(choice
  (ask "The same net force acts on a 2 kg cart and on a 6 kg cart. How do their accelerations compare?")
  (right "The 2 kg cart's is 3 times as large")
  (wrong "They are equal, because the force is the same"
    "a = F / m: with the same force, the larger mass gets the smaller acceleration.")
  (wrong "The 6 kg cart's is 3 times as large"
    "More mass means more inertia, so a smaller acceleration. 6 kg is 3 times 2 kg, so its acceleration is a third.")
  (hint "a = F / m."))
```

```check
(number
  (ask "A net force doubles on the same object. By what factor does its acceleration change?")
  (answer 2) (from "2")
  (wrong-if 4 "a = F / m is a straight-line rule, not a square. Double the force, double the acceleration.")
  (wrong-if 0.5 "More net force gives more acceleration, not less.")
  (hint "a is proportional to F."))
```

---

So by Newton's second law, $F_(net) = m a$: the acceleration points with the net force and is larger for a larger force and a smaller mass.
