# Multiplication

```lesson
(objective "Write a multiplication equation such as 5 x 7 = 35 for 5 groups of 7.")
(standards "3.OA.A.1")
(minutes 20)
(keywords "multiplication" "multiply" "equation")
```

You can write equal groups with a short new sign, ×.

Adding the same number again and again takes a long time. There is a
faster way. When you **multiply**, you find the total of equal groups
in one step. To find 4 groups of 5, you multiply 4 by 5.

```figure
(md-groups 18 50 4 5 32 4 'ink)
(label 160 150 "5 + 5 + 5 + 5 = 20" 'body)
(caption "4 groups of 5")
```

```check
(number
  (ask "You multiply to find 4 groups of 5. What is the total?")
  (answer 20) (from "5 + 5 + 5 + 5")
  (wrong-if 9 "9 is 4 + 5. Multiplying finds 4 groups of 5, which is 5 + 5 + 5 + 5.")
  (hint "Count by 5s, 4 times: 5, 10, 15 ..."))
```

---

## The times sign

**Multiplication** is how you find the total of equal groups. It has
its own sign, ×. You read it as "times".

$$ 4 × 5 = 20 $$

You say: 4 times 5 is 20. In this course, the first number tells how
many groups. The second tells how many are in each group. Some books
put them in the other order. The total is the same either way.

```check
(choice
  (ask "What does 3 × 6 mean, the way this course writes it?")
  (right "3 groups of 6")
  (wrong "3 + 6"
    "The × sign is not a + sign. 3 × 6 means 3 groups of 6, which is 6 + 6 + 6.")
  (wrong "36"
    "3 × 6 is not the digits 3 and 6 put side by side. It means 3 groups of 6.")
  (hint "The first number is the number of groups."))
```

---

## Equations

**4 × 5 = 20** is an **equation**. An equation is a number sentence
with an equal sign, =. The two sides of the = sign have the same value.

4 × 5 has the same value as 20. So the equation is true.

```check
(choice
  (ask "Which one is an equation?")
  (right "3 × 2 = 6")
  (wrong "3 × 2"
    "3 × 2 has no equal sign. An equation needs an = sign with a value on each side.")
  (wrong "3 groups of 2"
    "These are words for equal groups, with no equal sign. An equation has an = sign.")
  (hint "Look for the = sign."))
```

---

## From groups to an equation

Here are 5 groups of 7. Write the number of groups, then ×, then the
number in each group. Then write = and the total.

```figure
(md-groups 4 60 5 7 28 5 'ink)
(label 160 168 "5 × 7 = ?" 'big)
(caption "5 groups of 7")
```

```check
(number
  (ask "5 × 7 = ? What is the total?")
  (answer 35) (from "5 * 7") (true "7 + 7 + 7 + 7 + 7 = 35")
  (wrong-if 12 "12 is 5 + 7. The × sign means 5 groups of 7: add 7 five times.")
  (wrong-if 28 "That is 4 groups of 7. There are 5 groups.")
  (hint "Count by 7s, 5 times.")
  (hint "7, 14, 21, 28 ..."))
```

---

## Worked example

```example
(example
  (problem "There are 3 tables. Each table has 4 chairs. Write a multiplication equation for all the chairs.")
  (step "There are 3 equal groups of 4 chairs.")
  (step "Write the number of groups, then ×, then the number in each: 3 × 4.")
  (step "Find the total: 4 + 4 + 4 = 12.")
  (answer "3 × 4 = 12. There are 12 chairs."))
```

```example
(example
  (problem "There are 6 packs. Each pack has 2 juice boxes. Write a multiplication equation.")
  (step "There are 6 equal groups of 2.")
  (step "Write the number of groups, then ×, then the number in each: 6 × 2.")
  (step (number (ask "6 × 2 = ?") (answer 12) (from "6 * 2")
    (wrong-if 8 "8 is 6 + 2. 6 × 2 means 6 groups of 2: 2 + 2 + 2 + 2 + 2 + 2.")))
  (answer "6 × 2 = 12. There are 12 juice boxes."))
```

---

## Practice

```check
(choice
  (ask "There are 4 groups of 8. Which equation shows them?")
  (right "4 × 8 = 32" (true "4 * 8 = 32"))
  (wrong "4 + 8 = 12"
    "This adds one 4 and one 8. There are 4 groups of 8, so you multiply: 4 × 8.")
  (wrong "4 × 8 = 24" (false "4 * 8 = 24")
    "24 is 3 groups of 8. Count by 8s 4 times: 8, 16, 24, 32.")
  (hint "Count by 8s, 4 times."))
```

```check
(number
  (ask "2 × 9 = ?")
  (answer 18) (from "2 * 9")
  (wrong-if 11 "11 is 2 + 9. 2 × 9 means 2 groups of 9: 9 + 9.")
  (hint "2 groups of 9 is 9 + 9."))
```

---

```check
(number
  (ask "A spider has 8 legs. Write 3 × 8 for 3 spiders. How many legs is that?")
  (answer 24) (unit "legs") (from "3 * 8")
  (wrong-if 11 "11 is 3 + 8. Each spider is a group of 8 legs, so add 8 three times.")
  (hint "8 + 8 + 8"))
```

```check
(choice
  (ask "Which story fits 5 × 3?")
  (right "5 bags with 3 pears in each bag")
  (wrong "5 bags with 15 pears in each bag"
    "15 is the total: 5 × 3 = 15. One bag does not hold the whole total. 5 bags with 3 in each make 15.")
  (wrong "5 pears and 3 more pears"
    "That story adds: 5 + 3. A × story has equal groups.")
  (hint "The first number tells how many groups."))
```

So: to multiply is to find the total of equal groups. You write it as an equation, like 5 × 7 = 35.
