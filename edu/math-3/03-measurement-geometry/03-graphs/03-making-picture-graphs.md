# Making a picture graph

```lesson
(objective "Draw a picture graph with a scale from a table of data.")
(standards "3.MD.B.3")
(minutes 25)
```

You can draw a picture graph from a table.

A class counted their pets. To draw the graph, first choose a key. Here 1 circle stands for 4 pets.

| Pet | Number |
|---|---|
| Dogs | 12 |
| Cats | 8 |
| Fish | 6 |

For each row, find how many 4s make the number. Dogs: 12 is 3 fours. So dogs get 3 circles.

```check
(number
  (ask "Each circle is 4 pets. How many circles do the 8 cats get?")
  (answer 2) (unit "circles") (from "8 / 4")
  (wrong-if 8 "8 circles would be 32 pets. Each circle is 4 pets, so 8 cats need fewer circles.")
  (wrong-if 4 "4 is the key. How many 4s make 8?")
  (hint "How many 4s make 8?"))
```

---

## Draw the rows

Move each slider to draw the right number of circles. The key is 4 pets.

```figure
(define d (slider 'd 0 5 0 "Dogs" 0.5))
(define c (slider 'c 0 5 0 "Cats" 0.5))
(ms-pgraph (list (list "Dogs" d) (list "Cats" c)) "= 4 pets")
(label 160 14 "Our pets" 'small 'bold)
```

```check
(number
  (ask "Draw the dogs' row so it shows 12. How many circles did you draw?")
  (answer 3) (unit "circles") (from "12 / 4")
  (wrong-if 12 "12 circles would be 48 pets. Each circle is 4 pets, so you need 12 ÷ 4.")
  (wrong-if 4 "4 circles would be 16 pets. Count by 4s: 4, 8, 12. That is 3 circles.")
  (hint "Count by 4s until you reach 12.")
  (hint "4, 8, 12: how many 4s?"))
```

---

## When you need half a picture

The 6 fish do not make whole 4s. 6 is 4 and 2 more. 2 is half of 4.

So the fish row gets 1 whole circle and a half.

```figure
(ms-pgraph '(("Dogs" 3) ("Cats" 2) ("Fish" 1.5)) "= 4 pets")
(label 160 14 "Our pets" 'small 'bold)
```

```check
(choice
  (ask "The key is 4 pets. How do you show 10 birds?")
  (right "2 and a half circles")
  (wrong "10 circles"
    "10 circles would be 40 birds. Each circle is 4 birds.")
  (wrong "2 whole circles"
    "2 circles are 8 birds. You need 2 more, and 2 is half of 4.")
  (hint "10 is 8 and 2 more.")
  (hint "8 is 2 circles. 2 is half a circle."))
```

---

## Choose a good key

Pick a key that makes the rows easy to count. The numbers 20, 35 and 15 all count by 5s. So a key of 5 works well.

A key of 1 would need 35 pictures in a row. That is too many to draw.

```check
(choice
  (ask "A table shows 40, 70 and 30. Which key is best?")
  (right "1 picture = 10")
  (wrong "1 picture = 1"
    "Then 70 would need 70 pictures. That is too many to draw and count.")
  (wrong "1 picture = 7"
    "40 and 30 are not made of whole 7s. Then you would need parts of pictures that are hard to draw.")
  (hint "All 3 numbers count by the same number. Which?"))
```

---

## A worked example

| Fruit | Sold |
|---|---|
| Plums | 30 |
| Figs | 15 |

```example
(example
  (problem "Draw a picture graph with the key 1 circle = 10 fruits.")
  (step "Plums: 30 is 3 tens. Draw 3 circles.")
  (step "Figs: 15 is 1 ten and 5 more. 5 is half of 10.")
  (step "Draw 1 circle and a half for figs.")
  (answer "Plums: 3 circles. Figs: 1 circle and a half."))
```

---

## Now you finish one

| Snack | Votes |
|---|---|
| Nuts | 10 |
| Corn | 16 |

The key is 1 circle = 2 votes. Nuts get 5 circles.

```check
(number
  (ask "How many circles do the 16 votes for corn get?")
  (answer 8) (unit "circles") (from "16 / 2")
  (wrong-if 16 "16 circles would be 32 votes. Each circle is 2 votes.")
  (wrong-if 14 "Find how many 2s make 16, not 16 - 2.")
  (hint "Count by 2s to 16."))
```

---

## Practice

```check
(number
  (ask "The key is 1 star = 5 kites. How many stars show 25 kites?")
  (answer 5) (unit "stars") (from "25 / 5")
  (wrong-if 25 "25 stars would be 125 kites. Each star is 5 kites.")
  (hint "How many 5s make 25?"))
```

```check
(choice
  (ask "The key is 1 star = 10 kites. How do you show 45 kites?")
  (right "4 whole stars and a half")
  (wrong "45 stars"
    "45 stars would be 450 kites. Each star is 10 kites.")
  (wrong "5 whole stars"
    "5 stars would be 50 kites. 45 is 4 tens and 5 more, and 5 is half of 10.")
  (hint "45 is 40 and 5 more."))
```

---

```check
(number
  (ask "The key is 1 circle = 3 cans. How many circles show 18 cans?")
  (answer 6) (unit "circles") (from "18 / 3")
  (wrong-if 15 "That subtracts 3. Find how many 3s make 18.")
  (wrong-if 18 "18 circles would be 54 cans. Each circle is 3 cans.")
  (hint "3 x ? = 18"))
```

Now you can draw a picture graph: choose a key, then find how many pictures each number needs.
