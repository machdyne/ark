# Newton's third law

```lesson
(objective "Find the force pairs of Newton's third law and explain why they do not cancel.")
(standards "HS-PS2-1")
(minutes 25)
(keywords "Newton's third law" "force pair")
```

You can find the partner of every force, and see why partners never cancel each other.

**Newton's third law**: when object A exerts a force on object B, B exerts a force on A that is equal in size and opposite in direction.

The two forces are a **force pair**. They act on different objects, at the same time, and they are the same kind of force: two pushes, or two pulls of gravity.

```sources
(source "Isaac Newton, Philosophiae Naturalis Principia Mathematica (1687), Axioms, or Laws of Motion: Law III")
```

```check
(choice
  (ask "You push a wall with 50 N. What does the wall do?")
  (right "It pushes back on you with 50 N")
  (wrong "Nothing: walls cannot push"
    "Every force has a partner. Your hand presses the wall, and the wall presses back on your hand just as hard; you can feel it.")
  (wrong "It pushes back with less than 50 N, because it does not move"
    "The partner force is always equal in size. The wall stays put because the ground holds it, not because its push is smaller.")
  (hint "Every force has an equal and opposite partner."))
```

---

## Two skaters

Two skaters on smooth ice push off each other. Move the slider: the pushes are always equal and opposite. But the skaters' masses differ, so their accelerations differ.

```figure
(define F (slider 'F 0 200 120 "Push (N)" 10))
(rect 76 90 28 60 'paper) (frame 76 90 28 60 'ink 2)
(rect 214 80 36 70 'paper) (frame 214 80 36 70 'ink 2)
(line 10 150 310 150 'ink 2)
(label 90 170 "A: 50 kg")
(label 232 170 "B: 75 kg")
(if (> F 0) (begin (arrow 104 115 (- 104 (* 0.4 F)) 115 'ink 2.5) (arrow 214 115 (+ 214 (* 0.4 F)) 115 'ink 2.5)))
(text 90 40 (string-append "a = " (fmt (/ F 50) 2) " m/s²") 'centre 'small 'bold)
(text 232 40 (string-append "a = " (fmt (/ F 75) 2) " m/s²") 'centre 'small 'bold)
(text 160 70 (string-append (fmt F 0) " N on each") 'centre 'small)
(caption "Arrows to scale: the force on each skater")
```

```check
(number
  (ask "With a push of 150 N, what is the acceleration of skater B, whose mass is 75 kg?")
  (answer 2) (unit "m/s²") (from "150 / 75")
  (wrong-if 3 "That is skater A's, 150 / 50. Each skater's acceleration uses her own mass.")
  (hint "a = F / m for skater B alone."))
```

---

## Why they do not cancel

Forces cancel only when they act on the same object. The two forces of a pair act on different objects, so each goes into a different free-body diagram. Skater A moves because of the force on A; skater B moves because of the force on B.

```check
(choice
  (ask "A horse pulls a cart forward, and the cart pulls back on the horse with an equal force. How can they move?")
  (right "The forces act on different objects; the horse moves forward because the ground pushes it forward harder than the cart pulls it back")
  (wrong "They cannot move: the forces cancel"
    "The two forces act on different objects, so they never cancel. To see if the horse speeds up, add only the forces on the horse.")
  (wrong "The horse pulls a little harder than the cart pulls back"
    "The third law makes the two pulls exactly equal. The difference comes from other forces, such as the ground pushing on the horse's hooves.")
  (hint "Draw the free-body diagram of the horse alone."))
```

---

## Pairs, and forces that only look like pairs

A book rests on a table. Earth pulls it down; the table pushes it up. These two are equal and opposite, but they are **not** a third-law pair: both act on the book, and they are different kinds of force.

The real partners:

- Earth pulls the book down; the book pulls Earth up.
- The table pushes the book up; the book pushes the table down.

```check
(choice
  (ask "Earth pulls an apple down with 1 N. What is the partner of that force?")
  (right "The apple pulls Earth up with 1 N")
  (wrong "The stem holds the apple up with 1 N"
    "That force also acts on the apple, so it cannot be the partner. The partner acts on Earth.")
  (wrong "There is none, because Earth is too big to be pulled"
    "The apple pulls Earth just as hard. Earth's acceleration is tiny only because its mass is huge.")
  (hint "Swap the two objects: what does the apple do to Earth?"))
```

---

## A worked example

```example
(example
  (problem "A 0.5 kg ball and Earth pull on each other with 4.9 N. Find each one's acceleration. Earth's mass is 5.97 x 10^24 kg.")
  (step "Same force on each: 4.9 N.")
  (step "Ball: a = 4.9 / 0.5 = 9.8 m/s².")
  (step "Earth: a = 4.9 / (5.97 x 10^24), about 8 x 10^-25 m/s².")
  (answer "The ball falls at 9.8 m/s²; Earth's acceleration is far too small to notice"))
```

Now you finish one.

```check
(number
  (ask "A 60 kg student on skates pushes a 30 kg friend with 90 N. What is the student's own acceleration?")
  (answer 1.5) (within 0.001) (unit "m/s²") (from "90 / 60")
  (wrong-if 0 "The friend pushes back on the student with 90 N too, so the student speeds up in the other direction.")
  (wrong-if 3 "3 m/s² is the friend's acceleration, 90 / 30. The student's uses his own mass.")
  (hint "The friend pushes back with 90 N.")
  (hint "a = 90 / 60."))
```

---

## Practice

```check
(choice
  (ask "A swimmer pushes the water backward. What makes her move forward?")
  (right "The water pushes her forward, the partner of her push")
  (wrong "Her own push on the water"
    "Her push acts on the water, not on her. The partner force, the water pushing her forward, acts on her.")
  (hint "Find the force that acts on the swimmer."))
```

```check
(choice
  (ask "A truck and a small car collide. Which feels the larger force?")
  (right "Neither: the forces are equal and opposite")
  (wrong "The car, because it is damaged more"
    "The forces are equal. The car changes velocity more because its mass is smaller, so the same force gives it a larger acceleration.")
  (wrong "The truck, because it is heavier"
    "A third-law pair is always equal in size, whatever the masses.")
  (hint "The two forces are a pair."))
```

```check
(choice
  (ask "A rocket in space pushes hot gas backward out of its engine. Which is true?")
  (right "The gas pushes the rocket forward, so the rocket can speed up even with nothing to push against outside")
  (wrong "The rocket needs air behind it to push against"
    "The rocket pushes on its own exhaust gas, and the gas pushes back on the rocket. No air is needed; rockets fly in space.")
  (hint "What does the rocket push on?"))
```

---

So by Newton's third law, forces come in equal and opposite pairs acting on two different objects, which is why the two forces of a pair never cancel.
