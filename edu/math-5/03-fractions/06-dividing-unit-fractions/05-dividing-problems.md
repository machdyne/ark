# Dividing word problems

```lesson
(objective "Solve real-world problems that divide a unit fraction by a whole number or a whole number by a unit fraction, with a model and an equation.")
(standards "5.NF.B.7c")
(minutes 30)
```

Two kinds of problems divide with unit fractions.

Sharing a unit fraction: 3 people share $1/2$ pound of chocolate
equally. How much does each get?

$$ (1/2) ÷ 3 = 1/6 $$

Each gets $1/6$ pound. Check: $(1/6) * 3 = 3/6 = 1/2$.

```figure
(frac-bar 0 2 1 'cool "1/2")
(frac-bar 1 6 1 'cool "1/6")
(line 188 72 188 110 'ink 3)
(caption "1/2 pound cut into 3 shares: each 1/6 pound")
```

```check
(fraction
  (ask "4 friends share" (math "1/3") "of a liter of juice equally. How many liters does each get?")
  (answer 1 12) (equivalent) (true "(1/3) ÷ 4 = 1/12")
  (wrong-if (4 3) "4/3 liters is more than the 1/3 liter there is. Sharing makes each part smaller.")
  (wrong-if (1 4) "1/4 is the part of the juice, not liters. Cut every third of a liter into 4: 1/12 liter.")
  (hint "Equation: (1/3) ÷ 4 = ?")
  (hint "Cut each third into 4."))
```

---

## How many fit?

Counting pieces: Kim has 3 cups of rice. One serving is $1/4$ cup. How
many servings does she have?

$$ 3 ÷ (1/4) = 12 $$

12 servings. Check: $12 * (1/4) = 3$.

```figure
(m5p3-line 30 290 150 3 4 'whole)
(m5p3-hops 12 4 'cool)
(text 160 80 "12 servings of 1/4 cup in 3 cups" 'centre 'small 'bold)
```

```check
(number
  (ask "A rope is 5 meters long. Leo cuts it into pieces" (math "1/2") "meter long. How many pieces does he get?")
  (answer 10) (unit "pieces") (from "5 ÷ (1/2)")
  (wrong-if 2.5 "2 1/2 is half of 5 meters. The question asks how many half-meters fit in 5: 2 in each meter.")
  (hint "Equation: 5 ÷ (1/2) = ?")
  (hint "2 halves in each meter."))
```

---

## Which kind?

- A unit fraction shared by a number of people: unit fraction ÷ whole
  number. The answer is a smaller fraction.
- How many unit-fraction pieces fit in a whole number: whole number ÷
  unit fraction. The answer is a whole number, bigger than the whole
  number you started with (if it is more than 0).

```check
(choice
  (ask "A 2-pound bag of nuts is put into bags of" (math "1/8") "pound. Which equation fits?")
  (right "2 ÷ (1/8) = 16 bags" (true "2 ÷ (1/8) = 16"))
  (wrong "(1/8) ÷ 2 = 1/16 pound"
    "That shares 1/8 pound between 2. Here you count how many 1/8-pound bags fit in 2 pounds.")
  (wrong "2 x (1/8) = 1/4 pound"
    "That is 2 bags of 1/8 pound. The question asks how many bags.")
  (hint "Are you sharing a small part, or counting how many fit?"))
```

---

## Worked example

```example
(example
  (problem "1/4 of a garden is shared equally by 2 classes. What part of the garden does each class get?")
  (step "A unit fraction shared: (1/4) ÷ 2.")
  (step "Cut each fourth into 2: 8 parts. (1/4) ÷ 2 = 1/8.")
  (step "Check: (1/8) x 2 = 2/8 = 1/4.")
  (answer "Each class gets 1/8 of the garden."))
```

```example
(example
  (problem "A path is 4 miles long. There is a water stop every 1/3 mile. How many thirds of a mile is the path?")
  (step "How many thirds fit in 4: 4 ÷ (1/3).")
  (step (number (ask "4 ÷ (1/3) = ?") (answer 12) (from "4 ÷ (1/3)")
    (wrong-if 1.3333333333 "That is 4 ÷ 3. Count thirds in 4: 3 in each mile.")))
  (answer "The path is 12 thirds of a mile."))
```

---

## Practice

```check
(fraction
  (ask "5 children share" (math "1/2") "of a pan of brownies equally. What part of the pan does each get?")
  (answer 1 10) (equivalent) (true "(1/2) ÷ 5 = 1/10")
  (wrong-if (5 2) "5/2 is 2 1/2 pans. There is only 1/2 a pan to share.")
  (hint "(1/2) ÷ 5"))
```

```check
(number
  (ask "Ty has 6 hours to practice. Each practice is" (math "1/2") "hour. How many practices can he fit in?")
  (answer 12) (unit "practices") (from "6 ÷ (1/2)")
  (wrong-if 3 "3 is half of 6. Count half hours in 6 hours: 2 in each hour.")
  (hint "6 ÷ (1/2)"))
```

---

```check
(number
  (ask "A baker has 3 kilograms of flour. Each loaf needs" (math "1/5") "kilogram. How many loaves can she make?")
  (answer 15) (unit "loaves") (from "3 ÷ (1/5)")
  (wrong-if 0.6 "That is 3 x (1/5), the flour for 3 loaves. Count how many fifths fit in 3.")
  (hint "5 fifths in each kilogram."))
```

```check
(fraction
  (ask "Mo has" (math "1/4") "pound of cheese. He cuts it into 3 equal pieces. How much does each piece weigh, in pounds?")
  (answer 1 12) (equivalent) (true "(1/4) ÷ 3 = 1/12")
  (wrong-if (3 4) "3/4 pound is more than he has. Each piece is a part of 1/4 pound.")
  (wrong-if (1 7) "That adds 4 and 3. Cut every fourth into 3: 12 parts.")
  (hint "(1/4) ÷ 3"))
```

For a dividing problem, decide: is a unit fraction shared, or are you
counting how many unit fractions fit? Then write the equation, solve,
and check by multiplying.
