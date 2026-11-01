# Air resistance

```lesson
(objective "Describe air resistance and terminal velocity from a graph of a falling object's velocity.")
(standards "HS-PS2-1")
(minutes 25)
(keywords "air resistance" "terminal velocity")
```

You can explain why a falling object stops speeding up, and read that from a graph of its velocity.

So far we have ignored the air. Now count it. **Air resistance** is the force of the air on an object moving through it. It points opposite the velocity, and it grows as the object goes faster. It is also larger for an object with a larger area facing the way it moves: a sheet of paper flat, or an open parachute.

For many everyday objects, air resistance grows about as the square of the speed: twice as fast, about 4 times the air resistance.

```sources
(source "NASA Glenn Research Center, Beginner's Guide to Aeronautics: The Drag Equation; Terminal Velocity")
```

```check
(choice
  (ask "A flat sheet of paper and a crumpled one, with the same mass, are dropped together. Which lands first?")
  (right "The crumpled one, because less area faces its fall, so it meets less air resistance")
  (wrong "They land together, because their masses are the same"
    "They would land together with no air. Here the flat sheet meets much more air resistance, so it falls more slowly.")
  (wrong "The flat one, because it is spread out"
    "A larger area facing the fall means more air resistance, which slows the flat sheet.")
  (hint "Which sheet pushes more air out of its way?"))
```

---

## Speeding up less and less

A skydiver steps out of a plane. At first she is slow, the air resistance is small, and she speeds up at nearly $g$. As she speeds up, the air resistance grows, so the net force down, $m g - D$, shrinks, and so does her acceleration.

The graph shows her velocity in a simple model. Compare it with free fall with no air.

```figure
(define c (choice 'c '("body flat" "parachute open") "Model"))
(define vt (if (= c 0) 50 6))
(define (v t) (let ((e (exp (/ (* -2 9.8 t) vt)))) (* vt (/ (- 1 e) (+ 1 e)))))
(graph 50 30 250 160 0 15 0 70)
(graph-axes 5 10 "t (s)" "v (m/s)")
(plot (lambda (t) (* 9.8 t)) 'cool 1.5)
(plot v 'ink 2)
(path (list (gx 0) (gy vt) (gx 15) (gy vt)) 'grey 1)
(text 290 (- (gy vt) 5) (string-append "terminal " (fmt vt 0) " m/s") 'right 'small)
(caption "Dashed: no air. Solid: with air (a model)")
```

```check
(choice
  (ask "What does the slope of the solid curve, her acceleration, do as time goes on?")
  (right "It shrinks toward 0, so the curve levels off")
  (wrong "It stays 9.8 m/s² the whole time"
    "That is the dashed line, with no air. With air, the growing air resistance makes the curve bend over and level off.")
  (wrong "It grows, as she falls faster"
    "Falling faster means more air resistance, which leaves less net force and less acceleration.")
  (hint "Watch how steep the solid curve is at the start and at the end."))
```

---

## Terminal velocity

The air resistance keeps growing until it equals the weight. Then the net force is 0, the acceleration is 0, and the velocity stops changing. That steady velocity is the **terminal velocity**.

At terminal velocity the object is in equilibrium: by Newton's first law, it keeps falling at that same speed.

```check
(number
  (ask "A 70 kg skydiver falls at her terminal velocity. What is the air resistance on her?")
  (answer 686) (unit "N") (from "70 * 9.8")
  (wrong-if 0 "She is still falling, but at a steady velocity. That needs the air resistance to balance her weight, not to vanish.")
  (wrong-if 70 "70 kg is her mass. The air resistance balances her weight, m g.")
  (hint "At terminal velocity, the net force is 0."))
```

---

## Opening the parachute

When the parachute opens, the area facing the fall becomes far larger. At her old speed, the air resistance is now much more than her weight, so the net force points up: she slows down. As she slows, the air resistance falls, until it again equals her weight at a new, much lower terminal velocity.

```check
(choice
  (ask "Just after the parachute opens, which way is the net force on the skydiver?")
  (right "Up: she slows down while still moving down")
  (wrong "Down, because she is still falling"
    "She is moving down, but the air resistance is now larger than her weight. The net force, and the acceleration, point up.")
  (wrong "Zero, because the parachute holds her"
    "The net force is 0 only once she reaches her new terminal velocity. Just after opening, she is slowing down.")
  (hint "Compare the air resistance with her weight just after it opens."))
```

---

## A worked example

```example
(example
  (problem "Two balls of the same size and shape fall through air: one of 1 kg and one of 4 kg. Which has the higher terminal velocity, and why?")
  (step "Terminal velocity comes when the air resistance equals the weight.")
  (step "The 4 kg ball's weight is 4 times larger, so it needs 4 times the air resistance.")
  (step "Same size and shape: it needs a higher speed to get that air resistance.")
  (answer "The 4 kg ball: it must fall faster before the air balances its weight"))
```

Now you finish one.

```check
(number
  (ask "In the model, air resistance is about proportional to the speed squared. A ball meets 2 N of air resistance at 10 m/s. About how much at 30 m/s?")
  (answer 18) (unit "N") (from "2 * (30 / 10)^2")
  (wrong-if 6 "Three times the speed gives 3 squared, 9 times the air resistance, not 3 times.")
  (hint "3 times the speed: multiply by 3 x 3."))
```

---

## Practice

```check
(choice
  (ask "A skydiver at terminal velocity curls into a ball, reducing the area facing the fall. What happens?")
  (right "She speeds up to a higher terminal velocity")
  (wrong "She slows down"
    "Less area means less air resistance at her speed, so her weight wins and she speeds up until the air balances it again.")
  (wrong "Nothing changes, because she is at terminal velocity"
    "Terminal velocity depends on her shape. Changing it unbalances the forces.")
  (hint "Less area: less air resistance at the same speed."))
```

```check
(number
  (ask "A 0.2 kg ball falls at its terminal velocity. What is its acceleration?")
  (answer 0) (unit "m/s²") (from "0")
  (wrong-if 9.8 "At terminal velocity, the air resistance balances the weight, so the net force and the acceleration are 0.")
  (hint "Is the velocity changing?"))
```

```check
(choice
  (ask "With air resistance counted, is it still true that heavy and light objects fall together?")
  (right "Not always: when the air matters, objects of the same size and shape but different masses fall at different speeds")
  (wrong "Yes, always, since g is the same for every mass"
    "Gravity alone gives every mass the same acceleration. Air resistance does not grow with mass, so it slows a light object more.")
  (hint "Does the air's force grow with the mass?"))
```

---

So air resistance grows with speed until it balances the weight, and from then on the object falls at a steady terminal velocity, seen as the level part of its velocity-time graph.
