# Grams and kilograms

```lesson
(objective "Measure mass in grams and kilograms.")
(standards "3.MD.A.2")
(minutes 20)
(keywords "gram" "kilogram")
```

You can measure a mass and give it a number and a unit.

A **gram** is a small unit of mass. A paper clip has a mass of about 1 gram. You write grams as **g**: 1 g.

To measure in grams, put the object in one pan. Put masses you know in the other pan until the bar is level.

```figure
(define n (slider 'n 0 5 0 "100 g masses" 1))
(ms-balance "toy" (string-append (fmt n 0) " x 100 g") (if (< n 3) -1 (if (> n 3) 1 0)))
(caption (if (= n 3) "Level: the toy is 300 g." "Not level yet."))
```

```check
(number
  (ask "Add 100 g masses until the bar is level. What is the mass of the toy, in grams?")
  (answer 300) (unit "g") (from "3 * 100")
  (wrong-if 3 "3 is how many masses. Each one is 100 g, so 3 of them are 300 g.")
  (wrong-if 400 "With 4 masses the masses side goes down, so 400 g is too much. Level is at 3.")
  (hint "Move the slider until the bar is level.")
  (hint "3 masses of 100 g each."))
```

---

## The kilogram

A **kilogram** is a much bigger unit of mass. 1 kilogram is 1000 grams. That is about the mass of 1000 paper clips. You write kilograms as **kg**: 1 kg.

You use kilograms for heavier things, like a bag of potatoes or a dog.

```figure
(ms-balance "melon" "1 kg 1 kg" 0)
(caption "Level: the melon is 2 kg.")
```

```check
(number
  (ask "A melon balances 2 masses of 1 kg each. What is the mass of the melon in kilograms?")
  (answer 2) (unit "kg") (from "1 + 1")
  (wrong-if 1 "There are 2 masses of 1 kg in the pan. Together they are 2 kg.")
  (wrong-if 11 "1 kg and 1 kg make 2 kg. Add the numbers, do not write them side by side.")
  (hint "Add the masses in the other pan."))
```

```sources
(source "BIPM, The International System of Units (SI), 9th edition (2019): the kilogram; the prefix kilo means 1000")
```

---

## Grams or kilograms?

Use grams for light things, like a coin, a pencil or a leaf. Use kilograms for heavy things, like a bike, a chair or a person.

```check
(choice
  (ask "Which unit makes sense for the mass of a pencil?")
  (right "Grams")
  (wrong "Kilograms"
    "1 kilogram is about 1000 paper clips. A pencil is much lighter than that, so grams fit better.")
  (hint "Is a pencil light, like a few paper clips, or heavy?"))
```

---

## Reading the masses

When the bar is level, add up the masses in the other pan.

```figure
(ms-balance "apple" "3 masses" 0)
(caption "Level: 100 g + 50 g + 50 g")
```

```check
(number
  (ask "An apple balances 1 mass of 100 g and 2 masses of 50 g. What is its mass, in grams?")
  (answer 200) (unit "g") (from "100 + 50 + 50")
  (wrong-if 150 "There are 2 masses of 50 g. Add both of them: 100 + 50 + 50.")
  (wrong-if 3 "3 is how many masses. Add their grams: 100 + 50 + 50.")
  (hint "Add 100 + 50 + 50."))
```

---

## A worked example

```figure
(ms-balance "book" "500+200 g" 0)
(caption "Level: 500 g and 200 g")
```

```example
(example
  (problem "A book balances a 500 g mass and a 200 g mass. What is its mass?")
  (step "The bar is level, so the book has the same mass as the masses.")
  (step "Add the masses: 500 + 200.")
  (step (number (ask "500 + 200 = ?") (answer 700) (from "500 + 200")
          (wrong-if 520 "Add the hundreds: 5 hundreds and 2 hundreds are 7 hundreds.")))
  (answer "The book has a mass of 700 g."))
```

---

## Now you finish one

```figure
(ms-balance "rock" "1 kg x 4" 0)
(caption "Level: 4 masses of 1 kg")
```

The bar is level. There are 4 masses of 1 kg in the other pan.

```check
(number
  (ask "What is the mass of the rock in kilograms?")
  (answer 4) (unit "kg") (from "4 * 1")
  (wrong-if 4000 "4 kg is the same as 4000 g. But the question asks in kilograms, so the answer is 4.")
  (wrong-if 1 "Each mass is 1 kg, and there are 4 of them.")
  (hint "Each mass is 1 kg."))
```

---

## Practice

```check
(choice
  (ask "Which unit makes sense for the mass of a bike?")
  (right "Kilograms")
  (wrong "Grams"
    "A gram is about 1 paper clip. A bike is far heavier, so kilograms fit better.")
  (hint "Is a bike light or heavy?"))
```

```check
(number
  (ask "A bag of rice balances a 2 kg mass and a 1 kg mass. What is its mass in kilograms?")
  (answer 3) (unit "kg") (from "2 + 1")
  (wrong-if 2 "There is a 1 kg mass in the pan too. 2 kg + 1 kg = 3 kg.")
  (wrong-if 21 "Add the masses, do not write them side by side. 2 kg + 1 kg = 3 kg.")
  (hint "Add all the kilograms in the pan."))
```

---

```check
(choice
  (ask "Which is heavier: 1 kilogram or 1 gram?")
  (right "1 kilogram" (true "1000 > 1"))
  (wrong "1 gram"
    "1 gram is about 1 paper clip. 1 kilogram is 1000 grams, so it is much heavier.")
  (wrong "They are the same"
    "Both say 1, but the units are different. 1 kilogram is 1000 grams.")
  (hint "How many grams are in 1 kilogram?"))
```

```check
(number
  (ask "A toy balances 3 masses of 20 g. What is its mass?")
  (answer 60) (unit "g") (from "3 * 20")
  (wrong-if 23 "There are 3 masses, each 20 g. Add 20 + 20 + 20.")
  (wrong-if 20 "20 g is 1 mass. There are 3 of them.")
  (hint "20 + 20 + 20 = ?"))
```

Now you can measure mass in grams (g) for light things and kilograms (kg) for heavy things.
