# Equal groups

```lesson
(objective "Describe a set of objects as a number of equal groups of the same size, and find the total by adding.")
(standards "3.OA.A.1")
(minutes 20)
(keywords "equal groups")
```

You can find how many there are in all when things come in equal groups.

Look at the bags of apples. Each bag holds 4 apples. When every group
has the same number of things, they are **equal groups**.

```figure
(md-groups 40 50 3 4 36 3 'ink)
(label 76 150 "4" 'body)
(label 156 150 "4" 'body)
(label 236 150 "4" 'body)
(caption "3 bags. Each bag holds 4 apples.")
```

```check
(number
  (ask "How many apples are in each bag?")
  (answer 4)
  (wrong-if 3 "3 is the number of bags. Look inside one bag and count the apples.")
  (wrong-if 12 "12 is all the apples in all the bags. The question asks about one bag.")
  (hint "Pick one bag. Count the dots inside it."))
```

---

## Same size or not?

Groups are equal only when each group has the same number. Count
every group before you say they are equal.

```figure
(label 160 22 "A" 'body 'bold)
(md-groups 52 30 3 3 30 3 'ink)
(label 160 130 "B" 'body 'bold)
(md-groups 52 138 1 2 30 3 'ink)
(md-groups 128 138 1 3 30 3 'ink)
(md-groups 204 138 1 4 30 3 'ink)
```

```check
(choice
  (ask "Which picture shows equal groups?")
  (right "A")
  (wrong "B"
    "B has 3 groups too, but they hold 2, 3 and 4 dots. The groups are not the same size, so they are not equal.")
  (wrong "Both A and B"
    "Both have 3 groups. But only in A does every group hold the same number of dots.")
  (hint "Count the dots in each group of B. Are the numbers the same?"))
```

---

## Say it in words

To describe equal groups, say 2 numbers: how many groups, and how many
in each group.

This picture shows **4 groups of 2**. The first number tells how many
groups. The second tells how many are in each group.

```figure
(md-groups 22 70 4 2 30 4 'ink)
(caption "4 groups of 2")
```

```check
(choice
  (ask "There are 5 plates. Each plate has 3 cookies. How do you describe them?")
  (right "5 groups of 3")
  (wrong "3 groups of 5"
    "The first number tells how many groups. There are 5 plates, so there are 5 groups. Each group has 3.")
  (wrong "8 groups"
    "8 is 5 + 3, but that mixes plates and cookies. Say the number of groups, then the number in each.")
  (hint "How many plates are there? That is the number of groups."))
```

---

## Add to find the total

To find how many in all, add the same number once for each group.
Move the slider to change the number of groups. Each group holds 3.

```figure
(define n (slider 'n 1 6 3 "Groups" 1))
(md-groups 64 16 n 3 28 3 'ink)
(label 160 168 (string-append (fmt n 0) " groups of 3") 'body)
(label 160 196 (string-append (md-adds 3 n) " = " (fmt (* 3 n) 0)) 'body 'bold)
```

```check
(number
  (ask "There are 5 groups of 3. How many are there in all?")
  (answer 15) (from "3 + 3 + 3 + 3 + 3")
  (wrong-if 8 "8 is 5 + 3. You need to add 3 once for each of the 5 groups: 3 + 3 + 3 + 3 + 3.")
  (wrong-if 12 "That is 4 groups of 3. Count the groups again: there are 5.")
  (hint "Write 3 five times, with + signs between.")
  (hint "Count on by 3s: 3, 6, 9, 12 ..."))
```

---

## Worked example

```example
(example
  (problem "Sam has 4 boxes. Each box holds 5 crayons. How many crayons are there in all?")
  (step "Each box holds the same number, so these are equal groups: 4 groups of 5.")
  (step "Add 5 once for each box: 5 + 5 + 5 + 5.")
  (step "5 + 5 = 10, 10 + 5 = 15, 15 + 5 = 20.")
  (answer "There are 20 crayons."))
```

```example
(example
  (problem "There are 3 vases. Each vase has 6 flowers. How many flowers are there in all?")
  (step "These are equal groups: 3 groups of 6.")
  (step "Add 6 once for each vase: 6 + 6 + 6.")
  (step (number (ask "What is 6 + 6 + 6?") (answer 18) (from "6 + 6 + 6")
    (wrong-if 12 "That is 6 + 6, only 2 vases. There are 3 vases.")))
  (answer "There are 18 flowers."))
```

---

## Practice

```figure
(md-groups 14 60 4 4 32 4 'ink)
```

```check
(choice
  (ask "How do you describe the picture?")
  (right "4 groups of 4")
  (wrong "16 groups of 1"
    "There are 16 dots, but they are in 4 circles. Each circle is 1 group.")
  (wrong "4 groups of 16"
    "16 is all the dots. Each group holds only the dots in its own circle.")
  (hint "Count the circles. Then count the dots in one circle."))
```

```check
(number
  (ask "How many dots are there in all?")
  (answer 16) (from "4 + 4 + 4 + 4")
  (wrong-if 8 "8 is 4 + 4, which is only 2 groups. Add 4 once for each of the 4 groups.")
  (hint "Add 4 + 4 + 4 + 4."))
```

---

```check
(number
  (ask "A bike has 2 wheels. How many wheels do 6 bikes have?")
  (answer 12) (unit "wheels") (from "2 + 2 + 2 + 2 + 2 + 2")
  (wrong-if 8 "8 is 6 + 2. Each bike is a group of 2 wheels, so add 2 six times.")
  (hint "There are 6 groups of 2.")
  (hint "Count by 2s six times: 2, 4, 6 ..."))
```

```check
(choice
  (ask "Mia puts 10 marbles into 3 cups: 4, 3 and 3. Are these equal groups?")
  (right "No: the cups do not all hold the same number")
  (wrong "Yes: every cup has marbles"
    "Groups are equal only when each one has the same number. One cup has 4, and the others have 3.")
  (wrong "Yes: there are 3 cups"
    "The number of cups does not matter. What matters is that each cup holds the same number, and here they do not.")
  (hint "Look at the 3 numbers: 4, 3 and 3. Are they all the same?"))
```

So: equal groups all hold the same number. To find the total, add that number once for each group.
