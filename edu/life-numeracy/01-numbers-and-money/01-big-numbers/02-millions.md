# Thousands, millions and billions

```lesson
(objective "Read and write numbers in the thousands, millions and billions, in figures and in words.")
(minutes 20)
(keywords "million" "billion")
```

Big numbers in the news and on bills are easy to read once you split
them into groups of three digits.

Starting from the right, mark off the digits in threes. In the US and
the UK a comma marks each group: 45,600. The group left of the comma
is the thousands.

| thousands | (ones) |
|---|---|
| 45 | 600 |

Read each group as a small number, then say its name: "45 thousand,
600".

```check
(choice
  (ask "How do you read 38,200?")
  (right "38 thousand 200")
  (wrong "3 thousand 820" "The comma comes after the first two digits, 38. Everything left of the comma is thousands, so it is 38 thousand.")
  (wrong "382 thousand" "The group 200 after the comma is the ones group: it is 200, not part of the thousands.")
  (hint "Read the part left of the comma, then say \"thousand\"."))
```

---

## A million and a billion

A **million** is a thousand thousands: 1,000,000, a 1 with six zeros.
A **billion** is a thousand millions: 1,000,000,000, a 1 with nine
zeros. These are the next two groups to the left.

| billions | millions | thousands | (ones) |
|---|---|---|---|
| | 2 | 450 | 000 |

So 2,450,000 is read "2 million, 450 thousand".

```note
(note "Older British books sometimes used \"billion\" for a million millions. Today the US, the UK and news in English use a billion for a thousand million.")
```

```sources
(source "Oxford English Dictionary, \"billion\"")
```

```check
(number
  (ask "How many thousands make a million?")
  (answer 1000) (from "1000000 / 1000")
  (wrong-if 100 "100 thousands is 100,000, a hundred thousand. A million needs ten times as many: 1000 thousands.")
  (wrong-if 10 "10 thousands is 10,000. A million is a thousand thousands.")
  (hint "A million has six zeros; a thousand has three."))
```

---

## Writing a big number in figures

Write each group as three digits, filling with zeros where a group is
smaller than 100. "4 million, 60 thousand" is 4,060,000: the thousands
group is 060.

```example
(example
  (problem "Write 7 million, 5 thousand in figures.")
  (step "Millions group: 7.")
  (step "Thousands group: 5, written as 005.")
  (step "Ones group: nothing, written 000.")
  (answer "7,005,000"))
```

```example
(example
  (problem "Write 3 million, 250 thousand in figures.")
  (step "Millions: 3. Thousands: 250. Ones: 000.")
  (step (number (ask "Type the number without commas.") (answer 3250000) (from "3 * 1000000 + 250 * 1000")
    (wrong-if 3250 "That is 3 thousand 250. The 3 is millions, so the number needs two full groups after it: 3,250,000.")))
  (answer "3,250,000"))
```

---

## Millions and billions in the news

News reports often write big numbers half in words: "350
million dollars" is 350,000,000 dollars. To compare two of them, put
them in the same terms first: millions with millions.

```check
(choice
  (ask "A city spends 2 billion dollars in a year. How many millions is that?")
  (right "2000 million" (true "2 * 1000 = 2000"))
  (wrong "2 million" "A billion is a thousand millions, so 2 billion is far more than 2 million: 2000 million.")
  (wrong "200 million" "Each billion is 1000 million, not 100 million. 2 billion is 2000 million.")
  (hint "1 billion = 1000 million."))
```

---

## Practice

```check
(number
  (ask "Write \"12 million, 400 thousand\" in figures. Type it without commas.")
  (answer 12400000) (from "12 * 1000000 + 400 * 1000")
  (wrong-if 12400 "That is 12 thousand 400. The 12 is millions, so two groups of three digits follow it.")
  (wrong-if 1240000 "Count the groups: 12 is millions, then 400 thousands, then 000. That is 12,400,000, eight digits.")
  (hint "Millions: 12. Thousands: 400. Ones: 000."))
```

```check
(choice
  (ask "Which is the largest?")
  (right "1,500,000,000" (true "1500000000 > 950000000"))
  (wrong "950,000,000" (false "950000000 > 1500000000") "950,000,000 starts with a 9, but it is 950 million, less than one billion. 1,500,000,000 is 1 and a half billion.")
  (wrong "25,000,000" "25 million is less than a billion. Count the groups of three: more groups make a bigger number.")
  (hint "Count the groups of three digits in each."))
```

```check
(number
  (ask "A car costs 23,050 dollars. How many whole thousands of dollars is that?")
  (answer 23) (true "23 * 1000 <= 23050 < 24 * 1000")
  (wrong-if 2 "The comma comes after 23, so the thousands group is 23, not 2.")
  (wrong-if 230 "Only the digits left of the comma count as thousands: 23.")
  (hint "Read the digits to the left of the comma."))
```

Split a big number into groups of three from the right, and read each
group with its name: billion, million, thousand.
