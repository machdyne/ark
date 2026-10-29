# Half pictures

```lesson
(objective "Read half a picture on a picture graph with a scale.")
(standards "3.MD.B.3")
(minutes 20)
```

You can read a half picture on a picture graph.

Sometimes a row ends with half a picture. Half a picture stands for half of the scale.

Here each circle is 2 votes. So half a circle is 1 vote.

```figure
(ms-pgraph '(("Soccer" 3.5) ("Swim" 2) ("Tennis" 1.5)) "= 2 votes")
(label 160 14 "Favorite sport" 'small 'bold)
```

```check
(number
  (ask "Each circle is 2 votes. How many votes is half a circle?")
  (answer 1) (from "2 / 2")
  (wrong-if 2 "2 votes is a whole circle. Half a circle is half of 2.")
  (hint "What is half of 2?"))
```

---

## Count the whole pictures, then the half

Soccer has 3 whole circles and a half. Count by 2s for the whole circles: 2, 4, 6. Then add 1 for the half.

$$ 6 + 1 = 7 $$

```figure
(ms-pgraph '(("Soccer" 3.5) ("Swim" 2) ("Tennis" 1.5)) "= 2 votes")
(label 160 14 "Favorite sport" 'small 'bold)
```

```check
(number
  (ask "How many votes did tennis get?")
  (answer 3) (from "2 + 1")
  (wrong-if 4 "The second circle is only half. It is 1 vote, not 2. So 2 + 1 = 3.")
  (wrong-if 2 "Do not forget the half circle. It is 1 more vote.")
  (hint "Tennis has 1 whole circle and a half.")
  (hint "1 whole circle is 2. Half is 1."))
```

---

## Half of 10

When each picture is 10, half a picture is 5.

```figure
(ms-pgraph '(("Plums" 2.5) ("Figs" 4) ("Limes" 3.5)) "= 10 fruits")
(label 160 14 "Fruit sold" 'small 'bold)
```

```check
(number
  (ask "How many limes were sold?")
  (answer 35) (from "3 * 10 + 5")
  (wrong-if 40 "The last circle is only half. Half of 10 is 5, not 10.")
  (wrong-if 31 "Half a circle is half of 10, which is 5, not 1.")
  (hint "3 whole circles are 30.")
  (hint "Half a circle is half of 10."))
```

---

## A worked example

```figure
(ms-pgraph '(("Plums" 2.5) ("Figs" 4) ("Limes" 3.5)) "= 10 fruits")
(label 160 14 "Fruit sold" 'small 'bold)
```

```example
(example
  (problem "How many plums were sold?")
  (step "The key says 1 circle is 10 fruits.")
  (step "Plums have 2 whole circles: 10, 20.")
  (step "The half circle is half of 10, which is 5.")
  (step (number (ask "20 + 5 = ?") (answer 25) (from "20 + 5")
          (wrong-if 30 "The half circle is 5, not 10. 20 + 5 = 25.")))
  (answer "25 plums were sold."))
```

---

## Now you finish one

```figure
(ms-pgraph '(("Red" 4.5) ("Blue" 2) ("Gold" 1.5)) "= 4 beads")
(label 160 14 "Beads in a jar" 'small 'bold)
```

Each circle is 4 beads. Red has 4 whole circles and a half. 4 whole circles are 16 beads.

```check
(number
  (ask "How many red beads are there?")
  (answer 18) (from "4 * 4 + 2")
  (wrong-if 20 "The last circle is only half. Half of 4 is 2, so add 2, not 4.")
  (wrong-if 17 "Half a circle is half of 4, which is 2, not 1.")
  (hint "Half of 4 is 2.")
  (hint "16 + 2 = ?"))
```

---

## Practice

```figure
(ms-pgraph '(("Red" 4.5) ("Blue" 2) ("Gold" 1.5)) "= 4 beads")
(label 160 14 "Beads in a jar" 'small 'bold)
```

```check
(number
  (ask "How many gold beads are there?")
  (answer 6) (from "4 + 2")
  (wrong-if 8 "The second circle is only half. It is 2 beads, not 4.")
  (wrong-if 5 "Half a circle is half of 4, which is 2, not 1.")
  (hint "1 whole circle is 4. Half a circle is 2."))
```

```check
(choice
  (ask "A key says each picture is 6 apples. What does half a picture stand for?")
  (right "3 apples" (true "6 / 2 = 3"))
  (wrong "6 apples" (false "6 / 2 = 6")
    "6 apples is a whole picture. Half a picture is half of 6.")
  (wrong "1 apple" (false "6 / 2 = 1")
    "Half a picture is not always 1. It is half of the scale, and half of 6 is 3.")
  (hint "What is half of 6?"))
```

---

```check
(choice
  (ask "Each picture is 10 votes. Which row shows 15 votes?")
  (right "1 whole picture and a half")
  (wrong "1 whole picture and 5 more pictures"
    "5 more pictures would be 50 more votes. Half a picture is 5 votes.")
  (wrong "15 pictures"
    "15 pictures would be 150 votes. Each picture stands for 10.")
  (hint "1 picture is 10. How do you show 5 more?"))
```

Now you can read half a picture: it stands for half of the scale.
