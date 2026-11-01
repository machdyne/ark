# Work

```lesson
(objective "Compute the work a force does as W = F d cos(theta), in joules, and say when a force does no work.")
(standards "HS-PS3-1")
(minutes 25)
(keywords "energy (in physics)" "work (in physics)" "joule")
```

You learn to compute the work a force does, and to tell when a force
does no work at all.

In physics, **energy** is what lets a system make changes: move an
object, lift it, warm it. Energy comes in several forms, and it can
pass from one object to another.

One way energy passes is by **work**: a force does work on an object
when it pushes or pulls the object through a displacement. If the force
points along the displacement, the work is the force times the distance:

$$ W = F d $$

Work and energy are measured in **joules** (J). One joule is the work
of a 1 N force acting through 1 m: $1 J = 1 N * m$. In US customary
units, 1 J is about 0.738 foot-pounds.

```sources
(source "OpenStax, College Physics 2e (2022), section 7.1, Work: The Scientific Definition")
(source "NIST Special Publication 811, Guide for the Use of the International System of Units (2008), appendix B: 1 ft lbf = 1.355818 J")
```

```check
(number
  (ask "You push a crate with a force of 50 N along the floor. It moves 4 m in the direction of the push. How much work does your push do?")
  (answer 200) (unit "J") (from "50 * 4")
  (wrong-if 12.5 "That is 50 divided by 4. Work is force times distance: the bigger the push and the longer the distance, the more work.")
  (wrong-if 54 "Force and distance are multiplied, not added. 50 N through 4 m is 50 * 4 joules.")
  (hint "The force points along the motion, so W = F d.")
  (hint "W = 50 N * 4 m."))
```

---

## When the force is at an angle

Often a force pulls at an angle to the motion, like a rope pulled
upward on a box that slides along the floor. Only the force's
component along the displacement does work:

$$ W = F d cos(theta) $$

Here $theta$ is the angle between the force and the displacement. Move
the slider: the rope's force stays 100 N and the box moves 5 m, but the
work changes with the angle.

```figure
(define a (slider 'angle 0 90 30 "Angle (deg)" 5))
(define W (* 100 5 (cos (deg->rad a))))
(define d (deg->rad a))
(define tx (+ 160 (* 90 (cos d))))
(define ty (- 130 (* 90 (sin d))))
(wv-surface 20 300 150 #f)
(wv-block 100 110 60 40 'grey "box")
(arrow 160 130 (+ 160 (* 90 (cos d))) 130 'cool 1.5)
(line tx ty tx 130 'grey 1)
(arrow 160 130 tx ty 'ink 2)
(angle-mark 160 130 26 0 a (fmt a 0))
(text 20 30 "Rope force F = 100 N" 'small)
(text 20 46 "Dashed: its part along the motion" 'small)
(arrow 100 178 260 178 'ink 1.5)
(text 180 194 "d = 5 m" 'centre 'small)
(text 160 222 (string-append "W = F d cos(angle) = " (fmt W 0) " J") 'centre 'body 'bold)
```

```check
(number
  (ask "A rope pulls a sled with 100 N at 60 degrees above the ground. The sled moves 5 m along the ground. How much work does the rope do?")
  (answer 250) (unit "J") (from "100 * 5 * cos(pi/3)")
  (wrong-if 500 "That is F times d, as if the rope pulled straight along the ground. At 60 degrees only part of the force, F cos(60), pulls forward.")
  (wrong-if 433 "That uses sin(60). The part of the force along the motion is F cos(theta), when theta is measured from the direction of motion.")
  (hint "Set the slider to 60 degrees.")
  (hint "cos(60 degrees) = 0.5, so W = 100 * 5 * 0.5."))
```

---

## Forces that do no work

The formula shows two ways a force can do no work at all:

- **No displacement.** Push hard on a wall that does not move: $d = 0$, so $W = 0$. Your muscles tire, but your push does no work on the wall.
- **A force at right angles to the motion.** At $theta = 90$ degrees, $cos(theta) = 0$. You carry a bag across a level room: your upward hold on the bag is at right angles to its sideways motion, so the hold does no work on the bag.

