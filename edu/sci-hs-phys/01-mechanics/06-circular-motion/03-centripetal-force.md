# Centripetal force

```lesson
(objective "Find which real force pulls an object toward the center, and compute it with F = mv^2/r.")
(standards "HS-PS2-1")
(minutes 25)
(keywords "centripetal force")
```

You can find which force keeps an object on its circle, and how strong it must be.

An object in uniform circular motion has an acceleration $v^2/r$ toward the center. By Newton's second law, that needs a net force toward the center, of size

$$ F_c = m v^2 / r $$

This net force toward the center is called the **centripetal force**. It is not a new kind of force. It is the name for the job some real force, or several, is doing: a string's tension, friction, gravity or a normal force.

```check
(number
  (ask "A 0.2 kg ball goes around on a string at 3 m/s in a circle of radius 0.5 m, on a smooth level table. What tension does the string need?")
  (answer 3.6) (within 0.001) (unit "N") (from "0.2 * 3^2 / 0.5")
  (wrong-if 1.2 "That uses v, not v squared. F_c = m v^2 / r.")
  (wrong-if 18 "That leaves out the mass. F_c = m v^2 / r = 0.2 x 9 / 0.5.")
  (hint "F_c = m v^2 / r."))
```

---

## Which force does the job?

| Situation | The real force toward the center |
|---|---|
| a ball whirled on a string | the string's tension |
| a car on a flat curve | static friction from the road on the tires |
| the Moon going around Earth | Earth's gravity |
| a rider on the wall of a spinning drum ride | the normal force from the wall |

On a free-body diagram, draw only these real forces. Never add an extra "centripetal force" arrow, and never an outward one.

```check
(choice
  (ask "A car rounds a flat curve at a steady speed. Which force pulls it toward the center?")
  (right "Friction from the road on the tires")
  (wrong "The car's engine"
    "The engine's push from the road is along the car's path. The sideways push toward the center comes from friction between the tires and the road.")
  (wrong "A separate centripetal force, added to the others"
    "Centripetal force is not an extra force. It is the name for the net force toward the center, which here is friction.")
  (hint "What would fail on an icy road?"))
```

---

## No force outward

Riding in a car that turns left, you feel pushed to the right, against the door. No force pushes you outward. By Newton's first law your body tends to keep going straight; the car turns under you, until the door pushes you inward, around the curve.

Tick "Cut string": the string is cut each time the ball reaches the right of the circle. With no force toward the center, it moves off in a straight line along the circle's tangent, not outward.

```figure
(define cut (toggle 'cut "Cut string"))
(still
  (ring 120 130 70 'grey 1)
  (circle 120 130 3 'ink)
  (caption "Seen from above; real time"))
(define t (mc-mod (seconds) 5))
(define ang (* 120 t))
(if (or (not cut) (< t 3))
    (let ((d (deg->rad ang)))
      (line 120 130 (+ 120 (* 70 (cos d))) (- 130 (* 70 (sin d))) 'ink 1)
      (mc-round 120 130 70 ang 0 0 'warm))
    (let ((y (- 130 (* 146.6 (- t 3)))))
      (if (> y 16) (begin (circle 190 y 6 'warm) (ring 190 y 6 'ink 1)))))
```

```check
(choice
  (ask "A ball whirled on a string is at the rightmost point of its circle, moving straight up the page, when the string breaks. Which way does it go?")
  (right "Straight up the page, along the direction it was moving")
  (wrong "Straight to the right, away from the center"
    "No outward force acts on it. With no net force, it keeps the velocity it had: up the page, along the tangent.")
  (wrong "It keeps curving around for a while"
    "Curving needs a force toward the center. Once the string breaks, nothing provides it.")
  (hint "Newton's first law: what does the ball keep?"))
```

---

## A worked example

```example
(example
  (problem "A 1,000 kg car rounds a flat curve of radius 40 m at 12 m/s. How much friction must the road supply?")
  (step "The friction is the centripetal force: F_c = m v^2 / r.")
  (step "F_c = 1,000 x 12^2 / 40 = 1,000 x 144 / 40.")
  (step "F_c = 3,600 N, toward the center of the curve.")
  (answer "3,600 N of friction, toward the center"))
```

Now you finish one.

```check
(number
  (ask "A 50 kg skater glides around a circle of radius 10 m at 4 m/s. What centripetal force does the ice give her?")
  (answer 80) (unit "N") (from "50 * 4^2 / 10")
  (wrong-if 20 "That uses v, not v squared.")
  (wrong-if 1.6 "That leaves out the mass: v^2 / r is the acceleration. Multiply by 50 kg.")
  (hint "F_c = 50 x 16 / 10."))
```

---

## Practice

```check
(choice
  (ask "Which force keeps the Moon moving around Earth?")
  (right "Earth's gravity pulling the Moon toward Earth")
  (wrong "The Moon's speed"
    "Speed is not a force. Without a pull toward Earth, the Moon would move off in a straight line.")
  (wrong "An outward force balanced by gravity"
    "If the forces balanced, the Moon would move in a straight line. The net force, gravity, points toward Earth.")
  (hint "Which real force points toward Earth?"))
```

```check
(number
  (ask "A 2 kg ball on a 1.2 m string goes around a horizontal circle with a string tension of 15 N, on a smooth table. How fast is it going? Round to the nearest hundredth.")
  (answer 3) (within 0.006) (unit "m/s") (from "sqrt(15 * 1.2 / 2)")
  (wrong-if 9 "That is v squared. Take the square root.")
  (hint "15 = 2 v^2 / 1.2.")
  (hint "v^2 = 9."))
```

```check
(choice
  (ask "The same ball is whirled twice as fast on the same string. What tension is needed?")
  (right "4 times as much")
  (wrong "Twice as much"
    "F_c = m v^2 / r. Double v gives 4 times v^2, and 4 times the force.")
  (wrong "The same, because the string is the same"
    "The string must pull harder to turn a faster ball onto the same circle.")
  (hint "Speed is squared."))
```

---

So the centripetal force, $F_c = m v^2 / r$, is the net force toward the center, supplied by real forces such as tension, friction or gravity, and nothing pushes an object outward.
