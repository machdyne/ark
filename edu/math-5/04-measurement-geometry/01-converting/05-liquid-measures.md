# Cups, pints, quarts and gallons

```lesson
(objective "Convert among fluid ounces, cups, pints, quarts and gallons, such as 1 gallon = 4 quarts = 8 pints = 16 cups.")
(standards "5.MD.A.1")
(minutes 25)
(keywords "fluid ounce" "pint" "quart" "gallon")
```

You can change between US units of liquid volume by multiplying or dividing.

A **fluid ounce** measures liquid volume. It is not an ounce of weight. Its short form is fl oz.

A **cup** is exactly 8 fluid ounces.

```check
(number
  (ask "How many fluid ounces are in 3 cups?")
  (answer 24) (unit "fl oz") (from "3 * 8")
  (wrong-if 11 "That adds 3 + 8. Each cup is 8 fluid ounces, so multiply.")
  (hint "1 cup = 8 fl oz.")
  (hint "3 × 8 = ?"))
```

```sources
(source "NIST Handbook 44, Appendix C: General Tables of Units of Measurement, units of liquid volume (US customary)")
```

---

## A pint

A **pint** is 2 cups. Milk and ice cream often come in pints.

```check
(number
  (ask "How many cups are in 5 pints?")
  (answer 10) (unit "cups") (from "5 * 2")
  (wrong-if 7 "That adds. Each pint is 2 cups: multiply 5 × 2.")
  (hint "1 pint = 2 cups."))
```

---

## A quart and a gallon

A **quart** is 2 pints. A **gallon** is 4 quarts.

```figure
(define g (lambda (x y w h n) (for-range 0 n (lambda (i) (frame (+ x (* i (+ w 4))) y w h 'ink 1.5)))))
(frame 20 20 276 34 'ink 2.5) (label 158 42 "1 gallon" 'body 'bold)
(for-range 0 4 (lambda (i) (rect (+ 20 (* i 70)) 64 68 30 'paper)))
(g 20 64 66 30 4) (for-range 0 4 (lambda (i) (label (+ 53 (* i 70)) 84 "1 quart")))
(g 20 104 31 30 8) (for-range 0 8 (lambda (i) (label (+ 35 (* i 35)) 124 "pt" 'tiny)))
(g 20 144 13.5 30 16) (for-range 0 16 (lambda (i) (label (+ 26.75 (* i 17.5)) 164 "c" 'tiny)))
(caption "1 gallon = 4 quarts = 8 pints = 16 cups")
```

So 1 gallon is $4 * 2 = 8$ pints, and $8 * 2 = 16$ cups.

```check
(number
  (ask "How many quarts are in 3 gallons?")
  (answer 12) (unit "qt") (from "3 * 4")
  (wrong-if 6 "That uses 2, the pints in a quart. A gallon is 4 quarts.")
  (hint "1 gallon = 4 quarts."))
```

These are US units. The UK pint and gallon are larger.

```sources
(source "NIST Handbook 44, Appendix C: General Tables of Units of Measurement: 1 gallon = 4 quarts, 1 quart = 2 pints")
(source "UK Weights and Measures Act 1985, Schedule 1: the gallon of 4.54609 liters")
```

---

## Small unit to big unit

To get the bigger unit, divide. 12 pints = $12 ÷ 2$ quarts = 6 quarts.

```check
(number
  (ask "A pot holds 20 cups. How many quarts is that?")
  (answer 5) (unit "qt") (from "20 / 4")
  (wrong-if 10 "That is pints: 20 ÷ 2. A quart is 2 pints, which is 4 cups.")
  (wrong-if 80 "That multiplies. Quarts are bigger, so divide.")
  (hint "1 quart = 2 pints = 4 cups.")
  (hint "20 ÷ 4 = ?"))
```

---

## A worked example

```example
(example
  (problem "How many fluid ounces are in 1 quart?")
  (step "1 quart = 2 pints, and 1 pint = 2 cups. So 1 quart = 4 cups.")
  (step "1 cup = 8 fluid ounces.")
  (step (number (ask "So 1 quart = 4 × 8 = ? fluid ounces") (answer 32) (from "2 * 2 * 8")
          (wrong-if 16 "16 fluid ounces is 2 cups, 1 pint. A quart is 2 pints.")))
  (answer "1 quart = 32 fluid ounces."))
```

---

## Practice

```check
(choice
  (ask "A recipe needs 6 cups of milk. Which is the same?")
  (right "3 pints" (true "6 / 2 = 3"))
  (wrong "12 pints" (false "6 / 2 = 12") "That multiplies. Pints are bigger than cups, so there are fewer of them.")
  (wrong "6 quarts" "A quart is 4 cups, so 6 quarts is 24 cups.")
  (wrong "3 gallons" "A gallon is 16 cups. 3 gallons is 48 cups.")
  (hint "1 pint = 2 cups."))
```

```check
(number
  (ask "A fish tank holds 2 1/2 gallons. How many quarts is that?")
  (answer 10) (unit "qt") (from "(5/2) * 4")
  (wrong-if 9 "2 gallons is 8 quarts, and 1/2 gallon is 1/2 of 4 = 2 quarts.")
  (hint "2 gallons = 8 quarts. 1/2 gallon = ? quarts."))
```

1 gallon = 4 quarts = 8 pints = 16 cups, and 1 cup = 8 fluid ounces.
