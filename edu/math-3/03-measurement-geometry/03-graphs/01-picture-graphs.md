# Picture graphs with a key

```lesson
(objective "Read a picture graph whose key shows that each picture stands for more than 1.")
(standards "3.MD.B.3")
(minutes 20)
(keywords "key (of a graph)" "scale (of a graph)")
```

You can read a picture graph where 1 picture stands for more than 1 thing.

A class voted for their favorite fruit. The box under the graph is the **key**. The key tells what 1 picture stands for.

```figure
(ms-pgraph '(("Apple" 4) ("Banana" 3) ("Grape" 5) ("Pear" 2)) "= 2 votes")
(label 160 14 "Favorite fruit" 'small 'bold)
```

```check
(number
  (ask "Look at the key. How many votes does 1 circle stand for?")
  (answer 2)  (wrong-if 1 "In this graph, 1 circle is not 1 vote. The key says each circle stands for 2 votes.")
  (hint "Read the box under the graph."))
```

---

## The scale

The number that each picture stands for is the **scale** of the graph. Here the scale is 2. So count by 2s.

Banana has 3 circles. Count 2, 4, 6. So 6 children voted for banana.

```figure
(ms-pgraph '(("Apple" 4) ("Banana" 3) ("Grape" 5) ("Pear" 2)) "= 2 votes")
(label 160 14 "Favorite fruit" 'small 'bold)
```

```check
(number
  (ask "How many children voted for grape?")
  (answer 10) (from "5 * 2")
  (wrong-if 5 "5 is the number of circles. Each circle is 2 votes, so count by 2s 5 times.")
  (wrong-if 7 "5 + 2 adds the circles and the key. Count by 2s: 2, 4, 6, 8, 10.")
  (hint "Grape has 5 circles.")
  (hint "Count by 2s 5 times."))
```

---

## A scale of 5

Graphs can have other scales. Here each circle stands for 5 books. Count by 5s.

```figure
(ms-pgraph '(("Mon" 2) ("Tue" 4) ("Wed" 3) ("Thu" 6)) "= 5 books")
(label 160 14 "Books read" 'small 'bold)
```

```check
(number
  (ask "How many books were read on Thursday?")
  (answer 30) (from "6 * 5")
  (wrong-if 6 "6 is the number of circles. Each circle is 5 books.")
  (wrong-if 12 "That counts by 2s. The key says 1 circle is 5 books, so count by 5s.")
  (hint "Count by 5s for each circle on Thursday.")
  (hint "6 circles: 5, 10, 15, 20, 25, 30."))
```

---

## A worked example

```figure
(ms-pgraph '(("Red" 3) ("Blue" 7) ("Green" 4)) "= 10 cars")
(label 160 14 "Car colors" 'small 'bold)
```

```example
(example
  (problem "How many blue cars are there?")
  (step "Read the key: 1 circle stands for 10 cars.")
  (step "Blue has 7 circles.")
  (step "Count by 10s 7 times: 10, 20, 30, 40, 50, 60, 70.")
  (answer "There are 70 blue cars."))
```

---

## Now you finish one

```figure
(ms-pgraph '(("Red" 3) ("Blue" 7) ("Green" 4)) "= 10 cars")
(label 160 14 "Car colors" 'small 'bold)
```

Green has 4 circles. Each circle is 10 cars.

```check
(number
  (ask "How many green cars are there?")
  (answer 40) (from "4 * 10")
  (wrong-if 4 "4 is the number of circles. Each circle is 10 cars: count by 10s.")
  (wrong-if 14 "4 + 10 adds the circles and the key. Count by 10s 4 times.")
  (hint "Count by 10s 4 times."))
```

---

## Practice

```figure
(ms-pgraph '(("Cats" 3) ("Dogs" 5) ("Fish" 2) ("Birds" 1)) "= 4 pets")
(label 160 14 "Our pets" 'small 'bold)
```

```check
(number
  (ask "How many dogs are there?")
  (answer 20) (from "5 * 4")
  (wrong-if 5 "5 is the number of pictures. Each picture is 4 pets.")
  (wrong-if 9 "5 + 4 adds. Count by 4s 5 times: 4, 8, 12, 16, 20.")
  (hint "The key says 1 picture is 4 pets."))
```

```check
(number
  (ask "How many birds are there?")
  (answer 4) (from "1 * 4")
  (wrong-if 1 "1 picture stands for 4 pets, not 1.")
  (hint "Birds have 1 picture. What does 1 picture stand for?"))
```

---

```check
(choice
  (ask "A picture graph has 3 stars for Saturday. Its key says each star is 10 kites. How many kites is that?")
  (right "30 kites" (true "3 * 10 = 30"))
  (wrong "3 kites" (false "3 * 10 = 3")
    "That counts each star as 1. The key says each star is 10 kites.")
  (wrong "13 kites" (false "3 * 10 = 13")
    "That adds 3 + 10. Each star is 10 kites, so count by 10s 3 times.")
  (hint "Count by 10s for each star."))
```

Now you can read a picture graph: read the key first, then count by its scale.
