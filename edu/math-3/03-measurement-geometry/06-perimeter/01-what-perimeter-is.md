# What perimeter is

```lesson
(objective "Explain perimeter as the distance all the way around a flat shape.")
(standards "3.MD.D.8")
(minutes 20)
(keywords "perimeter")
```

You can find how far it is all the way around a shape.

The **perimeter** of a flat shape is the distance all the way around it. An ant walks along the edge of this card. Move the slider to walk it around.

```figure
(define d (slider 'd 0 16 0 "Units walked" 1))
(define s 36)
(define x (cond ((<= d 5) (+ 70 (* s d))) ((<= d 8) 250) ((<= d 13) (- 250 (* s (- d 8)))) (else 70)))
(define y (cond ((<= d 5) 50) ((<= d 8) (+ 50 (* s (- d 5)))) ((<= d 13) 158) (else (- 158 (* s (- d 13))))))
(ms-grect 70 50 5 3 36 #f "5 units" "3 units")
(circle x y 7 'warm)
(ring x y 7 'ink 1.5)
(caption (if (= d 16) "All the way around: 16 units" (string-append (fmt d 0) " units walked")))
```

```check
(number
  (ask "The card is 5 units by 3 units. How far does the ant walk to go all the way around once?")
  (answer 16) (unit "units") (from "5 + 3 + 5 + 3")
  (wrong-if 8 "5 + 3 is only 2 sides, halfway around. The ant walks 4 sides: 5 + 3 + 5 + 3.")
  (wrong-if 15 "5 x 3 is the area, the squares inside. The ant walks around the edge: add the 4 sides.")
  (hint "Move the slider all the way.")
  (hint "Add the 4 sides: 5 + 3 + 5 + 3."))
```

---

## Perimeter is a length

Perimeter is measured in units of length, like inches, feet or meters. You do not count squares inside. You add up the lengths of the sides.

A fence goes around a garden. The length of the fence is the perimeter of the garden.

```check
(choice
  (ask "Which is about perimeter?")
  (right "The length of a fence around a yard")
  (wrong "The grass that covers a yard"
    "Grass covers the inside of the yard. That is area. A fence goes around the edge: that is perimeter.")
  (wrong "How heavy a fence is"
    "How heavy something is is about mass. Perimeter is the distance around.")
  (hint "Perimeter goes around the edge."))
```

---

## Perimeter or area?

Perimeter is the distance around. Area is the space inside. The same shape has both.

```figure
(rect 72 52 176 104 'cool)
(frame 70 50 180 108 'ink 5)
(rect 110 92 100 22 'paper)
(label 160 107 "area: inside" 'small 'bold)
(label 160 40 "perimeter: around" 'small 'bold)
(caption "The thick edge is the perimeter.")
```

```check
(choice
  (ask "You put a ribbon around the edge of a picture. What does the ribbon's length measure?")
  (right "Its perimeter")
  (wrong "Its area"
    "Area is the space inside the picture. The ribbon only goes along the edge.")
  (hint "Does the ribbon go around or cover the inside?"))
```

---

## A worked example

```figure
(ms-poly '(100 50 240 50 240 155 100 155) '("4 ft" "3 ft" "4 ft" "3 ft") #f)
```

```example
(example
  (problem "A rug is 4 feet by 3 feet. What is its perimeter?")
  (step "Go around the rug and list every side: 4, 3, 4, 3.")
  (step "Add the sides: 4 + 3 + 4 + 3.")
  (step (number (ask "4 + 3 + 4 + 3 = ?") (answer 14) (from "4 + 3 + 4 + 3")
          (wrong-if 12 "4 x 3 is the area. Add all 4 sides for the perimeter.")))
  (answer "The perimeter is 14 feet."))
```

---

## Now you finish one

```figure
(ms-poly '(80 60 260 60 260 140 80 140) '("9 in" "4 in" "9 in" "4 in") #f)
```

A book cover is 9 inches by 4 inches.

```check
(number
  (ask "What is the perimeter of the book cover, in inches?")
  (answer 26) (unit "in") (from "9 + 4 + 9 + 4")
  (wrong-if 13 "9 + 4 is only 2 sides. Go all the way around: 9 + 4 + 9 + 4.")
  (wrong-if 36 "9 x 4 is the area. Add all 4 sides for the perimeter.")
  (hint "Add all 4 sides."))
```

---

## Practice

```check
(number
  (ask "A square has 4 sides of 5 cm each. What is its perimeter, in cm?")
  (answer 20) (unit "cm") (from "5 + 5 + 5 + 5")
  (wrong-if 25 "5 x 5 is the area. The perimeter adds the 4 sides: 5 + 5 + 5 + 5.")
  (wrong-if 10 "That is only 2 sides. A square has 4 sides.")
  (hint "Add 5 four times."))
```

```check
(choice
  (ask "Which unit could a perimeter be in?")
  (right "Feet")
  (wrong "Square feet"
    "Square feet measure area, the space inside. Perimeter is a length, like feet.")
  (wrong "Kilograms"
    "Kilograms measure mass. Perimeter is a length, like feet.")
  (hint "Perimeter is a distance."))
```

Now you know that perimeter is the distance all the way around a flat shape.
