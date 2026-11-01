# Normal force and tension

```lesson
(objective "Find the normal force from a surface and the tension in a rope.")
(standards "HS-PS2-1")
(minutes 25)
(keywords "normal force" "tension (in a rope)")
```

You can find how hard a surface pushes on an object, and how hard a rope pulls.

A surface pushes on anything pressed against it. This push, the **normal force** $F_N$, is perpendicular to the surface. A floor pushes straight up; a wall pushes straight out.

A box at rest on a level floor, with nothing else pushing on it, is in equilibrium. So the normal force balances its weight:

$$ F_N = m g $$

```check
(number
  (ask "A 20 kg box rests on a level floor. What is the normal force on it?")
  (answer 196) (unit "N") (from "20 * 9.8")
  (wrong-if 20 "20 kg is the box's mass. The normal force balances its weight, m g.")
  (wrong-if 0 "The floor does push: if it did not, the box would fall through it. It pushes up with a force equal to the weight.")
  (hint "The box is in equilibrium: F_N balances m g."))
```

---

## The normal force adjusts

The normal force is not always equal to the weight. A surface pushes as hard as it must to stop the object sinking into it.

Push down on the box, or pull up on it, and watch the floor's push change.

```figure
(define P (slider 'P -150 150 0 "Your push (N)" 25))
(define W 196)
(define N (+ W P))
(mc-fbd 110 125 0.25 (list (list 270 W "weight") (list 90 N "floor")))
(if (not (= P 0)) (mc-vec 136 (if (> P 0) 109 141) (* 0.25 (abs P)) (if (> P 0) 270 90) 'ink "you"))
(rect 196 46 120 40 'paper)
(text 200 60 (string-append "you: " (if (> P 0) "down " (if (< P 0) "up " "")) (fmt (abs P) 0) " N") 'small)
(text 200 80 (string-append "floor: " (fmt N 0) " N") 'small 'bold)
(caption "A 20 kg box; arrows to scale")
```

When you push down with $P$, $F_N = m g + P$. When you pull up, $F_N = m g - P$.

```check
(number
  (ask "You press down on the 20 kg box with 50 N. What is the normal force now?")
  (answer 246) (unit "N") (from "196 + 50")
  (wrong-if 196 "The floor must now hold up the weight and your push too. The normal force grows to 196 + 50 N.")
  (wrong-if 146 "Pressing down makes the floor push back harder, not less.")
  (hint "Up forces must balance down forces."))
```

---

## Tension

A rope, string or cable pulls on whatever it is tied to. This pull, the **tension** $T$, acts along the rope, away from the object. A light rope pulls with the same tension at both of its ends.

A 3 kg lamp hangs at rest from a cord. It is in equilibrium, so the cord's tension balances its weight: $T = 3 * 9.8 = 29.4$ N.

```check
(number
  (ask "A 12 kg sign hangs at rest from a single cable. What is the tension in the cable? Round to the nearest tenth.")
  (answer 117.6) (within 0.06) (unit "N") (from "12 * 9.8")
  (wrong-if 12 "12 kg is the mass. The tension balances the sign's weight, m g.")
  (hint "T = m g at rest."))
```

---

## Tension when speeding up

A crane lifts a 100 kg crate. Now the forces may not balance. Take up as +:

$$ T - m g = m a $$

so $T = m (g + a)$. Speeding up upward needs a tension larger than the weight. Moving up at a steady speed needs a tension equal to it.

```figure
(define a (slider 'a -3 3 0 "a, up + (m/s²)" 0.5))
(define T (* 100 (+ 9.8 a)))
(mc-fbd 160 110 0.07 (list (list 270 980 "weight 980 N") (list 90 T "T")))
(text 300 60 (string-append "T = " (fmt T 0) " N") 'right 'small 'bold)
(caption "100 kg crate on a crane cable; arrows to scale")
```

```check
(number
  (ask "The crane speeds the 100 kg crate up at 2 m/s² upward. What is the tension?")
  (answer 1180) (unit "N") (from "100 * (9.8 + 2)")
  (wrong-if 200 "That is only m a, the net force. The cable must also hold up the weight: T = m g + m a.")
  (wrong-if 980 "That is the tension at rest or at a steady speed. Speeding up needs 200 N more.")
  (hint "T = m (g + a)."))
```

---

## A worked example

```example
(example
  (problem "An elevator cable lowers a 500 kg car, which is slowing its descent, with an acceleration of 1.2 m/s² upward. Find the tension.")
  (step "Up as +: a = +1.2 m/s², since slowing a downward motion means an upward acceleration.")
  (step "T - m g = m a, so T = m (g + a).")
  (step "T = 500 x (9.8 + 1.2) = 500 x 11.")
  (answer "5,500 N"))
```

Now you finish one.

```check
(number
  (ask "A 60 kg climber is lowered on a rope with an acceleration of 0.8 m/s² downward. What is the tension? Round to the nearest newton.")
  (answer 540) (within 0.6) (unit "N") (from "60 * (9.8 - 0.8)")
  (wrong-if 636 "That uses +0.8. The acceleration is downward, so with up as +, a = -0.8 m/s².")
  (wrong-if 588 "That is the tension at rest. While speeding up downward, the rope pulls less than the weight.")
  (hint "a = -0.8 m/s² with up as +.")
  (hint "T = 60 x (9.8 - 0.8)."))
```

---

## Practice

```check
(number
  (ask "You pull up on a 10 kg suitcase with 40 N, but it stays on the floor. What is the normal force?")
  (answer 58) (unit "N") (from "10 * 9.8 - 40")
  (wrong-if 98 "Your pull helps hold the suitcase up, so the floor needs to push less: 98 - 40.")
  (wrong-if 138 "Pulling up does not make the floor push harder. Up forces: F_N + 40 N must equal 98 N.")
  (hint "F_N + 40 = m g."))
```

```check
(choice
  (ask "Which way does the normal force from a wall point on a ladder leaning against it?")
  (right "Straight out from the wall, perpendicular to it")
  (wrong "Straight up"
    "The normal force is perpendicular to the surface. A wall's surface is upright, so it pushes sideways, out from the wall.")
  (wrong "Along the ladder"
    "A surface pushes perpendicular to itself, whatever the angle of the object touching it.")
  (hint "The normal force is perpendicular to the surface."))
```

```check
(choice
  (ask "A 5 kg bucket is pulled up by a rope at a steady 1 m/s. How does the tension compare with the bucket's weight?")
  (right "They are equal")
  (wrong "The tension is larger, because the bucket moves up"
    "At a steady velocity the net force is 0, so the tension balances the weight exactly. Extra tension is needed only to speed it up.")
  (wrong "The tension is smaller"
    "If the tension were smaller, the net force would point down and the bucket would slow down.")
  (hint "Steady velocity means equilibrium."))
```

---

So the normal force is a surface's perpendicular push, as large as needed to stop an object sinking in, and tension is a rope's pull along its length, found from the forces on the object.
