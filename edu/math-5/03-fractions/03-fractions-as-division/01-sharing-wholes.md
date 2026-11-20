# Sharing wholes

```lesson
(objective "Share a wholes equally among b people with a model, and show each share is a/b, such as 3 pancakes shared by 4 people: 3/4 each.")
(standards "5.NF.B.3")
(minutes 20)
```

When people share wholes equally, each share can be a fraction.

4 friends share 3 pancakes equally. How much does each friend get?

There are not enough pancakes for 1 each. So cut each pancake into 4
equal parts, one for each friend.

```figure
(m5p3-share 40 30 240 34 3 4)
(text 160 180 "Friend 1 gets 1 part of each pancake:" 'centre 'small)
(text 160 200 "3 parts, each 1/4. That is 3/4." 'centre 'body 'bold)
```

Each friend gets 1 fourth from each of the 3 pancakes: $3/4$ of a
pancake.

```check
(fraction
  (ask "3 friends share 2 pancakes equally. How much does each friend get?")
  (answer 2 3) (equivalent) (true "2 ÷ 3 = 2/3")
  (wrong-if (3 2) "3/2 is more than 1 pancake each. But there are fewer pancakes than friends, so each gets less than 1.")
  (wrong-if (1 3) "Each friend gets 1 third from EACH of the 2 pancakes: 2 thirds.")
  (hint "Cut each pancake into 3 equal parts.")
  (hint "How many parts does each friend get?"))
```

---

## Why it works

Each whole is cut into as many parts as there are people. Each person
gets 1 part from every whole.

So with $a$ wholes and $b$ people, each person gets $a$ parts, each
$1/b$. That is $a/b$.

5 wholes shared by 8 people: each gets $5/8$.

```check
(choice
  (ask "5 people share 4 sandwiches equally. Which way of sharing is right?")
  (right "Cut each sandwich into 5 parts. Each person gets 4 parts: 4/5")
  (wrong "Cut each sandwich into 4 parts. Each person gets 5 parts: 5/4"
    "4 sandwiches in fourths make only 16 parts, not enough for 5 parts each. Cut each sandwich into 5 parts, one per person: each gets 4 parts, so 4/5.")
  (wrong "Cut each sandwich into 5 parts. Each person gets 1 part: 1/5"
    "Each person gets 1 part from EACH sandwich. There are 4 sandwiches, so 4 parts: 4/5.")
  (hint "How many people? Cut each sandwich into that many parts."))
```

---

## More than 1 each

The same works when there are more wholes than people.

2 people share 3 pies. Cut each pie into 2 halves. Each person gets 1
half from each pie: $3/2$, which is $1 1/2$ pies.

```figure
(m5p3-share 70 30 180 34 3 2)
(text 160 180 "Person 1: 3 halves = 1 1/2 pies" 'centre 'body 'bold)
```

```check
(fraction
  (ask "4 children share 5 melons equally. How much does each child get?")
  (answer 5 4) (equivalent) (true "5 ÷ 4 = 5/4")
  (wrong-if (4 5) "There are more melons than children, so each child gets more than 1. Each gets 5 fourths.")
  (hint "Cut each melon into 4 parts.")
  (hint "Each child gets 1 part from each of the 5 melons."))
```

---

## Worked example

```example
(example
  (problem "6 friends share 5 pizzas equally. How much does each friend get?")
  (step "Cut each pizza into 6 equal parts.")
  (step "Each friend gets 1 part of each of the 5 pizzas.")
  (step "5 parts, each 1/6: 5/6 of a pizza.")
  (answer "Each friend gets 5/6 of a pizza."))
```

```example
(example
  (problem "3 people share 7 yards of rope equally. How much does each get?")
  (step "Cut each yard into 3 equal parts. Each person gets 1 part of each yard.")
  (step (fraction (ask "So each person gets how many yards?") (answer 7 3) (equivalent) (true "7 ÷ 3 = 7/3")
    (wrong-if (3 7) "There is more rope than people, so each gets more than 1 yard: 7 thirds.")))
  (answer "Each person gets 7/3 = 2 1/3 yards."))
```

---

## Practice

```check
(fraction
  (ask "8 students share 3 granola bars equally. How much does each get?")
  (answer 3 8) (equivalent) (true "3 ÷ 8 = 3/8")
  (wrong-if (8 3) "8/3 is more than 2 bars each, but there are only 3 bars for 8 students.")
  (wrong-if (1 8) "Each student gets 1 eighth from EACH of the 3 bars.")
  (hint "Cut each bar into 8 parts."))
```

```check
(fraction
  (ask "5 friends share 2 liters of juice equally. How many liters does each get?")
  (answer 2 5) (equivalent) (true "2 ÷ 5 = 2/5")
  (wrong-if (5 2) "That is 2 1/2 liters each, more than all the juice. Each gets less than 1 liter.")
  (hint "Cut each liter into 5 parts."))
```

---

```check
(fraction
  (ask "3 children share 10 crackers equally. How many crackers does each get?")
  (answer 10 3) (equivalent) (true "10 ÷ 3 = 10/3")
  (wrong-if (3 10) "There are more crackers than children. Each child gets more than 3 crackers.")
  (wrong-if (3 1) "3 each uses only 9 crackers. The 10th is shared too: 1/3 more each.")
  (hint "Each child gets 1 third of each of the 10 crackers."))
```

```check
(choice
  (ask "7 people share 4 cakes equally. Which is true?")
  (right "Each gets 4/7, less than 1 cake" (true "4/7 < 1"))
  (wrong "Each gets 7/4, more than 1 cake"
    "There are fewer cakes than people, so no one can get a whole cake. Each gets 4/7.")
  (wrong "They cannot share, since 4 is less than 7"
    "Cut each cake into 7 parts. Then each person gets 4 parts.")
  (hint "Are there more cakes or more people?"))
```

When $a$ wholes are shared equally by $b$ people, each person gets
$a/b$.
