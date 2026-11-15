# Percent

```lesson
(objective "Read a percentage as a number out of 100.")
(minutes 15)
(keywords "percent" "percentage")
```

Prices, pay rises, battery levels and survey results are given in
percent, which is just a way of saying "out of 100".

**Percent** is "out of 100" (from the Latin *per centum*, "by the
hundred"), and its sign is %. 35% is 35 out of
every 100. A number written with % is a **percentage**.

On the square, the whole is 100 small squares. Each square is 1%.

```figure
(define p (slider 'p 0 100 35 "Percent" 1))
(nu1-hundred 60 20 15 p 'warm)
(text 160 195 (string-append (fmt p 0) "% shaded") 'centre 'body 'bold)
(caption "100 equal squares: each is 1%.")
```

```check
(number
  (ask "A square of 100 parts has 62 shaded. What percent is shaded?")
  (answer 62) (unit "%")
  (wrong-if 38 "38% is the part that is not shaded. 62 of the 100 parts are shaded: 62%.")
  (hint "Percent is out of 100. How many of the 100 are shaded?"))
```

---

## The whole is 100%

All of something is 100%. Half of it is 50%, and a quarter is 25%.
None of it is 0%.

The parts always add up to the whole: if 70% of a bill is paid, 30% is
still to pay.

$$ 70% + 30% = 100% $$

```check
(number
  (ask "A phone battery shows 23%. What percent of a full charge is used?")
  (answer 77) (unit "%") (from "100 - 23")
  (wrong-if 23 "23% is what is left. The whole is 100%, so 100 - 23 = 77% is used.")
  (wrong-if 87 "Take 23 from 100 carefully: 100 - 23 = 77.")
  (hint "The full battery is 100%."))
```

---

## More than 100%

A percentage can be more than 100. A price that rises to 150% of what
it was is one and a half times as much. 200% is twice as much.

```check
(choice
  (ask "Rent this year is 200% of rent 10 years ago. What does that say?")
  (right "Rent is now twice what it was" (true "200/100 = 2"))
  (wrong "Rent has gone up by 200 dollars" "A percentage is a part of 100, not an amount of money. 200% is 200 out of 100, which is 2 times as much.")
  (wrong "Rent is the same" "100% would be the same. 200% is twice as much.")
  (hint "100% is the whole old rent. How many of those is 200%?"))
```

---

## Practice

```check
(choice
  (ask "A survey says 45% of 100 workers cycle to work. How many workers is that?")
  (right "45" (true "45/100 * 100 = 45"))
  (wrong "55" "55 is the workers who do not cycle. 45% of 100 is 45 out of 100.")
  (wrong "4.5" "With exactly 100 workers, 45% is 45 of them. A percentage of 100 is the same number.")
  (hint "Percent is out of 100, and there are exactly 100 workers."))
```

```check
(number
  (ask "A jar is 40% full. What percent of it is empty?")
  (answer 60) (unit "%") (from "100 - 40")
  (wrong-if 40 "40% is the full part. The whole jar is 100%, so 60% is empty.")
  (hint "Full part + empty part = 100%."))
```

```check
(choice
  (ask "Which is the most?")
  (right "100% of a pizza" (true "100 > 75"))
  (wrong "75% of a pizza" "75% is three quarters. 100% is the whole pizza, which is more.")
  (wrong "50% of a pizza" "50% is half the pizza. 100% is all of it.")
  (hint "100% is all of it."))
```

Percent is "out of 100": the whole is 100%, half is 50%, a quarter is
25%.
