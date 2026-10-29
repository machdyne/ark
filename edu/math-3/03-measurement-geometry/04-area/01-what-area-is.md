# What area is

```lesson
(objective "Explain area as the amount of flat space a shape covers.")
(standards "3.MD.C.5a")
(minutes 15)
(keywords "area")
```

You can tell which flat shape covers more space.

The **area** of a flat shape is how much space it covers. A big rug has more area than a small mat. It covers more of the floor.

```figure
(rect 30 40 170 120 'cool)
(frame 30 40 170 120 'ink 2)
(rect 220 120 70 50 'warm)
(frame 220 120 70 50 'ink 2)
(label 115 180 "rug" 'body 'bold)
(label 255 190 "mat" 'body 'bold)
(caption "A rug and a mat on a floor")
```

```check
(choice
  (ask "Which has more area?")
  (right "The rug")
  (wrong "The mat"
    "The mat is smaller. It covers less of the floor, so it has less area.")
  (wrong "The same area"
    "The rug covers much more of the floor than the mat. So their areas are not the same.")
  (hint "Which one covers more of the floor?"))
```

---

## Area is the inside

Area is the space inside a shape, not the line around it. When you paint a wall, you paint its area.

```figure
(rect 60 40 200 140 'grey)
(frame 60 40 200 140 'ink 3)
(rect 70 100 180 22 'paper)
(label 160 115 "area: all of the inside" 'small 'bold)
(caption "The shaded inside is the area.")
```

```check
(choice
  (ask "You cover a table top with paper. What are you covering?")
  (right "Its area")
  (wrong "Only its edge"
    "The paper covers the whole top, not just the edge. The space it covers is the area.")
  (wrong "Its height"
    "Height is how tall the table is. The paper lies flat on top: it covers the area.")
  (hint "Is the paper on the inside of the top, or only around it?"))
```

---

## Compare by putting one on the other

To compare 2 areas, you can lay one shape on the other. If one fits inside the other with space left, it has less area.

```figure
(define s (toggle 'on "Lay the card on the book" #f))
(rect 40 50 150 110 'cool)
(frame 40 50 150 110 'ink 2)
(label 115 40 "book cover" 'small)
(if s
    (begin (rect 50 60 90 70 'warm) (frame 50 60 90 70 'ink 2) (label 95 145 "card" 'small))
    (begin (rect 220 80 90 70 'warm) (frame 220 80 90 70 'ink 2) (label 265 170 "card" 'small)))
```

```check
(choice
  (ask "The card fits inside the book cover, with space left over. What does that tell you?")
  (right "The card has less area than the book cover")
  (wrong "The card has more area"
    "If the card had more area, it would stick out past the book cover. It fits inside with space left.")
  (wrong "The same area"
    "Same area would cover it exactly. Here part of the book cover is still showing.")
  (hint "Is any of the book cover still showing?"))
```

---

## Different shapes, same area

Two shapes can look different and still cover the same space. These shapes are each made of the same 4 squares, put in different places.

```figure
(ms-tiles 30 60 4 1 30 'warm)
(ms-tiles 200 45 2 2 30 'warm)
(caption "4 squares in a line; 4 squares in a block")
```

```check
(choice
  (ask "A long strip and a block are each made of the same 4 squares. Which has more area?")
  (right "The same area")
  (wrong "The long strip"
    "The strip is longer, but it is thinner. It still covers just 4 squares.")
  (wrong "The block"
    "The block is wider, but it is shorter. It covers 4 squares, the same as the strip.")
  (hint "Count the squares in each shape."))
```

---

## A worked example

```example
(example
  (problem "A blanket and a towel lie on a bed. The towel fits on the blanket, and the blanket still shows all around it. Which has more area?")
  (step "Area is how much flat space each one covers.")
  (step "The towel fits on top of the blanket with space left over.")
  (step "So the towel covers less space.")
  (answer "The blanket has more area."))
```

---

## Now you finish one

You lay a sticker on a postcard. The sticker fits on it, and the postcard shows all around the sticker.

```check
(choice
  (ask "Which has more area?")
  (right "The postcard")
  (wrong "The sticker"
    "The sticker fits on the postcard with space around it. So it covers less space.")
  (wrong "You cannot tell without a ruler"
    "You can tell by laying one on the other. The one that fits inside has less area.")
  (hint "Which one fits on the other?"))
```

---

## Practice

```check
(choice
  (ask "Shape A is made of 6 squares. Shape B is made of the same 6 squares, put in a different way. Which has more area?")
  (right "The same area")
  (wrong "The one that is longer"
    "Moving the squares changes the shape, not the space they cover. Both cover 6 squares.")
  (wrong "The one that is taller"
    "Moving the squares changes the shape, not the space they cover. Both cover 6 squares.")
  (hint "Do both shapes cover the same squares?"))
```

---

```check
(choice
  (ask "Which of these is about area?")
  (right "How much paper you need to cover a book")
  (wrong "How heavy a book is"
    "How heavy something is is about mass. Area is about how much flat space is covered.")
  (wrong "How long a pencil is"
    "That is a length. Area is about how much flat space a shape covers.")
  (hint "Area is about covering flat space."))
```

```check
(choice
  (ask "Square A fits inside square B with room to spare. Which has less area?")
  (right "Square A")
  (wrong "Square B"
    "B is the one with room to spare around A. So B covers more and A covers less.")
  (hint "Which one fits inside the other?"))
```

Now you know that area is how much flat space a shape covers.
