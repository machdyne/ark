# Forces

```lesson
(objective "Describe a force as a push or pull with a magnitude and a direction, measured in newtons, and find the net force.")
(standards "HS-PS2-1")
(minutes 25)
(keywords "force" "newton (unit)" "net force")
```

You can describe the pushes and pulls on an object and add them into one.

A **force** is a push or a pull on an object by another object. A hand pushes a door; a rope pulls a sled; Earth's gravity pulls a falling ball. A force has a magnitude and a direction, so it is a vector, drawn as an arrow.

```check
(choice
  (ask "Which of these is a force?")
  (right "A magnet pulling a paper clip")
  (wrong "The speed of a moving car"
    "Speed describes how an object moves. A force is a push or pull by one object on another.")
  (wrong "The mass of a rock"
    "Mass is how much matter the rock has. It is a scalar, not a push or pull.")
  (hint "Look for one object pushing or pulling on another."))
```

---

## The newton

The SI unit of force is the **newton** (N), named after Isaac Newton. One newton is the force that gives a 1 kg mass an acceleration of 1 m/s², so

$$ 1 N = 1 kg m/s^2 $$

A newton is about the pull of gravity on a 100 g apple. In US customary units forces are measured in pounds: 1 lb is about 4.45 N.

```sources
(source "BIPM, The International System of Units (SI), 9th edition (2019), table 4: the newton, kg m s^-2")
(source "NIST Special Publication 811 (2008), Appendix B: pound-force = 4.448222 N")
```

```check
(number
  (ask "A push of 20 lb is about how many newtons? Use 1 lb = 4.45 N.")
  (answer 89) (unit "N") (from "20 * 4.45")
  (wrong-if 4.49 "That divides 20 by 4.45. A newton is smaller than a pound, so there are more newtons than pounds.")
  (hint "Each pound is 4.45 N."))
```

---

## Net force

Usually several forces act on an object at once. The **net force** is their vector sum: all the forces on the object added tip to tail. It is the net force that changes the object's motion.

Two people push a box along a line. Move the sliders. Right is +.

```figure
(define a (slider 'a 0 60 40 "Right push (N)" 5))
(define b (slider 'b 0 60 25 "Left push (N)" 5))
(rect 140 70 40 40 'paper)
(frame 140 70 40 40 'ink 2)
(line 20 110 300 110 'ink 1.5)
(if (> a 0) (arrow (- 140 (* 2 a)) 90 140 90 'ink 2.5))
(if (> b 0) (arrow (+ 180 (* 2 b)) 90 180 90 'ink 2.5))
(text 70 66 (string-append (fmt a 0) " N") 'centre 'small)
(text 250 66 (string-append (fmt b 0) " N") 'centre 'small)
(define n (- a b))
(text 160 150 (string-append "net force: " (if (> n 0) "+" "") (fmt n 0) " N") 'centre 'body 'bold)
(if (not (= n 0)) (mc-vec 160 175 (* 2 (abs n)) (if (> n 0) 0 180) 'ink))
(caption "Arrows to scale: 1 unit = 0.5 N")
```

```check
(number
  (ask "One person pushes a box right with 40 N, the other left with 25 N. What is the net force, with right as +?")
  (answer 15) (unit "N") (from "40 - 25")
  (wrong-if 65 "The pushes are in opposite directions, so one counts as negative: 40 + (-25).")
  (wrong-if -15 "The larger push is to the right, so the net force points right: +15 N.")
  (hint "Left is negative."))
```

---

## Balanced and unbalanced

When the forces on an object add to zero, they are **balanced**, and the net force is 0. When they do not, they are unbalanced, and the net force changes the object's velocity.

A tug of war with 300 N on each side has a net force of 0: the rope does not speed up either way.

```check
(choice
  (ask "Set both pushes to 30 N. What is true?")
  (right "The net force is 0: the forces are balanced")
  (wrong "The net force is 60 N"
    "The pushes point in opposite directions, so they cancel: 30 + (-30) = 0.")
  (wrong "The box must be at rest"
    "A net force of 0 means the velocity does not change. A box already sliding would keep sliding.")
  (hint "Add them with signs."))
```

---

## Forces at right angles

Forces at right angles add like any vectors: tip to tail, with the Pythagorean theorem for the size.

```example
(example
  (problem "A sled is pulled 30 N east by one rope and 40 N north by another. What is the net force?")
  (step "The forces are at a right angle, so draw them tip to tail.")
  (step "F = sqrt(30^2 + 40^2) = sqrt(900 + 1,600) = sqrt(2,500).")
  (step "F = 50 N, pointing between east and north.")
  (answer "50 N, north of east"))
```

Now you finish one.

```check
(number
  (ask "A boat is pushed 12 N north by the wind and 5 N east by the water. What is the size of the net force?")
  (answer 13) (unit "N") (from "sqrt(12^2 + 5^2)")
  (wrong-if 17 "The forces are at a right angle, so they do not simply add. Use the Pythagorean theorem.")
  (wrong-if 7 "Subtracting is only for opposite directions. North and east are at a right angle.")
  (hint "sqrt(144 + 25)."))
```

---

## Practice

```check
(number
  (ask "Three forces act on a cart along a line: +50 N, -20 N and -30 N. What is the net force?")
  (answer 0) (unit "N") (from "50 - 20 - 30")
  (wrong-if 100 "Forces in opposite directions take away from each other. Add them with their signs.")
  (hint "50 + (-20) + (-30)."))
```

```check
(number
  (ask "A force of 900 N is about how many pounds? Use 1 lb = 4.45 N, and round to the nearest pound.")
  (answer 202) (within 0.6) (unit "lb") (from "900 / 4.45")
  (wrong-if 4005 "That multiplies. A pound is bigger than a newton, so there are fewer pounds than newtons.")
  (hint "Divide by 4.45."))
```

```check
(choice
  (ask "A force is a vector. What does that mean for adding two forces of 10 N each?")
  (right "Their sum can be anything from 0 N to 20 N, depending on their directions")
  (wrong "Their sum is always 20 N"
    "Only forces in the same direction add to 20 N. Opposite forces cancel, and forces at an angle give something between.")
  (hint "Think of a tug of war."))
```

---

So a force is a push or pull measured in newtons, and the net force is the vector sum of all the forces on an object.
