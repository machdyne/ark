# Comparing and rounding problems

```lesson
(objective "Solve word problems that compare, order and round decimals, such as race times in seconds and lengths in meters.")
(standards "5.NBT.A.3b" "5.NBT.A.4")
(minutes 25)
```

You can solve word problems that compare, order and round decimals.

In a race, the shortest time wins. Three runners finish 50 meters in
these times:

| Runner | Time (seconds) |
| Ana | 8.42 |
| Ben | 8.4 |
| Cy | 8.419 |

Write each with 3 places: 8.420, 8.400, 8.419. The least is 8.400, so
Ben wins.

```figure
(m5p1-nl 30 290 110 8.4 8.42 0.001 0.01 2)
(nl-mark 8.4 'warm "Ben")
(nl-mark 8.419 'cool "Cy")
(nl-mark 8.42 'warm)
(label (nl-x 8.42) 82 "Ana" 'small)
(caption "Time in seconds: the fastest is on the left")
```

```check
(choice
  (ask "Who came 2nd in the race, Ana, Ben or Cy?")
  (right "Cy, with 8.419 seconds" (true "8.4 < 8.419 < 8.42"))
  (wrong "Ana, with 8.42 seconds" (false "8.42 < 8.419")
    "8.42 = 8.420, which is more than 8.419. Ana took longer than Cy, so she came 3rd.")
  (wrong "Ben, with 8.4 seconds" "Ben has the shortest time, so he came 1st.")
  (hint "Order the times from least to greatest."))
```

---

## Greatest wins

In a long jump, the longest jump wins. Dee jumps 3.05 meters and Eli
jumps 3.5 meters.

3.50 > 3.05, so Eli jumps farther.

```check
(choice
  (ask "Fay jumps 2.809 meters and Gus jumps 2.81 meters. Who jumps farther?")
  (right "Gus" (true "2.81 > 2.809"))
  (wrong "Fay" (false "2.809 > 2.81")
    "2.809 has more digits, but 2.81 = 2.810. 810 thousandths > 809 thousandths.")
  (wrong "They jump the same" (false "2.809 = 2.81")
    "They differ by 1 thousandth of a meter.")
  (hint "Write 2.81 with 3 places."))
```

---

## Rounding in a problem

A rope is 4.375 meters long. To the nearest tenth of a meter, how long
is it?

The tenths digit is 3, and the digit to its right is 7. Round up: 4.4
meters.

```check
(text
  (ask "A bottle holds 1.892 liters. Round it to the nearest tenth of a liter.")
  (accept "1.9") (accept "1.90")
  (true "1.9 - 1.892 < 1.892 - 1.8")
  (wrong-if "1.8" "The digit right of the tenths is 9. Round up to 1.9.")
  (wrong-if "1.89" "That is the nearest hundredth. The question asks for tenths.")
  (hint "Look at the hundredths digit."))
```

---

## Worked example

```example
(example
  (problem "Three pencils are 0.145 m, 0.15 m and 0.105 m long. Order them from shortest to longest.")
  (step "Write with 3 places: 0.145, 0.150, 0.105.")
  (step "As thousandths: 145, 150, 105.")
  (answer "0.105 m, 0.145 m, 0.15 m"))
```

```example
(example
  (problem "A notebook costs 2.49 dollars. To the nearest dollar, about how much is it?")
  (step "2.49 is between 2 and 3 dollars.")
  (step (number (ask "The tenths digit is 4. To the nearest dollar, it costs ...") (answer 2) (unit "dollars")
    (true "2.49 - 2 < 3 - 2.49")
    (wrong-if 3 "4 tenths is less than 5 tenths, so 2.49 is below halfway. Round down to 2.")))
  (answer "about 2 dollars"))
```

---

## Practice

```check
(choice
  (ask "A snail moves 0.06 m in a minute. A worm moves 0.059 m. Which moves farther?")
  (right "the snail" (true "0.06 > 0.059"))
  (wrong "the worm" (false "0.059 > 0.06")
    "59 looks bigger, but 0.06 = 0.060. 60 thousandths > 59 thousandths.")
  (hint "Write 0.06 with 3 places."))
```

```check
(number
  (ask "A swimmer's time is 61.7 seconds. Round it to the nearest whole second.")
  (answer 62) (unit "seconds")
  (true "62 - 61.7 < 61.7 - 61")
  (wrong-if 61 "The tenths digit is 7, which is 5 or more. Round up to 62.")
  (hint "Look at the tenths digit."))
```

---

```check
(choice
  (ask "Which time is the fastest?")
  (right "12.08 seconds" (true "12.08 < 12.1"))
  (wrong "12.1 seconds" (false "12.1 < 12.08")
    "12.1 = 12.10, which is more than 12.08. The fastest time is the least.")
  (wrong "12.8 seconds" (false "12.8 < 12.08")
    "12.8 has 8 tenths, the most of the three. It is the slowest.")
  (hint "Fastest means the least time."))
```

```check
(text
  (ask "A board is 2.356 meters long. Round it to the nearest hundredth of a meter.")
  (accept "2.36") (accept "2.360")
  (true "2.36 - 2.356 < 2.356 - 2.35")
  (wrong-if "2.35" "The thousandths digit is 6, which is 5 or more. Round up to 2.36.")
  (wrong-if "2.4" "That is the nearest tenth. Round to the hundredths.")
  (hint "Look at the thousandths digit."))
```

So: in a word problem, decide whether least or greatest wins, then
compare or round place by place.
