# Half inches

```lesson
(objective "Measure a length to the nearest half inch with a ruler.")
(standards "3.MD.B.4")
(minutes 20)
(keywords "half inch" "mixed number")
```

You can measure a length to the nearest half inch.

On a ruler, each inch is cut into 2 equal parts by a shorter mark. The
length of 1 of those parts is a **half inch**: $1/2$ inch.

```figure
(fr-ruler 40 110 4 60 2)
(rect 40 80 150 20 'warm)
(frame 40 80 150 20 'ink 1)
(line 70 60 70 108 'ink 1)
(label 70 52 "1/2 inch" 'small)
(caption "The bar starts at 0 and ends at a half-inch mark.")
```

```check
(number
  (ask "How many half inches make 1 inch?")
  (answer 2) (true "2 * 1/2 = 1")
  (wrong-if 1 "1 half inch is only half of an inch. You need 2 halves to make the whole inch.")
  (hint "A half is 1 of 2 equal parts."))
```

---

## Reading a half

A bar that ends at the half mark after 2 is 2 inches and a half inch
more. You write it $2 1/2$ inches and say "2 and a half inches".
A whole number and a fraction written together, like $2 1/2$, is a
**mixed number**. It means 2 wholes and $1/2$ more.

```figure
(fr-ruler 40 110 4 60 2)
(rect 40 80 210 20 'cool)
(frame 40 80 210 20 'ink 1)
(caption "A bar on a ruler, starting at 0.")
```

```check
(number
  (ask "How long is this bar, in inches?")
  (answer 3.5) (unit "inches") (from "3 + 1/2")
  (wrong-if 3 "The bar goes past the 3. It ends at the half mark after 3.")
  (wrong-if 4 "The bar does not reach the 4. It stops halfway between 3 and 4.")
  (wrong-if 7 "7 is the number of half inches. In inches that is 3 and a half.")
  (hint "Find the last whole inch the bar passes. Then look at the half mark.")
  (hint "Type it as a mixed number, like 2 1/2."))
```

---

## To the nearest half inch

Most things do not end right on a mark. Then you find the half-inch
mark that is nearest to the end. Move the slider.

```figure
(define L (slider 'len 1.1 3.9 2.3 "Length" 0.1))
(define h (/ (round (* 2 L)) 2))
(fr-ruler 40 110 4 60 2)
(rect 40 80 (* 60 L) 20 'warm)
(frame 40 80 (* 60 L) 20 'ink 1)
(arrow (+ 40 (* 60 h)) 60 (+ 40 (* 60 h)) 78 'ink 1.5)
(text 160 190 (string-append "Nearest half inch: " (fr-mixed (* 2 h) 2) " inches") 'centre 'body 'bold)
```

```check
(number
  (ask "A crayon ends a little past the 2-inch mark, nearer to 2 than to the half mark after it. How long is it, to the nearest half inch?")
  (answer 2) (unit "inches")
  (wrong-if 2.5 "The end is nearer to 2 than to 2 1/2. Choose the nearest mark.")
  (wrong-if 3 "3 is a whole inch farther on. The nearest mark is 2.")
  (hint "Which mark is the end closest to?"))
```

---

## Start at 0

Line up one end of the thing with the 0 mark. If you start at 1, every
length comes out 1 inch too long.

```check
(choice
  (ask "Ty lines up a stick with the 1 on the ruler. Its other end is at" (math "4 1/2") ". How long is the stick?")
  (right "3 1/2 inches" (true "4 1/2 - 1 = 3 1/2"))
  (wrong "4 1/2 inches" (false "4 1/2 - 1 = 4 1/2")
    "The stick starts at 1, not 0. The first inch of the ruler is not under the stick, so take 1 inch away.")
  (hint "How many inches are there from 1 to 4 1/2?"))
```

---

## Worked example

```example
(example
(problem "A leaf starts at 0. Its tip is between 1 1/2 and 2, closer to 1 1/2. How long is it, to the nearest half inch?")
(step "The marks around the tip are 1 1/2 and 2.")
(step "The tip is closer to 1 1/2.")
(answer "The leaf is about 1 1/2 inches long."))
```

```example
(example
(problem "A paper clip starts at 0. Its end is between 1 and 1 1/2, closer to 1 1/2. How long is it, to the nearest half inch?")
(step "The marks around the end are 1 and 1 1/2.")
(step (choice (ask "Which mark is nearer the end?")
  (right "1 1/2")
  (wrong "1"
    "The end is closer to 1 1/2. Choose the mark nearest the end.")))
(answer "The paper clip is about 1 1/2 inches long."))
```

---

## Practice

```figure
(fr-ruler 40 110 4 60 2)
(rect 40 80 88 20 'warm)
(frame 40 80 88 20 'ink 1)
(caption "A ribbon on a ruler, starting at 0.")
```

```check
(number
  (ask "How long is the ribbon, to the nearest half inch?")
  (answer 1.5) (unit "inches")
  (wrong-if 1 "The end is past 1 and very near the half mark after it. The nearest mark is 1 1/2.")
  (wrong-if 2 "The ribbon ends before 2, and nearer to 1 1/2.")
  (hint "Find the half-inch mark nearest the end of the ribbon.")
  (hint "Type it as a mixed number, like 2 1/2."))
```

So: line up the end with 0, then read the half-inch mark nearest the
other end.
