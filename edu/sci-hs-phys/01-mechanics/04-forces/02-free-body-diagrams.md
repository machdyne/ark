# Free-body diagrams

```lesson
(objective "Draw a free-body diagram showing every force on one object.")
(standards "HS-PS2-1")
(minutes 25)
(keywords "free-body diagram")
```

You can draw every force acting on one object, so you can find the net force on it.

A **free-body diagram** shows one object, drawn as a box or a dot, and every force that acts on it, as arrows starting from it. Each arrow is labeled with what exerts the force, and its length is drawn to scale.

Choose an object to see its diagram.

```figure
(define c (choice 'c '("book" "box" "lamp" "ball") "Object"))
(define k 2.4)
(cond
  ((= c 0) (mc-fbd 160 120 k '((270 30 "Earth: 30 N") (90 30 "table: 30 N"))))
  ((= c 1) (mc-fbd 130 120 k '((270 40 "Earth: 40 N") (90 40 "floor: 40 N") (0 25 "rope: 25 N"))))
  ((= c 2) (mc-fbd 160 120 k '((270 20 "Earth: 20 N") (90 20 "cord: 20 N"))))
  (else (mc-fbd 160 80 k '((270 15 "Earth: 15 N")))))
(caption (list-ref '("A book resting on a table" "A box pulled along a smooth floor"
                     "A lamp hanging from a cord" "A thrown ball in flight, no air") c))
```

```check
(number
  (ask "Choose the box. How many forces act on it?")
  (answer 3) (from "3")
  (wrong-if 2 "Count again: Earth pulls it down, the floor pushes it up, and the rope pulls it along.")
  (wrong-if 4 "The box does not push on anything in its own diagram. Only forces on the box count: Earth, floor and rope.")
  (hint "Count the arrows starting from the box."))
```

---

## Only forces on the object

A free-body diagram has only the forces that act **on** the chosen object, never the forces it exerts on other things. The book pushes down on the table, but that force acts on the table, so it belongs in the table's diagram, not the book's.

```check
(choice
  (ask "Which force belongs in the free-body diagram of a book resting on a table?")
  (right "The table pushing up on the book")
  (wrong "The book pushing down on the table"
    "That force acts on the table. In the book's diagram, draw only the forces acting on the book.")
  (wrong "The table pushing down on the floor"
    "That force acts on the floor, not the book.")
  (hint "Ask: is this force acting on the book?"))
```

---

## No force of the throw

Choose the ball. Once a thrown ball leaves the hand, the hand no longer touches it, so the hand exerts no force on it. Ignoring the air, the only force is gravity, pulling down, even while the ball moves up or sideways.

A force needs another object to exert it, by touching or, like gravity, from a distance. Motion itself is not a force.

```check
(choice
  (ask "A ball has been thrown and is rising. Ignoring the air, which forces act on it?")
  (right "Only gravity, downward")
  (wrong "Gravity downward and the force of the throw upward"
    "The hand stopped pushing when the ball left it. The ball keeps rising because it is already moving, not because a force carries it.")
  (wrong "No forces at all"
    "Earth's gravity pulls on the ball the whole time. That is why it slows on the way up.")
  (hint "What is touching the ball, or pulling it from a distance?"))
```

---

## Drawing to scale

Arrows to the same scale let you see the net force. The book's two arrows are equal and opposite, so the net force is 0. The box's up and down arrows cancel, leaving the rope's 25 N.

```check
(number
  (ask "In the box's diagram, what is the net force on the box?")
  (answer 25) (unit "N") (from "25 + 40 - 40")
  (wrong-if 105 "That adds all the arrows' sizes. The up and down forces cancel, leaving only the rope's pull.")
  (wrong-if 0 "The vertical forces cancel, but the rope's 25 N pull is not balanced by anything.")
  (hint "Up and down cancel. What is left?"))
```

---

## A worked example

```example
(example
  (problem "Draw the free-body diagram of a sled pulled by a rope across smooth, level ice.")
  (step "Choose the object: the sled.")
  (step "Things that touch it: the ice (pushes up) and the rope (pulls along).")
  (step "Forces from a distance: Earth's gravity (pulls down).")
  (step "Draw three arrows from the sled, to scale, each labeled.")
  (answer "Three forces: gravity down, the ice up, the rope along"))
```

Now you finish one.

```check
(number
  (ask "A picture hangs from two wires, one at each top corner. How many forces act on the picture?")
  (answer 3) (from "1 + 2")
  (wrong-if 2 "Each wire pulls on the picture, and Earth pulls too: 3 forces.")
  (wrong-if 1 "Gravity is one, but each wire also pulls up on the picture.")
  (hint "Count what touches it, then add gravity."))
```

---

## Practice

```check
(choice
  (ask "A skydiver, before the parachute opens, falls with her body flat. This time, count the air too. Which forces act on her?")
  (right "Gravity down and the air pushing up")
  (wrong "Gravity down and the force of falling"
    "Falling is motion, not a force. The forces come from Earth (gravity) and from the air she pushes through.")
  (wrong "Only the air pushing up"
    "Earth's gravity still pulls her down. That is why she falls.")
  (hint "Which objects act on her: by touch, and from a distance?"))
```

```check
(choice
  (ask "A cat sits on a shelf. Which pair of forces appears in the cat's free-body diagram?")
  (right "Earth pulling the cat down; the shelf pushing the cat up")
  (wrong "The cat pushing the shelf down; the shelf pushing the cat up"
    "The cat pushing the shelf acts on the shelf. Only forces on the cat belong in its diagram.")
  (wrong "Earth pulling the cat down; the cat pulling Earth up"
    "The cat's pull acts on Earth, not on the cat.")
  (hint "Every force in the diagram must act on the cat."))
```

```check
(number
  (ask "A crate on a smooth floor is pushed right with 60 N and left with 45 N. Earth pulls it down with 200 N and the floor pushes up with 200 N. What is the net force, right as +?")
  (answer 15) (unit "N") (from "60 - 45 + 200 - 200")
  (wrong-if 505 "Adding every size ignores the directions. Up and down cancel; then 60 N right and 45 N left.")
  (hint "Up and down cancel. Then 60 + (-45)."))
```

---

So a free-body diagram shows one object and every force on it, to scale, so you can add them into the net force.
