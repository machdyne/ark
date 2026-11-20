# Thousandths on a number line

```lesson
(objective "Place a decimal to thousandths on a number line between two hundredths cut into 10 parts, such as 0.347 between 0.34 and 0.35.")
(standards "5.NBT.A.3")
(minutes 20)
```

You can place a decimal to thousandths on a number line.

The top line goes from 0.30 to 0.40 in hundredths. Look closer at the
part from 0.34 to 0.35. Below, it is drawn bigger and cut into 10
equal parts. Each part is a thousandth.

0.347 is 34 hundredths and 7 thousandths. So it is 7 marks after 0.34.

```figure
(define n (slider 'n 0 10 7 "Thousandths" 1))
(m5p1-zoom 50 0.3 0.4 0.01 0.05 0.34 2)
(label 132 38 "0.34" 'small)
(nl-mark (+ 0.34 (/ n 1000)) 'warm)
(label 160 200 (fmt (+ 0.34 (/ n 1000)) 3) 'big 'bold)
```

```check
(choice
  (ask "Between which two hundredths is 0.528?")
  (right "0.52 and 0.53" (true "0.52 < 0.528 < 0.53"))
  (wrong "0.5 and 0.6" "0.528 is between those tenths too, but the question asks for hundredths: 0.52 and 0.53.")
  (wrong "0.58 and 0.59" "The 8 is in the thousandths place. The hundredths digit is 2.")
  (wrong "0.28 and 0.29" "The tenths digit of 0.528 is 5, so it is more than 0.5.")
  (hint "Cover the last digit: 0.52_."))
```

---

## Counting marks

On a line from 0.34 to 0.35 in thousandths, the marks are 0.340, 0.341,
0.342, and so on to 0.350.

0.350 is the same as 0.35: 35 hundredths is 350 thousandths.

```check
(text
  (ask "A line goes from 0.81 to 0.82 in thousandths. A point is 4 marks after 0.81. What decimal is it?")
  (accept "0.814") (accept ".814")
  (true "0.81 + 4/1000 = 0.814")
  (wrong-if "0.85" "Each mark is a thousandth, not a hundredth. 0.81 and 4 thousandths is 0.814.")
  (wrong-if "0.0814" "The 4 goes in the 3rd place after the decimal point: 0.814.")
  (hint "0.810, 0.811, 0.812, ...")
  (hint "Count 4 marks."))
```

---

## Halfway

Halfway between 0.34 and 0.35 is 5 marks along: 0.345.

```figure
(m5p1-nl 20 300 110 0.34 0.35 0.001 0.005 3)
(nl-mark 0.345 'warm "halfway")
(caption "0.340 to 0.350 in thousandths")
```

```check
(text
  (ask "What decimal is halfway between 0.62 and 0.63?")
  (accept "0.625") (accept ".625")
  (true "(0.62 + 0.63) ÷ 2 = 0.625")
  (wrong-if "0.6205" "Between 0.620 and 0.630 are 10 thousandths. Halfway is 5 of them: 0.625.")
  (wrong-if "1.25" "That is 0.62 + 0.63. Halfway between them is less than 0.63.")
  (hint "Write them as 0.620 and 0.630.")
  (hint "Which thousandth is in the middle?"))
```

---

## Worked example

```example
(example
  (problem "Place 0.093 on a number line.")
  (step "0.093 is 9 hundredths and 3 thousandths.")
  (step "So it is between 0.09 and 0.10.")
  (step "Cut that part into 10. Count 3 marks after 0.09.")
  (answer "0.093 is 3 thousandths after 0.09."))
```

```example
(example
  (problem "A point is 2 marks before 0.46 on a line in thousandths. What is it?")
  (step "0.46 is 0.460.")
  (step (text (ask "2 thousandths less is ...") (accept "0.458") (accept ".458") (true "0.46 - 2/1000 = 0.458")
    (wrong-if "0.44" "Each mark is a thousandth. 2 marks before 0.460 is 0.458.")))
  (answer "0.458"))
```

---

## Practice

```check
(choice
  (ask "Between which two hundredths is 0.071?")
  (right "0.07 and 0.08" (true "0.07 < 0.071 < 0.08"))
  (wrong "0.7 and 0.8" "0.071 has 0 tenths. 0.7 is far bigger.")
  (wrong "0.71 and 0.72" "The tenths digit of 0.071 is 0. 0.71 has 7 tenths.")
  (hint "Cover the last digit."))
```

```check
(text
  (ask "On a line from 0.25 to 0.26 in thousandths, a point is 9 marks after 0.25. What is it?")
  (accept "0.259") (accept ".259")
  (true "0.25 + 9/1000 = 0.259")
  (wrong-if "0.34" "Each mark is a thousandth, not a hundredth. 9 marks after 0.250 is 0.259.")
  (hint "0.250, 0.251, ..."))
```

---

```check
(choice
  (ask "Which decimal is between 0.4 and 0.41?")
  (right "0.406" (true "0.4 < 0.406 < 0.41"))
  (wrong "0.46" (false "0.46 < 0.41")
    "0.46 is 46 hundredths, more than 0.41. Write 0.4 as 0.400 and 0.41 as 0.410.")
  (wrong "0.395" (false "0.4 < 0.395")
    "0.395 is less than 0.400. It is to the left of 0.4.")
  (hint "Write both ends with 3 places: 0.400 and 0.410."))
```

```check
(text
  (ask "What decimal is 1 thousandth more than 0.199?")
  (accept "0.2") (accept ".2") (accept "0.20") (accept ".20") (accept "0.200") (accept ".200")
  (true "0.199 + 0.001 = 0.2")
  (wrong-if "0.1910" "10 thousandths make a hundredth, and 10 hundredths make a tenth. 0.199 + 0.001 = 0.200.")
  (hint "What comes after 0.199 when you count in thousandths?"))
```

So: cut the part between two hundredths into 10 equal parts, and each
mark is a thousandth.
