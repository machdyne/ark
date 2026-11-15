# Equivalent fractions

```lesson
(objective "Simplify a fraction and tell when two fractions are equal.")
(minutes 20)
(keywords "equivalent fractions" "simplest form")
```

Different fractions can name the same amount, and the simplest one is
usually the easiest to understand.

Half a pizza is the same amount as 2 quarters, or 4 eighths. Fractions
that name the same amount are **equivalent fractions**.

$$ 1/2 = 2/4 = 4/8 $$

```figure
(frac-bar 0 2 1 'warm "1/2")
(frac-bar 1 4 2 'cool "2/4")
(frac-bar 2 8 4 'good "4/8")
(caption "The shaded parts are the same length.")
```

```check
(choice
  (ask "Which fraction is equivalent to" (math "1/3") "?")
  (right "2/6" (true "2/6 = 1/3"))
  (wrong "1/6" (false "1/6 = 1/3") "Sixths are half the size of thirds, so you need 2 of them to make one third.")
  (wrong "3/1" "3/1 is 3 wholes. Swapping top and bottom does not give the same amount.")
  (hint "Cut each third into 2 equal parts. How many sixths in one third?"))
```

---

## Multiply or divide top and bottom by the same number

You get an equivalent fraction when you multiply, or divide, the top
and the bottom by the same number. Cutting each part into 3 makes 3
times as many parts, and 3 times as many shaded.

$$ 2/5 = (2 * 3)/(5 * 3) = 6/15 $$

```check
(fraction
  (ask "Fill in the top:" (math "3/4") "is the same as how many twelfths? Type the fraction.")
  (answer 9 12) (true "9/12 = 3/4")
  (wrong-if (3 12) "Each quarter is 3 twelfths, so 3 quarters are 3 * 3 = 9 twelfths. Multiply the top as well as the bottom.")
  (hint "4 times what is 12? Multiply the top by the same number."))
```

---

## Simplest form

A fraction is in its **simplest form** when no whole number bigger than
1 divides both its top and its bottom. To simplify, divide both by a
number that goes into each, and repeat until you cannot.

```example
(example
  (problem "Simplify 18/24.")
  (step "Both are even: divide by 2. 18/24 = 9/12.")
  (step "3 goes into 9 and 12: divide by 3. 9/12 = 3/4.")
  (step "Nothing bigger than 1 goes into both 3 and 4.")
  (answer "3/4"))
```

```example
(example
  (problem "Simplify 20/25.")
  (step "5 goes into 20 and into 25.")
  (step (fraction (ask "Divide both by 5. What do you get?") (answer 4 5) (simplest)
    (wrong-if (5 4) "Keep the top on top: 20 ÷ 5 = 4, and 25 ÷ 5 = 5.")))
  (answer "4/5"))
```

---

## Practice

```check
(fraction
  (ask "Simplify" (math "6/8") ". Type the simplest form.")
  (answer 3 4) (simplest)
  (wrong-if (6 8) "6 and 8 are both even, so you can still divide both by 2.")
  (wrong-if (4 3) "Keep the top on top: 6 ÷ 2 = 3, and 8 ÷ 2 = 4.")
  (hint "Both numbers are even."))
```

```check
(choice
  (ask "15 of 20 workers say yes. Which fraction in simplest form is that?")
  (right "3/4" (true "15/20 = 3/4"))
  (wrong "15/20" "15/20 is right, but not in simplest form: 5 goes into both 15 and 20.")
  (wrong "1/5" (false "15/20 = 1/5") "Dividing 20 by 5 gives 4, and 15 by 5 gives 3, so the fraction is 3/4, not 1/5.")
  (hint "Divide top and bottom by 5."))
```

```check
(choice
  (ask "Are" (math "4/10") "and" (math "2/5") "the same amount?")
  (right "Yes" (true "4/10 = 2/5"))
  (wrong "No: 10 is more than 5" (false "4/10 > 2/5") "Cutting into 10 parts makes each part half the size of a fifth, and there are twice as many of them. 4/10 divided by 2 top and bottom is 2/5.")
  (hint "Divide the top and bottom of 4/10 by 2."))
```

Multiply or divide the top and the bottom by the same number and the
fraction keeps its value; divide as far as you can for its simplest
form.
