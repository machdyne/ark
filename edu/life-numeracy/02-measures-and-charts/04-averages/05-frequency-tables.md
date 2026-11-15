# Frequency tables

```lesson
(objective "Find the total and the mean from a frequency table.")
(minutes 25)
(keywords "frequency" "frequency table")
```

You can read a frequency table and work out the mean from it.

The **frequency** of a value is how many times it comes up. A **frequency table** lists each value once, with its frequency beside it. It is shorter than writing every value out.

A made-up survey asked 20 households how many people live in them:

| People | Frequency |
|---|---|
| 1 | 5 |
| 2 | 7 |
| 3 | 4 |
| 4 | 4 |

So 5 households have 1 person, 7 have 2, and so on.

```check
(number
  (ask "How many households have 3 or more people?")
  (answer 8) (unit "households") (from "4 + 4")
  (wrong-if 7 "7 households have 2 people. You need 3 or more people: the rows for 3 and 4, so 4 + 4.")
  (hint "Add the frequencies for 3 and for 4."))
```

---

## The mode from a table

The mode is the value with the biggest frequency. Here that is 2 people (7 households). Take care: the mode is the value, 2, not the frequency, 7.

```check
(choice
  (ask "What is the mode number of people per household?")
  (right "2")
  (wrong "7"
    "7 is how many households have 2 people: the frequency. The mode is the value that has it: 2 people.")
  (wrong "4"
    "4 is the biggest household size, not the most common one.")
  (hint "Which row has the biggest frequency?"))
```

---

## The total from a table

To find the total number of people, multiply each value by its frequency, then add:

| People | Frequency | People times frequency |
|---|---|---|
| 1 | 5 | 5 |
| 2 | 7 | 14 |
| 3 | 4 | 12 |
| 4 | 4 | 16 |
| Total | 20 | 47 |

```check
(choice
  (ask "Why multiply 3 by 4 in the third row?")
  (right "4 households each have 3 people, so that is 12 people")
  (wrong "To find how many households there are"
    "The households are just the frequency column, 4. Multiplying gives the people living in those households.")
  (hint "4 households, 3 people in each."))
```

---

## The mean from a table

Mean = total of the values divided by how many values. Here: 47 people in 20 households.

$$ 47 / 20 = 2.35 $$

The mean is 2.35 people per household. A mean like this need not be a whole number.

```example
(example
  (problem "A shop counts items per receipt: 1 item (6 receipts), 2 items (8), 3 items (6). Find the mean.")
  (step "Items: 1 * 6 + 2 * 8 + 3 * 6 = 6 + 16 + 18 = 40.")
  (step "Receipts: 6 + 8 + 6 = 20.")
  (step "40 / 20 = 2.")
  (answer "The mean is 2 items per receipt."))
```

```check
(number
  (ask "Now you: goals per game: 0 goals (3 games), 1 goal (5 games), 2 goals (2 games). What is the mean, in goals per game?")
  (answer 0.9) (from "(0 * 3 + 1 * 5 + 2 * 2) / 10")
  (wrong-if 1 "That is the mean of the values 0, 1, 2, ignoring how often each came up. Use value times frequency: 9 goals in 10 games.")
  (wrong-if 3 "That divides the 9 goals by the 3 rows. Divide by the number of games, 10.")
  (hint "Total goals: 0 * 3 + 1 * 5 + 2 * 2.")
  (hint "Divide by the number of games: 3 + 5 + 2."))
```

---

## Practice

```check
(number
  (ask "From the households table, what is the range of people per household?")
  (answer 3) (from "4 - 1")
  (wrong-if 4 "4 is the biggest value. The range takes the smallest away from it: 4 - 1.")
  (hint "Biggest value minus smallest value."))
```

```check
(number
  (ask "Shoe sizes sold: size 7 (2 pairs), 8 (5 pairs), 9 (3 pairs). What is the mean size?")
  (answer 8.1) (from "(7 * 2 + 8 * 5 + 9 * 3) / 10")
  (wrong-if 8 "That is the mean of 7, 8 and 9 as if each sold once. Weight each size by its frequency: 81 / 10.")
  (hint "Total: 7 * 2 + 8 * 5 + 9 * 3 = 81.")
  (hint "Divide by the 10 pairs."))
```

In a frequency table, multiply each value by its frequency to find the total, then divide by the total frequency to find the mean.
