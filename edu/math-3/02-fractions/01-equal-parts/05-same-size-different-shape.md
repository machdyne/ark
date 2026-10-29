# Same size, different shape

```lesson
(objective "Explain that equal parts of one whole can have different shapes but must be the same size.")
(standards "3.G.A.2")
(minutes 20)
```

Equal parts must be the same size, but they do not need the same
shape.

Here are 3 squares of the same size. Each one is cut into 4 equal
parts in a different way.

```figure
(label 55 40 "A" 'body 'bold)
(fr-square 15 60 80 4 'grid 1 'warm)
(label 160 40 "B" 'body 'bold)
(fr-square 120 60 80 4 'tri 1 'warm)
(label 265 40 "C" 'body 'bold)
(fr-cuts 225 60 80 80 (fr-even 4) 1 'warm #f)
(caption "3 squares, each cut into 4 equal parts.")
```

```check
(choice
  (ask "Each square is cut into 4 equal parts. Is each shaded part 1 fourth of its square?")
  (right "Yes: each square has 4 equal parts")
  (wrong "Only A: fourths must be little squares"
    "Fourths do not have to be squares. Each square here is cut into 4 parts of the same size, so each part is 1 fourth.")
  (wrong "No: the shaded parts have different shapes"
    "A shape can be cut into equal parts in more than 1 way. Each square has 4 equal parts, so each part is 1 fourth.")
  (hint "Count the parts in each square. Are the parts of one square all the same size?"))
```

---

## 2 halves, 2 shapes

The line from corner to corner cuts the square into 2 triangles. Move
the slider to turn the shaded triangle. It fits the other one
exactly, so the 2 triangles are the same size.

```figure
(define a (slider 'turn 0 180 0 "Turn" 15))
(define d (deg->rad a))
(define (rx x y) (+ 160 (- (* (- x 160) (cos d)) (* (- y 110) (sin d)))))
(define (ry x y) (+ 110 (* (- x 160) (sin d)) (* (- y 110) (cos d))))
(frame 100 50 120 120 'ink 1.5)
(line 100 170 220 50 'ink 1)
(poly (list (rx 100 50) (ry 100 50) (rx 220 50) (ry 220 50) (rx 100 170) (ry 100 170)) 'warm)
(path (list (rx 100 50) (ry 100 50) (rx 220 50) (ry 220 50) (rx 100 170) (ry 100 170) (rx 100 50) (ry 100 50)) 'ink 1)
(caption (if (= a 180) "It fits the other triangle exactly." "Turn it all the way."))
```

```check
(choice
  (ask "So what is each triangle?")
  (right "1 half of the square")
  (wrong "1 fourth of the square"
    "The square is cut into only 2 parts here, and they are the same size. 1 of 2 equal parts is 1 half.")
  (wrong "No: a half must be a rectangle"
    "A half can have any shape. It only has to be 1 of 2 parts of the same size.")
  (hint "How many equal parts does the square have?"))
```

---

## Same whole, same size

A square cut straight down the middle makes 2 rectangles. Each one is
also 1 half of the square.

So a triangle half and a rectangle half of the same square are the
same size. Each one covers the same amount: half of the square.

```figure
(label 90 35 "A" 'body 'bold)
(fr-cuts 40 50 100 100 '(0.5) 1 'warm #f)
(label 230 35 "B" 'body 'bold)
(fr-square 180 50 100 2 'tri 1 'warm)
(caption "Both squares are the same size. Each has 1 half shaded.")
```

```check
(choice
  (ask "Which shaded part is bigger, the rectangle in A or the triangle in B?")
  (right "Neither: they are the same size")
  (wrong "The rectangle"
    "The rectangle looks bigger to some people, but it is half of the square. The triangle is half of a square of the same size too.")
  (wrong "The triangle"
    "The triangle is longer from corner to corner, but it is also thinner. Each part is half of the same square.")
  (hint "What is each shaded part of its square?"))
```

---

## Worked example

```example
(example
(problem "Two squares are the same size. One is cut into 8 thin strips. The other is cut into 8 triangles from the middle. All the parts of each square are equal. Is a strip bigger than a triangle?")
(step "The first square has 8 equal parts, so a strip is 1 eighth of it.")
(step "The second square has 8 equal parts, so a triangle is 1 eighth of it.")
(step "The squares are the same size, so 1 eighth of each is the same size.")
(answer "No. The strip and the triangle are the same size."))
```

```figure
(fr-cuts 30 60 110 110 (fr-even 8) 1 'cool #f)
(fr-square 180 60 110 8 'tri 1 'cool)
(caption "Each square is cut into 8 equal parts.")
```

---

## Practice

```check
(choice
  (ask "Mia and Ty have the same size sandwich. Mia cuts hers into 2 triangles. Ty cuts his into 2 rectangles. All 4 parts are halves. Who has a bigger half?")
  (right "Neither: the halves are the same size")
  (wrong "Mia, because triangles are pointy"
    "The shape does not change the size. Each part is 1 half of the same size sandwich.")
  (wrong "Ty, because rectangles look bigger"
    "The rectangles may look bigger, but each is 1 half of the same size sandwich. So all 4 halves are the same size.")
  (hint "What does each person have of the same size sandwich?"))
```

---

```figure
(fr-cuts 60 50 200 120 '(0.25 0.5) 1 'warm #f)
(line 160 110 260 110 'ink 1)
(caption "A rectangle cut into 4 parts.")
```

The left half is cut into 2 tall parts. The right half is cut into 2
wide parts.

```check
(choice
  (ask "The parts have 2 different shapes. Are they 4 equal parts?")
  (right "Yes: all 4 are the same size")
  (wrong "No: there are 2 shapes"
    "Equal parts can have different shapes. Each half of the rectangle is cut into 2 equal parts, so each part is half of a half.")
  (wrong "No: the wide parts are bigger"
    "The wide parts are wider but shorter. Each one is half of the right half, and each tall part is half of the left half.")
  (hint "Both halves of the rectangle are the same size.")
  (hint "Each half is cut into 2 equal parts."))
```

So: equal parts can have different shapes, but each one must be the
same size.
