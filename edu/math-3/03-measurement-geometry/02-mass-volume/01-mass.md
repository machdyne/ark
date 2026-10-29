# Mass

```lesson
(objective "Explain mass as how much matter an object has, and compare masses with a balance.")
(standards "3.MD.A.2")
(minutes 20)
(keywords "mass" "balance (for mass)")
```

You can tell which of 2 objects has more mass.

Everything is made of matter, or stuff. **Mass** is how much matter an object has. On Earth, an object with more mass is heavier to lift.

A brick and a sponge can be the same size. The brick has much more matter packed in it. So the brick has more mass.

```check
(choice
  (ask "A brick and a sponge are the same size. Which has more mass?")
  (right "The brick")
  (wrong "The sponge"
    "The sponge is full of tiny holes with air in them. The brick has much more matter, so it has more mass.")
  (wrong "The same mass"
    "Being the same size does not mean the same mass. The brick is much heavier to lift, so it has more mass.")
  (hint "Which one is heavier to lift?"))
```

---

## A balance

A **balance** compares 2 masses. It has a bar with a pan at each end. You put an object in each pan.

The side with more mass goes down. The side with less mass goes up.

```figure
(ms-balance "apple" "grape" -1)
(caption "The apple side is down.")
```

```check
(choice
  (ask "On this balance, which has more mass?")
  (right "The apple")
  (wrong "The grape"
    "The grape side is up. The side with more mass goes down, and that is the apple side.")
  (hint "Which side goes down?"))
```

---

## When the balance is level

When the bar is level, the 2 sides have the same mass.

Here 1 box is in each pan. The bar is level.

```figure
(ms-balance "box A" "box B" 0)
(caption "The bar is level.")
```

```check
(choice
  (ask "The bar is level. What do you know about box A and box B?")
  (right "The same mass")
  (wrong "Box A has more mass"
    "If box A had more mass, its side would go down. The bar is level, so the masses are the same.")
  (wrong "They are the same size"
    "A balance shows mass, not size. A small rock and a big pillow can have the same mass.")
  (hint "When does a side go down?"))
```

---

## Big is not always heavy

A bigger object does not always have more mass. A beach ball is big, but it is full of air.

Here a beach ball and a small rock are on the balance.

```figure
(ms-balance "ball" "rock" 1)
(caption "The rock side is down.")
```

```check
(choice
  (ask "Which has more mass: the beach ball or the small rock?")
  (right "The small rock")
  (wrong "The beach ball, because it is bigger"
    "The beach ball is bigger, but it is mostly air. The balance shows the rock side going down.")
  (wrong "You cannot tell"
    "You can tell from the balance. The rock side goes down, so the rock has more mass.")
  (hint "Look at the balance, not at the size."))
```

---

## A worked example

```figure
(ms-balance "pen" "pencil" -1)
(caption "Pen and pencil: the pen side is down.")
```

```example
(example
  (problem "The pen has more mass than the pencil. The pencil has more mass than the crayon. Which has the least mass?")
  (step "The pen is more than the pencil.")
  (step "The pencil is more than the crayon.")
  (step "So the pen is the most and the crayon is the least.")
  (answer "The crayon has the least mass."))
```

---

## Now you finish one

```figure
(ms-balance "cup" "spoon" -1)
(caption "Cup and spoon: the cup side is down.")
```

The cup has more mass than the spoon. On another balance, the spoon and a fork are level.

```check
(choice
  (ask "Which has more mass: the cup or the fork?")
  (right "The cup")
  (wrong "The fork"
    "The fork has the same mass as the spoon. The cup has more mass than the spoon, so it has more than the fork too.")
  (wrong "The same mass"
    "The fork is level with the spoon, not with the cup. The cup is heavier than the spoon.")
  (hint "The fork has the same mass as the spoon."))
```

---

## Practice

```figure
(ms-balance "shoe" "book" 1)
```

```check
(choice
  (ask "Which has less mass?")
  (right "The shoe")
  (wrong "The book"
    "The book side is down, so the book has more mass. The shoe side is up: it has less.")
  (hint "The side with less mass goes up."))
```

---

```check
(choice
  (ask "Which word is about how much matter an object has?")
  (right "Mass")
  (wrong "Size"
    "Size is how much space an object takes up. A big beach ball can have less matter than a small rock.")
  (wrong "Shape"
    "Shape is what an object looks like. Clay rolled into a ball or a snake has the same matter.")
  (hint "A balance compares it."))
```

```check
(choice
  (ask "You put a bracelet in one pan and a toy car in the other. The bar is level. What is true?")
  (right "The same mass")
  (wrong "The toy car has more mass"
    "If the toy car had more mass, its side would go down. A level bar means the masses are the same.")
  (wrong "The bracelet has more mass"
    "If the bracelet had more mass, its side would go down. A level bar means the masses are the same.")
  (hint "What does a level bar show?"))
```

Now you know that mass is how much matter an object has, and a balance shows which has more.
