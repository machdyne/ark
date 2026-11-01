# Curves

```lesson
(objective "Find the fastest safe speed around a flat curve from friction.")
(standards "HS-PS2-1" "HSA-CED.A.4")
(minutes 25)
```

You can find how fast a car can take a flat curve before it skids.

On a flat curve, the only force toward the center is static friction between the tires and the road. The tires do not slide sideways, so it is static friction, and it can be at most $mu_s F_N = mu_s m g$.

The car needs a centripetal force of $m v^2 / r$. It stays on the curve while friction can supply that:

$$ m v^2 / r <= mu_s m g $$

```check
(choice
  (ask "A car takes a flat curve too fast for the road. What happens?")
  (right "Friction cannot supply enough force toward the center, so the car slides toward the outside of the curve")
  (wrong "An outward force throws the car off the road"
    "No outward force acts. The car slides outward because friction is too weak to turn it as tightly as the road curves, so it goes straighter.")
  (wrong "Nothing: the car's speed has no effect on turning"
    "The force needed, m v^2 / r, grows with the speed squared. At some speed, friction cannot provide it.")
  (hint "Compare the force needed with the most friction can give."))
```

---

## The fastest safe speed

The mass cancels from both sides. Solving for the largest speed:

$$ v_(max) = sqrt(mu_s g r) $$

The fastest safe speed does not depend on the car's mass. It grows with a grippier road and a wider curve.

```figure
(define r (slider 'r 10 200 50 "Radius (m)" 10))
(define k (choice 'k '("0.8" "0.5" "0.1") "mu_s"))
(define mu (list-ref '(0.8 0.5 0.1) k))
(define vm (sqrt (* mu 9.8 r)))
(graph 50 30 250 150 0 200 0 40)
(graph-axes 50 10 "r (m)" "v max (m/s)")
(plot (lambda (x) (sqrt (* 0.8 9.8 x))) 'grey 1)
(plot (lambda (x) (sqrt (* 0.1 9.8 x))) 'grey 1)
(plot (lambda (x) (sqrt (* mu 9.8 x))) 'ink 2)
(plot-point r vm 'warm)
(caption (string-append "v max = " (fmt vm 1) " m/s, about " (fmt (* vm 2.237) 0) " mph"))
```

```check
(number
  (ask "A flat curve has radius 50 m and mu_s = 0.8. What is the fastest safe speed? Round to the nearest tenth.")
  (answer 19.8) (within 0.06) (unit "m/s") (from "sqrt(0.8 * 9.8 * 50)")
  (wrong-if 392 "That is v squared. Take the square root.")
  (wrong-if 6.3 "That leaves out g. v_max = sqrt(mu_s g r).")
  (hint "v_max = sqrt(0.8 x 9.8 x 50)."))
```

---

## Wet and icy roads

A wet or icy road has a smaller coefficient of friction, so the safe speed drops. Because of the square root, a road with 1/4 the friction allows half the speed.

Many highway curves are also banked, tilted toward the inside, so that part of the normal force points toward the center and helps.

```check
(number
  (ask "The same 50 m curve is icy, with mu_s = 0.1. What is the fastest safe speed now? Round to the nearest tenth.")
  (answer 7) (within 0.06) (unit "m/s") (from "sqrt(0.1 * 9.8 * 50)")
  (wrong-if 2.5 "That divides the dry speed by 8, the ratio of the coefficients. The speed goes with the square root of mu_s.")
  (hint "sqrt(0.1 x 9.8 x 50)."))
```

---

## A worked example

```example
(example
  (problem "A road's curve has radius 120 m and mu_s = 0.6. What is the fastest safe speed, in m/s and in mph?")
  (step "v_max = sqrt(mu_s g r) = sqrt(0.6 x 9.8 x 120).")
  (step "= sqrt(705.6) = 26.6 m/s.")
  (step "In mph: 26.6 m/s x 3,600 s/h / 1,609 m/mi = 59.5 mph.")
  (answer "About 27 m/s, or about 60 mph"))
```

Now you finish one.

```check
(number
  (ask "A bike rides around a flat track of radius 20 m with mu_s = 0.5. What is its fastest safe speed? Round to the nearest tenth.")
  (answer 9.9) (within 0.06) (unit "m/s") (from "sqrt(0.5 * 9.8 * 20)")
  (wrong-if 98 "That is v squared. Take the square root.")
  (hint "sqrt(0.5 x 9.8 x 20)."))
```

---

## Practice

```check
(choice
  (ask "A heavy truck and a light car take the same flat curve. Which can go faster without skidding, if their tires have the same mu_s?")
  (right "Neither: their fastest safe speeds are the same")
  (wrong "The truck, because it presses harder on the road"
    "The truck gets more friction, but it also needs more force to turn. Both grow with mass, so the mass cancels.")
  (wrong "The car, because it is lighter"
    "A lighter car needs less force to turn, but it also gets less friction. The mass cancels.")
  (hint "Is m in v_max = sqrt(mu_s g r)?"))
```

```check
(choice
  (ask "A curve's radius is made 4 times larger. What happens to its fastest safe speed?")
  (right "It doubles")
  (wrong "It becomes 4 times larger"
    "v_max goes with the square root of r. The square root of 4 is 2.")
  (hint "v_max = sqrt(mu_s g r)."))
```

```check
(number
  (ask "A car takes a flat 80 m curve at 20 m/s without skidding. What is the smallest mu_s that allows this? Round to the nearest hundredth.")
  (answer 0.51) (within 0.006) (from "20^2 / (9.8 * 80)")
  (wrong-if 0.03 "That forgets to square the speed. mu_s = v^2 / (g r).")
  (hint "mu_s = v^2 / (g r)."))
```

---

So on a flat curve friction supplies the centripetal force, and the fastest safe speed is $v_(max) = sqrt(mu_s g r)$, the same for any mass.