```check
(choice
  (ask "A waiter carries a tray across a level floor at a steady speed. How much work does the waiter's upward force do on the tray?")
  (right "None: the force is at right angles to the motion")
  (wrong "Some: the waiter holds the tray up the whole way"
    "Holding a tray up takes effort, but work in physics needs motion along the force. The tray moves sideways and the force is upward, so cos(90) = 0.")
  (wrong "The tray's weight times the distance walked"
    "That would be true if the tray moved upward that far. It moves sideways, at right angles to the upward force, so that force does no work.")
  (hint "What is the angle between the waiter's force and the tray's motion?")
  (hint "cos(90 degrees) = 0."))
```

---

## Negative work

When a force points against the motion, $theta = 180$ degrees and
$cos(theta) = -1$, so the work is negative. A force that does negative
work takes energy away from the object. Friction on a sliding box does
negative work: it slows the box down.

```check
(choice
  (ask "A ball rises straight up after it is thrown. What work does gravity do on it while it rises?")
  (right "Negative work: gravity points down, the ball moves up")
  (wrong "Positive work: gravity acts the whole time"
    "A force acting is not enough for positive work. Gravity points down and the ball moves up: the angle is 180 degrees, so the work is negative.")
  (wrong "No work: gravity does not touch the ball"
    "A force does not need contact to do work. Gravity pulls on the ball through its displacement, at 180 degrees to it.")
  (hint "What is the angle between the downward pull and the upward motion?"))
```

---

## Worked example

```example
(example
  (problem "You lift a 2.0 kg book straight up 1.5 m at a steady speed. How much work does your lift do? Use g = 9.8 m/s^2.")
  (step "At a steady speed the net force is 0, so your upward force equals the book's weight: F = m g = 2.0 * 9.8 = 19.6 N.")
  (step "Your force points up and the book moves up: theta = 0, so cos(theta) = 1.")
  (step "W = F d = 19.6 N * 1.5 m = 29.4 J.")
  (answer "29.4 J"))
```

```example
(example
  (problem "You lift a 5.0 kg box straight up 0.80 m at a steady speed. How much work does your lift do?")
  (step "Your force equals the box's weight: F = 5.0 * 9.8 = 49 N.")
  (step "The force and the motion are both upward, so W = F d.")
  (step (number (ask "W, in joules, to the nearest tenth?") (answer 39.2) (within 0.05) (unit "J") (from "5.0 * 9.8 * 0.80")
    (wrong-if 4 "That is 5.0 * 0.80, the mass times the distance. Work uses the force, the weight m g, in newtons.")
    (hint "W = 49 N * 0.80 m.")))
  (answer "39.2 J"))
```

---

## Practice

```check
(number
  (ask "A tow rope pulls a car 20 m along a level road with a force of 1,500 N, at 30 degrees above the road. How much work does the rope do, to the nearest 100 J?")
  (answer 26000) (within 50) (unit "J") (from "1500 * 20 * cos(pi/6)")
  (wrong-if 30000 "That leaves out the angle. Only the part of the force along the road, F cos(30), does work.")
  (wrong-if 15000 "That uses sin(30) = 0.5. Measured from the road, the forward part of the force is F cos(30), about 0.866 F.")
  (hint "W = F d cos(30 degrees).")
  (hint "cos(30 degrees) is about 0.866: 1,500 * 20 * 0.866."))
```

```check
(choice
  (ask "Which force does work on the object?")
  (right "A shopper's push on a cart that rolls forward")
  (wrong "A student's push on a brick wall that stays still"
    "The wall does not move, so d = 0 and W = 0. Effort is not the same as work.")
  (wrong "The floor's upward push on a box sliding along it"
    "That push is at right angles to the sliding motion, so cos(90) = 0 and it does no work.")
  (hint "Work needs a displacement with a part along the force."))
```

---

```check
(number
  (ask "Friction of 30 N acts on a box while it slides 2 m. How much work does friction do on the box? Give the sign.")
  (answer -60) (unit "J") (from "30 * 2 * cos(pi)")
  (wrong-if 60 "Friction points against the motion: theta = 180 degrees and cos(180) = -1. The work is negative, because friction takes energy away.")
  (hint "Friction points backward while the box moves forward.")
  (hint "W = 30 * 2 * cos(180 degrees)."))
```

So: work is $W = F d cos(theta)$ in joules, and a force does no work
when nothing moves or when it acts at right angles to the motion.
