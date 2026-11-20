# Graphing real problems

```lesson
(objective "Graph points for a real-world problem in the first quadrant, such as places on a map or hours and distances from a table, and say what each coordinate means.")
(standards "5.G.A.2")
(minutes 25)
(keywords "quadrant")
```

You can use a coordinate plane to show places and measurements.

The axes cut a whole plane into parts. Each part is a **quadrant**. This course uses the first quadrant, right of the y-axis and above the x-axis, and the axes beside it. There, both coordinates are 0 or more.

```figure
(m5p4-plane 60 20 20 10 10 1 "x" "y")
```

```check
(choice
  (ask "What is true of both coordinates of every point in the first quadrant?")
  (right "Each is 0 or more.")
  (wrong "Each is 10 or less." "This drawing stops at 10, but the first quadrant goes on. (12, 3) is in it too.")
  (wrong "The x-coordinate is the bigger one." "(2, 6) is in the first quadrant, and its x-coordinate 2 is the smaller one.")
  (hint "Where do the axes start?"))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.G.A.2: graph points in the first quadrant and interpret coordinate values in the context of the situation")
```

---

## A map

On a town map, each unit is 1 block. The x-coordinate is blocks east of the origin; the y-coordinate is blocks north.

```figure
(m5p4-plane 60 20 20 10 10 1 "east" "north")
(plot-point 0 0 'ink "home")
(plot-point 2 6 'ink "school")
(plot-point 7 3 'ink "park")
(plot-point 5 8 'ink "library")
```

```check
(number
  (ask "The school is at (2, 6). How many blocks north of home is it?")
  (answer 6) (unit "blocks") (from "6")
  (wrong-if 2 "2 is blocks east, the x-coordinate. North is the y-coordinate: 6.")
  (hint "North is up: the y-coordinate."))
```

---

## Reading the map

```check
(choice
  (ask "What are the coordinates of the park?")
  (right "(7, 3)")
  (wrong "(3, 7)" "That is 3 east and 7 north. The park is 7 east and 3 north: (7, 3).")
  (wrong "(7, 0)" "The park is not on the x-axis. It is 3 blocks north too.")
  (hint "East first, then north."))
```

```check
(number
  (ask "How many blocks east of the school is the library?")
  (answer 3) (unit "blocks") (from "5 - 2")
  (wrong-if 5 "5 is the library's blocks east of home. The school is 2 east, so 5 - 2.")
  (wrong-if 2 "That is the north difference, 8 - 6. East is the x-coordinate: 5 - 2.")
  (hint "Compare the x-coordinates: 5 and 2."))
```

---

## A table as points

Rosa walks 2 miles each hour. Each row of the table is a point: (hours, miles).

```figure
(m5p4-table 10 30 50 '(("hours" "miles") ("1" "2") ("2" "4") ("3" "6") ("4" "8")))
(m5p4-plane 150 30 15 5 10 1 "hours" "miles")
(plot-point 1 2 'ink) (plot-point 2 4 'ink) (plot-point 3 6 'ink) (plot-point 4 8 'ink)
```

```check
(choice
  (ask "What does the point (3, 6) mean?")
  (right "After 3 hours, Rosa has walked 6 miles.")
  (wrong "After 6 hours, Rosa has walked 3 miles." "The first coordinate is hours, on the x-axis. So 3 hours, 6 miles.")
  (wrong "Rosa walks 3 miles each hour." "She walks 2 miles each hour. (3, 6) says after 3 hours she has gone 6 miles.")
  (hint "x is hours, y is miles."))
```

---

## A worked example

```example
(example
  (problem "Rosa keeps walking. Which point shows 5 hours?")
  (step "Each hour adds 2 miles: 4 hours is 8 miles.")
  (step "5 hours is 8 + 2 = 10 miles.")
  (step (choice (ask "So the point is") (right "(5, 10)")
          (wrong "(10, 5)" "Hours come first, on the x-axis: (5, 10).")))
  (answer "(5, 10): 5 hours, 10 miles."))
```

---

## Practice

```check
(number
  (ask "On the map, the store is 4 blocks east and 1 block north of home. What is its x-coordinate?")
  (answer 4) (from "4")
  (wrong-if 1 "1 is blocks north, the y-coordinate. East is the x-coordinate: 4.")
  (hint "East goes with x."))
```

```check
(choice
  (ask "A plant grows. The point (2, 5) means week 2, 5 cm tall. What does (6, 12) mean?")
  (right "In week 6, the plant is 12 cm tall.")
  (wrong "In week 12, the plant is 6 cm tall." "The first coordinate is the week. So week 6, 12 cm.")
  (wrong "The plant grew 6 cm in 12 weeks." "Each point gives one week and the height then: week 6, 12 cm.")
  (hint "Read it like (2, 5): week first."))
```

In a real problem, each coordinate is a measure: say what the x-coordinate and the y-coordinate stand for.
