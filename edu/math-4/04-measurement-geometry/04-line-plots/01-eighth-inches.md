# Eighth inches

```lesson
(objective "Measure a length to the nearest eighth inch with a ruler.")
(standards "4.MD.B.4")
(minutes 20)
(keywords "eighth inch")
```

You can measure a length to the nearest eighth of an inch with a ruler.

You know half inches and quarter inches from grade 3. Now cut each inch into 8 equal parts.

An **eighth inch** is 1 of 8 equal parts of an inch. The shortest marks on this ruler are eighth inches.

```figure
(m4p4-ruler8 25 90 3 90)
(text 160 60 "Each inch: 8 equal parts" 'centre 'body 'bold)
(caption "Longest marks: inches. Then halves, quarters, eighths.")
```

```check
(number
  (ask "How many eighth inches make 1 inch?")
  (answer 8) (from "8")
  (wrong-if 4 "4 parts make quarter inches. Eighth inches are smaller: 8 of them make an inch.")
  (hint "The name tells you: eighth."))
```

---

## Reading the marks

Count the small marks after the last whole inch. Each one is 1/8 inch.

The strip below ends 3 marks after 1 inch. So it is $1 3/8$ inches long.

```figure
(rect 25 70 (* 90 (+ 1 (/ 3 8))) 16 'warm)
(frame 25 70 (* 90 (+ 1 (/ 3 8))) 16 'ink 1)
(m4p4-ruler8 25 90 3 90)
```

```check
(choice
  (ask "A strip ends 5 eighth-inch marks after 2 inches. How long is it?")
  (right "2 5/8 inches")
  (wrong "2 5/4 inches" "Each small mark is an eighth, not a quarter. 5 marks are 5/8.")
  (wrong "5/8 inch" "Do not forget the 2 whole inches before the marks.")
  (hint "2 whole inches, then 5 eighths."))
```

---

## Measure it

Move the slider to change the strip. Read its length to the eighth inch.

```figure
(define e (slider 'e 1 23 11 "Eighths" 1))
(rect 25 70 (* 90 (/ e 8)) 16 'warm)
(frame 25 70 (* 90 (/ e 8)) 16 'ink 1)
(m4p4-ruler8 25 90 3 90)
(math 160 180 (m4p4-lab e 8) 22)
(caption "Length of the strip, in inches")
```

The strip starts at 0. It is 11 eighths long: 1 inch and 3 eighths.

```check
(number
  (ask "A strip is 13 eighth inches long. How long is that in inches? Write a mixed number.")
  (answer 1.625) (unit "in") (from "1 + 5/8")
  (wrong-if 13 "That is the count of eighths. 8 eighths make 1 inch, and 5 eighths are left.")
  (wrong-if 1.3 "13 eighths is not 1.3. 8 eighths make 1 inch; 5/8 is left: 1 5/8.")
  (hint "8 eighths = 1 inch.")
  (hint "13 - 8 = 5 eighths left."))
```

---

## The nearest mark

An end may fall between 2 marks. Then read the mark it is closest to. That is the nearest eighth inch.

```check
(choice
  (ask "A pencil ends just past the mark for 4 2/8 inches, close to it. What is its length to the nearest eighth inch?")
  (right "4 2/8 inches")
  (wrong "4 3/8 inches" "The end is close to 4 2/8, not 4 3/8. Read the mark it is nearest to.")
  (wrong "4 inches" "The nearest eighth is a small mark, not the whole inch.")
  (hint "Which mark is it closest to?"))
```

---

## Same length, other names

4/8 inch is the same as 1/2 inch. 2/8 inch is the same as 1/4 inch. 6/8 inch is the same as 3/4 inch.

```check
(choice
  (ask "A bug is 6/8 inch long. Which length is the same?")
  (right "3/4 inch" (true "6/8 = 3/4"))
  (wrong "6/4 inch" (false "6/8 = 6/4") "6/4 is more than 1 inch. 6/8 is less than 1 inch: it is 3/4.")
  (wrong "1/6 inch" (false "6/8 = 1/6") "6/8 is 6 of 8 parts: most of an inch. That is 3/4.")
  (hint "Look where 6/8 is on the ruler: on the 3/4 mark."))
```

---

## Practice

```check
(number
  (ask "A leaf ends 7 eighth marks after 2 inches. How long is it, in inches?")
  (answer 2.875) (unit "in") (from "2 + 7/8")
  (wrong-if 2.7 "7 eighths is 7/8, not 7 tenths. Write 2 7/8.")
  (hint "2 inches and 7 eighths."))
```

```check
(number
  (ask "A ribbon is 3 eighth inches past 1 inch. How long is it, in inches?")
  (answer 1.375) (unit "in") (from "1 + 3/8")
  (wrong-if 3 "That is the count of marks. Add the whole inch first: 1 3/8.")
  (hint "1 inch and 3 eighths."))
```

The shortest marks on an inch ruler are eighth inches; count them after the last whole inch.
