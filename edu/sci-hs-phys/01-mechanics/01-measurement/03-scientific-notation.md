# Scientific notation

```lesson
(objective "Write and compute with numbers in scientific notation, and round a result to a sensible number of significant figures.")
(standards "HSN-Q.A.3" "8.EE.A.4")
(minutes 25)
(keywords "scientific notation" "significant figures")
```

You can write a very large or very small number short, as a number from 1 to 10 times 10 with an exponent.

Earth's mass is about 5,970,000,000,000,000,000,000,000 kg. Counting those zeros is slow and easy to get wrong. In **scientific notation** it is

$$ 5.97 * 10^24 kg $$

The first part is at least 1 and less than 10. The exponent, 24, says how many places the decimal point moves to the right.

```sources
(source "NASA Goddard Space Flight Center, Earth Fact Sheet (NSSDCA): mass 5.9722 x 10^24 kg")
```

```check
(number
  (ask "Write 4,500,000 m in scientific notation, 4.5 x 10^n m. What is n?")
  (answer 6) (from "6")
  (true "4.5 * 10^6 = 4500000")
  (wrong-if 5 "Count again: from 4.5 to 4,500,000 the point moves 6 places to the right, not 5.")
  (wrong-if 7 "4,500,000 has 7 digits, but the point starts after the 4, so it moves 6 places.")
  (hint "Start at 4.5 and count the places the decimal point moves to reach 4,500,000."))
```

---

## Small numbers

For a number smaller than 1, the exponent is negative: it says how many places the point moves to the left.

$$ 0.00032 = 3.2 * 10^-4 $$

A width of 0.000001 m, a micrometer, is $1 * 10^-6$ m. The prefixes you know follow the same pattern: milli- is $10^-3$ and mega- is $10^6$.

```check
(number
  (ask "Write 0.0075 s as 7.5 x 10^n s. What is n?")
  (answer -3) (from "-3")
  (true "7.5 * 10^-3 = 0.0075")
  (wrong-if 3 "A positive exponent makes a large number: 7,500. For a number smaller than 1, the exponent is negative.")
  (wrong-if -2 "Count the places from 0.0075 to 7.5: the point moves 3 places, so the exponent is -3.")
  (hint "Is the number bigger or smaller than 1?")
  (hint "The point moves 3 places to reach 7.5."))
```

---

## Multiplying and dividing

To multiply, multiply the first parts and add the exponents. To divide, divide the first parts and subtract the exponents.

$$ (3 * 10^4) * (2 * 10^5) = 6 * 10^9 $$

$$ (8 * 10^6) / (2 * 10^2) = 4 * 10^4 $$

If the first part comes out 10 or more, move the point once more: $20 * 10^9 = 2.0 * 10^10$.

```check
(number
  (ask "Find (4 x 10^3) x (5 x 10^6) and write it in scientific notation, 2 x 10^n. What is n?")
  (answer 10) (from "10")
  (true "(4 * 10^3) * (5 * 10^6) = 2 * 10^10")
  (wrong-if 9 "4 x 5 = 20 gives 20 x 10^9, but 20 is not less than 10. Written properly it is 2.0 x 10^10.")
  (wrong-if 18 "Multiplying adds the exponents, 3 + 6. It does not multiply them.")
  (hint "4 x 5 = 20, and 3 + 6 = 9.")
  (hint "Now write 20 x 10^9 with a first part under 10."))
```

---

## Significant figures

A measurement is only as exact as the tool that made it. Its **significant figures** are the digits that carry real information about the measurement:

- every digit that is not zero: 4.56 has 3;
- zeros between other digits: 305 has 3;
- zeros at the end after a decimal point: 2.50 has 3, because someone measured that 0;
- but not zeros at the start: 0.0045 has 2. They only place the point.

