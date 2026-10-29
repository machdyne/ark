# How many more, how many fewer

```lesson
(objective "Solve how many more and how many fewer problems from a graph with a scale.")
(standards "3.MD.B.3")
(minutes 25)
```

You can use a graph to find how many more or how many fewer.

First read both numbers from the graph. Then subtract the smaller from the bigger.

Dogs: 18. Fish: 6. So there are 18 - 6 = 12 more dogs than fish.

```figure
(ms-bars '(("Cats" 14) ("Dogs" 18) ("Fish" 6) ("Frogs" 10)) 20 2 'cool)
(label 170 16 "Pets at a show" 'small 'bold)
```

```check
(number
  (ask "How many more cats than frogs were at the show?")
  (answer 4) (from "14 - 10")
  (wrong-if 24 "Adding finds how many in all. \"How many more\" asks for the difference: subtract.")
  (wrong-if 2 "That counts 2 lines. Each line is 2, so 2 lines are 4.")
  (hint "Read the cats bar and the frogs bar.")
  (hint "14 - 10 = ?"))
```

---

## How many fewer

"How many fewer" also asks for the difference. Subtract the smaller number from the bigger one.

```figure
(ms-bars '(("Jan" 30) ("Feb" 45) ("Mar" 60) ("Apr" 25)) 70 10 'warm)
(label 170 16 "Books read" 'small 'bold)
```

```check
(number
  (ask "How many fewer books were read in January than in March?")
  (answer 30) (from "60 - 30")
  (wrong-if 90 "Adding finds how many in all. \"How many fewer\" asks for the difference.")
  (wrong-if 3 "That counts 3 lines between the bars. Each line is 10 books.")
  (hint "January: 30. March: 60.")
  (hint "60 - 30 = ?"))
```

---

## On a picture graph

On a picture graph, find each number with the key first. Then subtract.

```figure
(ms-pgraph '(("Apple" 4) ("Banana" 3) ("Grape" 6) ("Pear" 2)) "= 5 votes")
(label 160 14 "Favorite fruit" 'small 'bold)
```

```check
(number
  (ask "How many more votes did grape get than pear?")
  (answer 20) (from "6 * 5 - 2 * 5")
  (wrong-if 4 "Grape has 4 more circles than pear. But each circle is 5 votes, so that is 4 x 5.")
  (wrong-if 40 "That adds grape and pear. \"How many more\" asks for the difference.")
  (hint "Grape: 6 circles of 5. Pear: 2 circles of 5.")
  (hint "30 - 10 = ?"))
```

---

## A worked example

```figure
(ms-bars '(("Red" 15) ("Blue" 25) ("Green" 10) ("Gray" 20)) 30 5 'cool)
(label 170 16 "Cars in the lot" 'small 'bold)
```

```example
(example
  (problem "How many more blue cars than green cars are in the lot?")
  (step "Read the scale: it counts by 5s.")
  (step "Blue: 25. Green: 10.")
  (step (number (ask "25 - 10 = ?") (answer 15) (from "25 - 10")
          (wrong-if 35 "That adds. How many more asks for the difference: subtract.")))
  (answer "There are 15 more blue cars than green cars."))
```

---

## Now you finish one

```figure
(ms-bars '(("Red" 15) ("Blue" 25) ("Green" 10) ("Gray" 20)) 30 5 'cool)
(label 170 16 "Cars in the lot" 'small 'bold)
```

Use the cars graph. Gray: 20. Red: 15.

```check
(number
  (ask "How many fewer red cars than gray cars are there?")
  (answer 5) (from "20 - 15")
  (wrong-if 35 "That adds. Subtract to find how many fewer.")
  (wrong-if 1 "The bars are 1 line apart, but each line is 5 cars.")
  (hint "20 - 15 = ?"))
```

---

## Practice

```figure
(ms-bars '(("Red" 15) ("Blue" 25) ("Green" 10) ("Gray" 20)) 30 5 'cool)
(label 170 16 "Cars in the lot" 'small 'bold)
```

```check
(number
  (ask "How many cars are red or blue in all?")
  (answer 40) (from "15 + 25")
  (wrong-if 10 "That is the difference. \"In all\" puts them together, so add.")
  (hint "Red: 15. Blue: 25. Add them."))
```

---

```figure
(ms-pgraph '(("Apple" 4) ("Banana" 3) ("Grape" 6) ("Pear" 2)) "= 5 votes")
(label 160 14 "Favorite fruit" 'small 'bold)
```

```check
(number
  (ask "How many fewer votes did banana get than apple?")
  (answer 5) (from "4 * 5 - 3 * 5")
  (wrong-if 1 "Banana has 1 circle fewer. Each circle is 5 votes.")
  (wrong-if 35 "That adds apple and banana. Subtract to find how many fewer.")
  (hint "Apple: 4 circles. Banana: 3 circles."))
```

---

```figure
(ms-bars '(("Jan" 30) ("Feb" 45) ("Mar" 60) ("Apr" 25)) 70 10 'warm)
(label 170 16 "Books read" 'small 'bold)
```

```check
(choice
  (ask "Which month had 15 more books than January?")
  (right "February" (true "45 - 30 = 15"))
  (wrong "March" (false "60 - 30 = 15")
    "March had 60, which is 30 more than January. Look for 30 + 15.")
  (wrong "April" (false "25 - 30 = 15")
    "April had 25, which is fewer than January's 30.")
  (hint "January had 30. What is 30 + 15?"))
```

Now you can find how many more or fewer from a graph: read both numbers with the scale, then subtract.
