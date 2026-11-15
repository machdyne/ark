# Converting metric units

```lesson
(objective "Convert within the metric system by multiplying or dividing by 10, 100 or 1000.")
(minutes 20)
```

You can change one metric unit into another, like grams into kilograms, by multiplying or dividing by 10, 100 or 1000.

From a big unit to a small one, there are more of the small units, so **multiply**. From a small unit to a big one, **divide**.

$$ 2.5 * 1000 = 2500 $$

So 2.5 kg is 2500 g.

```figure
(rect 30 60 260 30 'cool) (frame 30 60 260 30 'ink 1.5)
(label 160 80 "1 kg" 'body 'bold)
(for-range 0 10 (lambda (i) (frame (+ 30 (* i 26)) 130 26 30 'ink 1)))
(label 160 180 "the same mass as 1000 g: 10 blocks of 100 g" 'small)
(label 160 210 "big unit: fewer of them; small unit: more" 'small)
```

```check
(choice
  (ask "You change 3 liters into milliliters. Will the number get bigger or smaller?")
  (right "Bigger: it takes many milliliters to make 3 liters")
  (wrong "Smaller: milliliters are small, so the number is small"
    "The amount stays the same. With small units you need more of them, so the number grows: 3 L = 3000 mL.")
  (hint "Are there more milliliters or more liters in a bottle?"))
```

---

## Which number?

The prefix tells you the number:

- kilo- to the main unit: 1000;
- the main unit to centi-: 100;
- the main unit to milli-: 1000;
- centi- to milli-: 10.

```check
(number
  (ask "A shelf is 1.8 m long. How many centimeters is that?")
  (answer 180) (unit "cm") (from "1.8 * 100")
  (wrong-if 1800 "That multiplies by 1000, which is for millimeters. There are 100 cm in a meter.")
  (wrong-if 0.018 "You divided. Meters to centimeters is big to small, so multiply by 100.")
  (hint "There are 100 cm in 1 m.")
  (hint "Big unit to small unit: multiply."))
```

---

## Small to big: divide

```check
(number
  (ask "A bag of rice holds 750 g. How many kilograms is that?")
  (answer 0.75) (unit "kg") (from "750 / 1000")
  (wrong-if 750000 "You multiplied. Grams to kilograms is small to big, so divide by 1000.")
  (wrong-if 7.5 "That divides by 100. There are 1000 g in a kilogram: 750 / 1000 = 0.75.")
  (hint "Small unit to big unit: divide.")
  (hint "Divide by 1000."))
```

---

## A worked example

```example
(example
  (problem "A walk is 4500 m. How many kilometers is it?")
  (step "Meters to kilometers is small to big, so divide.")
  (step "There are 1000 m in 1 km.")
  (step "4500 ÷ 1000 = 4.5.")
  (answer "The walk is 4.5 km."))
```

```check
(number
  (ask "Now you: a medicine bottle holds 0.2 L. How many milliliters is that?")
  (answer 200) (unit "mL") (from "0.2 * 1000")
  (wrong-if 20 "That multiplies by 100. There are 1000 mL in a liter.")
  (wrong-if 0.0002 "You divided. Liters to milliliters is big to small, so multiply.")
  (hint "Big to small: multiply by 1000."))
```

---

## Practice

```check
(number
  (ask "A parcel weighs 2 kg 300 g. How many grams is that?")
  (answer 2300) (unit "g") (from "2 * 1000 + 300")
  (wrong-if 2.3 "That is the weight in kilograms. The question asks for grams.")
  (wrong-if 302 "2 kg is not 2 g. Change it first: 2 kg = 2000 g.")
  (hint "Change the 2 kg to grams first."))
```

```check
(number
  (ask "A board is 2400 mm long. How many meters is that?")
  (answer 2.4) (unit "m") (from "2400 / 1000")
  (wrong-if 24 "That divides by 100. There are 1000 mm in a meter.")
  (hint "Divide by 1000."))
```

```check
(choice
  (ask "Which is more: 1.2 kg or 900 g?")
  (right "1.2 kg" (true "1.2 * 1000 > 900"))
  (wrong "900 g"
    "900 is the bigger number, but 1.2 kg is 1200 g. Change to the same unit before you compare.")
  (hint "Change 1.2 kg to grams."))
```

Big unit to small: multiply; small unit to big: divide -- by 10, 100 or 1000, as the prefix says.