```check
(number
  (ask "How many significant figures does 0.00450 m have?")
  (answer 3) (from "3")
  (wrong-if 6 "The zeros at the start only place the decimal point. They are not significant.")
  (wrong-if 2 "The 0 at the end comes after the decimal point, so someone measured it. It counts.")
  (hint "Ignore the zeros before the 4.")
  (hint "Count 4, 5 and the final 0."))
```

---

## Rounding a result

A calculator gives many digits, but the answer cannot be more exact than the measurements. When you multiply or divide, round the result to the fewest significant figures among the numbers you used.

A room is 3.2 m by 4.56 m. The calculator says 14.592 m². But 3.2 has only 2 significant figures, so the area is 15 m².

```check
(number
  (ask "A cart goes 12.0 m in 3.7 s. Its speed is distance / time. Give it with the right number of significant figures.")
  (answer 3.2) (within 0.001) (unit "m/s") (from "3.2")
  (true "abs(12.0/3.7 - 3.2) < 0.05")
  (wrong-if 3.24 "3.7 s has only 2 significant figures, so the speed can have only 2.")
  (wrong-if 3.243 "The calculator shows more digits than the measurements support. 3.7 has 2 significant figures.")
  (hint "Which number has the fewest significant figures?")
  (hint "12.0 / 3.7 = 3.243... Keep 2 figures."))
```

---

## A worked example

```example
(example
  (problem "The Moon is about 3.84 x 10^8 m from Earth. A probe crosses that distance at 1.0 x 10^4 m/s. How long does it take?")
  (step "Time = distance / speed = (3.84 x 10^8 m) / (1.0 x 10^4 m/s).")
  (step "Divide the first parts: 3.84 / 1.0 = 3.84. Subtract the exponents: 8 - 4 = 4.")
  (step "So 3.84 x 10^4 s. The speed has 2 significant figures, so round to 3.8 x 10^4 s.")
  (answer "3.8 x 10^4 s, about 11 hours"))
```

```sources
(source "NASA Goddard Space Flight Center, Moon Fact Sheet (NSSDCA): orbit semimajor axis 0.3844 x 10^6 km")
```

Now you finish one.

```check
(number
  (ask "A probe flies 6.0 x 10^7 m at 2.0 x 10^3 m/s. The time is 3.0 x 10^n s. What is n?")
  (answer 4) (from "7 - 3")
  (true "(6.0 * 10^7) / (2.0 * 10^3) = 3.0 * 10^4")
  (wrong-if 10 "That adds the exponents, which is for multiplying. To divide, subtract them: 7 - 3.")
  (hint "Time = distance / speed.")
  (hint "When you divide, subtract the exponents."))
```

---

## Practice

```check
(number
  (ask "Earth's radius is about 6,370,000 m. Written as 6.37 x 10^n m, what is n?")
  (answer 6) (from "6")
  (true "6.37 * 10^6 = 6370000")
  (wrong-if 7 "6,370,000 has 7 digits, but the point starts after the 6, so it moves 6 places.")
  (hint "Count the places from 6.37 to 6,370,000."))
```

```check
(number
  (ask "How many significant figures does 2,005 kg have?")
  (answer 4) (from "4")
  (wrong-if 2 "Zeros between digits that are not zero are measured, so they count. All four digits are significant.")
  (hint "Zeros between two other digits count."))
```

```check
(choice
  (ask "A runner covers 100.0 m in 9.9 s. A calculator gives 10.1010101 m/s. How should you report the speed?")
  (right "10 m/s, to 2 significant figures")
  (wrong "10.1010101 m/s"
    "The calculator does not know how exact the clock was. 9.9 s has 2 significant figures, so the speed can have only 2.")
  (wrong "10.10 m/s, to 4 significant figures"
    "100.0 m has 4 significant figures, but you round to the fewest among the measurements. 9.9 s has only 2.")
  (hint "Which measurement is the least exact?"))
```

---

So scientific notation writes a number as a first part from 1 to 10 times 10 with an exponent, and a result keeps only as many significant figures as its least exact measurement.
