# Making a bar graph

```lesson
(objective "Draw a bar graph with a scale from a table of data.")
(standards "3.MD.B.3")
(minutes 25)
```

You can draw a bar graph from a table.

A bar graph has a title, a name under each bar, and a scale up the side. Choose a scale that fits the biggest number.

| Fruit | Sold |
|---|---|
| Apples | 8 |
| Pears | 14 |
| Plums | 6 |

The biggest number is 14. A scale that counts by 2s up to 16 fits it.

```check
(choice
  (ask "A table has 30, 70 and 50. Which scale fits best?")
  (right "Count by 10s up to 80")
  (wrong "Count by 1s up to 80"
    "That needs 80 lines. The graph would be crowded and hard to read.")
  (wrong "Count by 10s up to 50"
    "The scale must reach the biggest number, 70. Up to 50 is too short.")
  (hint "The scale must reach 70, and every number should be easy to find."))
```

---

## Draw the bars

Move each slider to make each bar as tall as the table says.

```figure
(define a (slider 'a 0 16 0 "Apples" 1))
(define p (slider 'p 0 16 0 "Pears" 1))
(define u (slider 'u 0 16 0 "Plums" 1))
(ms-bars (list (list "Apples" a) (list "Pears" p) (list "Plums" u)) 16 2 'cool)
(label 170 16 "Fruit sold" 'small 'bold)
```

```check
(number
  (ask "The scale counts by 2s. How many lines above 0 does the pears bar reach at 14?")
  (answer 7) (from "14 / 2")
  (wrong-if 14 "Each line is 2 more, not 1 more. So 14 is fewer than 14 lines up.")
  (wrong-if 12 "Count by 2s, 1 count for each line: 2, 4, 6, 8, 10, 12, 14.")
  (hint "Count by 2s to 14. Count how many numbers you say."))
```

---

## A number between 2 lines

With a scale of 2s, odd numbers fall between lines. 13 is halfway between 12 and 14. So the bar stops halfway between those lines.

```figure
(ms-bars '(("Lisa" 13) ("Omar" 8) ("Zoe" 11)) 16 2 'warm)
(label 170 16 "Laps run" 'small 'bold)
```

```check
(choice
  (ask "The scale counts by 2s. Where does a bar for 5 stop?")
  (right "Halfway from 4 to 6")
  (wrong "On the 5th line"
    "The 5th line is 10, because each line is 2 more. 5 is between the lines for 4 and 6.")
  (wrong "On the line for 6"
    "6 is 1 more than 5. The bar for 5 stops halfway between 4 and 6.")
  (hint "Which 2 lines is 5 between?"))
```

---

## A worked example

| Game | Votes |
|---|---|
| Tag | 25 |
| Chess | 10 |
| Ball | 40 |

```example
(example
  (problem "Plan a bar graph for this table.")
  (step "The biggest number is 40. All the numbers count by 5s.")
  (step "Make a scale that counts by 5s, from 0 up to 40 or more.")
  (step "Draw each bar up to its number: Tag to 25, Chess to 10, Ball to 40.")
  (step "Write a title and a name under each bar.")
  (answer "A scale by 5s with bars at 25, 10 and 40."))
```

```figure
(ms-bars '(("Tag" 25) ("Chess" 10) ("Ball" 40)) 40 5 'cool)
(label 170 16 "Favorite games" 'small 'bold)
```

---

## Now you finish one

| Color | Votes |
|---|---|
| Red | 60 |
| Blue | 35 |

You use a scale that counts by 10s up to 70.

```check
(choice
  (ask "Where does the bar for blue stop?")
  (right "Halfway between 30 and 40")
  (wrong "On the line for 30"
    "35 is more than 30. The bar goes on, halfway to 40.")
  (wrong "On the 35th line"
    "Each line is 10 more. There are only 7 lines. 35 is halfway between 30 and 40.")
  (hint "35 is between which 2 tens?"))
```

---

## Practice

```check
(choice
  (ask "A table has 4, 12 and 18. Which scale fits best?")
  (right "Count by 2s up to 20")
  (wrong "Count by 10s up to 20"
    "With 10s, 4, 12 and 18 all fall between lines. They are hard to read.")
  (wrong "Count by 2s up to 12"
    "The scale must reach the biggest number, 18.")
  (hint "Which scale reaches 18 and has a line for each even number?"))
```

```check
(number
  (ask "The scale counts by 5s. How many lines above 0 is a bar for 30?")
  (answer 6) (unit "lines") (from "30 / 5")
  (wrong-if 30 "Each line is 5 more. Count by 5s to 30: how many counts?")
  (hint "5, 10, 15, 20, 25, 30."))
```

---

```check
(choice
  (ask "What must every bar graph have so you can read the bars?")
  (right "A scale with numbers")
  (wrong "A color for each bar"
    "Colors can help, but the numbers on the scale tell how much each bar shows.")
  (wrong "Bars that all touch"
    "Bars can have gaps. The scale tells how much each bar shows.")
  (hint "How do you know what number a bar shows?"))
```

Now you can draw a bar graph: choose a scale, draw each bar to its number, and add a title and names.
