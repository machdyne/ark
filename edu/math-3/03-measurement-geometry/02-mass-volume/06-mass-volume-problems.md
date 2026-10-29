# Mass and volume problems

```lesson
(objective "Solve one-step word problems about masses or liquid volumes in the same units.")
(standards "3.MD.A.2")
(minutes 25)
```

You can solve word problems about mass and liquid volume by adding, subtracting, multiplying or dividing.

When things are put together, add. A bag of apples is 3 kg. A bag of potatoes is 5 kg. Together they are 3 + 5 = 8 kg.

```figure
(ms-balance "2 bags" "8 kg" 0)
(caption "Both bags together balance 8 kg.")
```

```check
(number
  (ask "A jug has 4 L of water. A pail has 7 L. How many liters are there in all?")
  (answer 11) (unit "L") (from "4 + 7")
  (wrong-if 3 "That is the difference. \"In all\" puts them together, so add.")
  (hint "Put the 2 amounts together: 4 + 7."))
```

---

## How much more?

To find how much more, subtract. A cat is 4 kg. A dog is 9 kg. The dog is 9 - 4 = 5 kg more.

```figure
(ms-balance "cat 4 kg" "dog 9 kg" 1)
(caption "9 kg - 4 kg = 5 kg more")
```

```check
(number
  (ask "A melon is 900 g. A pear is 200 g. How many more grams is the melon?")
  (answer 700) (unit "g") (from "900 - 200")
  (wrong-if 1100 "Adding finds the total mass. \"How many more\" asks for the difference, so subtract.")
  (hint "Subtract the smaller mass from the bigger one."))
```

---

## Equal groups: multiply

When there are equal groups, multiply. 4 bags of rice each have a mass of 6 kg.

$$ 4 * 6 = 24 $$

The 4 bags are 24 kg in all.

```check
(number
  (ask "A class fills 3 fish tanks. Each tank holds 8 L. How many liters is that in all?")
  (answer 24) (unit "L") (from "3 * 8")
  (wrong-if 11 "3 + 8 adds the count and the size. There are 3 equal groups of 8 L, so multiply.")
  (hint "3 groups of 8 L: 3 x 8."))
```

---

## Share equally: divide

When an amount is shared into equal parts, divide. 12 L of water is poured equally into 3 jugs.

$$ 12 ÷ 3 = 4 $$

Each jug gets 4 L.

```figure
(for-range 0 3 (lambda (i) (ms-jug (+ 30 (* 95 i)) 40 50 160 6 4)))
(caption "12 L shared into 3 jugs: 4 L each")
```

```check
(number
  (ask "20 kg of sand is put into 5 bags. Each bag gets the same mass. How many kilograms are in each bag?")
  (answer 4) (unit "kg") (from "20 / 5")
  (wrong-if 100 "Multiplying makes more. The sand is shared into 5 bags, so each bag has less: divide.")
  (wrong-if 15 "20 - 5 takes away 5 kg. Sharing into 5 equal bags is 20 ÷ 5.")
  (hint "Share 20 kg into 5 equal bags: 20 ÷ 5."))
```

---

## A worked example

```example
(example
  (problem "A baker has 2 bags of flour. Each bag is 5 kg. How many kilograms of flour does she have?")
  (step "There are 2 equal groups of 5 kg.")
  (step "Equal groups: multiply.")
  (step (number (ask "2 x 5 = ?") (answer 10) (from "2 * 5")
          (wrong-if 7 "2 + 5 adds. 2 groups of 5 is 5 + 5.")))
  (answer "She has 10 kg of flour."))
```

---

## Now you finish one

A pot has 9 L of soup. You serve 3 L.

```check
(choice
  (ask "What do you do to find how much soup is left?")
  (right "Subtract: 9 - 3")
  (wrong "Add: 9 + 3"
    "Serving soup takes it out of the pot. Taking away means subtract.")
  (wrong "Multiply: 9 x 3"
    "There are no equal groups here. Some soup is taken out, so subtract.")
  (hint "Does the soup in the pot go up or down?"))
```

```check
(number
  (ask "How many liters are left?")
  (answer 6) (unit "L") (from "9 - 3")
  (wrong-if 12 "That adds. The soup served is taken away.")
  (hint "9 - 3 = ?"))
```

---

## Practice

```check
(number
  (ask "There are 5 bags of nuts. Each bag is 80 g. What is the mass of the 5 bags?")
  (answer 400) (unit "g") (from "5 * 80")
  (wrong-if 85 "5 + 80 adds the count and the mass. There are 5 equal groups of 80 g, so multiply.")
  (hint "5 groups of 80 g: 5 x 80.")
  (hint "5 x 8 tens = 40 tens."))
```

```check
(number
  (ask "45 L of water is poured equally into 9 buckets. How many liters are in each bucket?")
  (answer 5) (unit "L") (from "45 / 9")
  (wrong-if 36 "45 - 9 takes away 9 L once. The water is shared into 9 equal parts: 45 ÷ 9.")
  (hint "What number times 9 is 45?"))
```

---

```check
(number
  (ask "A rabbit is 2 kg. A goat is 30 kg. How many kilograms heavier is the goat?")
  (answer 28) (unit "kg") (from "30 - 2")
  (wrong-if 32 "That is the 2 animals together. \"How much heavier\" asks for the difference.")
  (hint "Subtract: 30 - 2."))
```

```check
(number
  (ask "A party has 1 L of juice. Then a dad brings 2 L more. How many liters of juice are there?")
  (answer 3) (unit "L") (from "1 + 2")
  (wrong-if 1 "That subtracts. Juice is added, so add the amounts.")
  (hint "Put the 2 amounts together."))
```

Now you can add, subtract, multiply or divide to solve problems with masses and liquid volumes.
