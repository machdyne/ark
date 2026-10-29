# How many groups?

```lesson
(objective "Find how many equal groups of a given size a total makes.")
(standards "3.OA.A.2")
(minutes 20)
```

You can find how many equal groups you can make from a total.

Sometimes you know how many go in each group, but not how many groups
there are. Ava has 15 eggs. She puts 3 eggs in each nest. How many
nests does she fill?

Make groups of 3 until no eggs are left. Then count the groups.

```figure
(md-groups 14 70 5 3 26 5 'ink)
(caption "15 eggs, 3 in each nest")
```

```check
(number
  (ask "How many nests of 3 can Ava fill with 15 eggs?")
  (answer 5) (from "15 / 3") (true "3 + 3 + 3 + 3 + 3 = 15")
  (wrong-if 3 "3 is how many eggs go in each nest. Count the nests, the circles.")
  (wrong-if 12 "12 is 15 - 3: that takes away only one nest. Keep making nests of 3 until all 15 eggs are used.")
  (hint "Count the circles."))
```

---

## This is division too

Finding how many groups is also division. Ava's eggs give the equation

$$ 15 ÷ 3 = 5 $$

Here 15 is the total, 3 is how many in each group, and 5 is how many
groups. So 15 ÷ 3 can mean "15 shared into 3 groups" or "15 in groups
of 3". Both give 5.

```check
(choice
  (ask "Which story fits 20 ÷ 4 = 5, with 4 in each group?")
  (right "20 apples go into bags of 4. There are 5 bags.")
  (wrong "20 apples go into 5 bags. There are 4 bags left."
    "Bags are not left over in division. In this story, each bag holds 4 and you count the bags: 5.")
  (wrong "4 bags each hold 20 apples."
    "That is 4 groups of 20, which is multiplication. Division starts with the total of 20.")
  (hint "The story should start with 20 and put 4 in each group."))
```

---

## Jump back on a number line

You can also jump back from the total. Each jump takes away one group.
Count the jumps until you reach 0.

```figure
(number-line 20 300 130 0 15 1 3)
(md-jumps 15 5 -3 'ink)
(nl-mark 15 'ink)
(caption "From 15, 5 jumps of 3 reach 0.")
```

```check
(number
  (ask "Start at 18. Jump back 6 each time. How many jumps reach 0?")
  (answer 3) (from "18 / 6") (true "6 + 6 + 6 = 18")
  (wrong-if 12 "12 is where you land after 1 jump. Keep jumping: 18, 12, 6, 0. Count the jumps.")
  (wrong-if 6 "6 is the size of each jump. Count how many jumps it takes to get to 0.")
  (hint "18, 12, 6, 0. Count the jumps, not the numbers."))
```

---

## Worked example

```example
(example
  (problem "There are 24 children. Each team has 6 children. How many teams are there?")
  (step "The total is 24. Each group has 6. We need the number of groups.")
  (step "Make teams of 6: 6, 12, 18, 24. That uses all 24 children.")
  (step "Count the teams: 4.")
  (answer "24 ÷ 6 = 4. There are 4 teams."))
```

```example
(example
  (problem "Ian has 14 socks. He puts them in pairs, 2 in each pair. How many pairs does he make?")
  (step "The total is 14. Each group has 2.")
  (step "Count by 2s to 14: 2, 4, 6, 8, 10, 12, 14.")
  (step (number (ask "How many 2s did you count?") (answer 7) (from "14 / 2")
    (wrong-if 12 "12 is 14 - 2, just one pair taken away. Count every 2 you said on the way to 14.")))
  (answer "14 ÷ 2 = 7. He makes 7 pairs."))
```

---

## Practice

```check
(number
  (ask "30 pencils go in boxes of 10. How many boxes are needed?")
  (answer 3) (unit "boxes") (from "30 / 10")
  (wrong-if 20 "20 is 30 - 10, just one box filled. Fill boxes of 10 until all 30 are used: 10, 20, 30.")
  (wrong-if 10 "10 is how many go in each box. Count the boxes.")
  (hint "Count by 10s to 30. How many 10s?"))
```

```check
(number
  (ask "A ribbon is 16 feet long. Lin cuts it into pieces 4 feet long. How many pieces does she get?")
  (answer 4) (unit "pieces") (from "16 / 4")
  (wrong-if 12 "12 feet is what is left after one cut. Keep cutting 4 feet at a time until none is left.")
  (hint "4, 8, 12, 16. How many 4s?"))
```

---

```check
(choice
  (ask "Which question does 21 ÷ 7 answer, with 7 in each group?")
  (right "21 days. How many weeks of 7 days?")
  (wrong "7 weeks. How many days?"
    "7 weeks of 7 days is 7 groups of 7: multiplication. The division starts with the total, 21 days.")
  (wrong "21 days. 7 days pass. How many days are left?"
    "Days passing takes some away: that is 21 - 7. Division counts how many weeks fit in 21 days.")
  (hint "The total is 21. Each group is 7."))
```

So: when you know how many go in each group, divide the total by that number to find how many groups.
