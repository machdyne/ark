# Letters for unknown numbers

```lesson
(objective "Write an equation for a word problem with a letter standing for the unknown number.")
(standards "3.OA.D.8")
(minutes 20)
```

You can use a letter in place of a number you do not know yet.

So far you wrote ? for an unknown number. You can also write a letter.
Any letter will do. Often people pick one that reminds them of the
story, like $b$ for books.

These say the same thing:

$$ 4 × n = 28 $$

4 × ? = 28. Here $n$ stands for the number that makes the equation
true. $n$ is 7, because 4 × 7 = 28.

```check
(number
  (ask "6 × n = 42. What number is n?")
  (answer 7) (from "42 / 6") (true "6 * 7 = 42")
  (wrong-if 36 "36 is 42 - 6. n is the number that, times 6, makes 42.")
  (wrong-if 48 "48 is 42 + 6. Think: 6 times what is 42?")
  (hint "6 × ? = 42"))
```

---

## A letter in a story

Lily has some marbles. She gets 15 more. Now she has 40. How many did
she have at first?

Let $m$ be the marbles she had at first. Then

$$ m + 15 = 40 $$

```check
(number
  (ask "m + 15 = 40. What is m?")
  (answer 25) (from "40 - 15") (true "25 + 15 = 40")
  (wrong-if 55 "55 is 40 + 15. m plus 15 makes 40, so m is less than 40: 40 - 15.")
  (hint "What number plus 15 makes 40?"))
```

---

## Write the equation

To write an equation for a story:

1. Choose a letter for the number you do not know.
2. Write what the story does with the numbers.
3. Put the total on the other side of the = sign.

```check
(choice
  (ask "There are 5 vans. Each van holds the same number of children, c. There are 35 children in all. Which equation fits?")
  (right "5 × c = 35")
  (wrong "5 + c = 35"
    "Each van holds c children, and there are 5 vans: that is 5 groups of c. Equal groups mean ×, not +.")
  (wrong "35 × 5 = c"
    "35 is the total. It belongs alone on one side: 5 groups of c make 35.")
  (hint "5 equal groups of c."))
```

---

## Worked example

```example
(example
  (problem "Ben had 52 cards. He gave some away. Now he has 30. Write an equation and find how many he gave away.")
  (step "Let g be the cards he gave away.")
  (step "He started with 52, took away g, and has 30: 52 - g = 30.")
  (step "52 minus what is 30? 52 - 22 = 30, so g = 22.")
  (answer "52 - g = 30, and g = 22."))
```

```example
(example
  (problem "Some pencils are shared by 4 children. Each gets 6. Write an equation and find the total.")
  (step "Let p be the total number of pencils.")
  (step "p shared by 4 gives 6 each: p ÷ 4 = 6.")
  (step (number (ask "What is p?") (answer 24) (from "4 * 6") (true "24 / 4 = 6")
    (wrong-if 10 "10 is 4 + 6. The total is shared into 4 groups of 6: 4 × 6.")))
  (answer "p ÷ 4 = 6, and p = 24."))
```

---

## Practice

```check
(number
  (ask "k - 18 = 50. What is k?")
  (answer 68) (from "50 + 18") (true "68 - 18 = 50")
  (wrong-if 32 "32 is 50 - 18. But k minus 18 is 50, so k is more than 50: 50 + 18.")
  (hint "What number take away 18 leaves 50?"))
```

```check
(choice
  (ask "A ribbon is cut into 3 equal pieces. Each piece is 9 inches. The ribbon is r inches long. Which equation fits?")
  (right "r ÷ 3 = 9")
  (wrong "r × 3 = 9"
    "The ribbon is cut up, not multiplied. r shared into 3 pieces gives 9 each: r ÷ 3 = 9.")
  (wrong "r + 3 = 9"
    "Cutting into 3 equal pieces is sharing, not adding 3. r ÷ 3 = 9.")
  (hint "The ribbon is shared into 3 equal pieces."))
```

---

```check
(number
  (ask "8 × w = 72. What is w?")
  (answer 9) (from "72 / 8") (true "8 * 9 = 72")
  (wrong-if 64 "64 is 72 - 8. w is the number that, times 8, makes 72.")
  (hint "8 × ? = 72"))
```

So: a letter can stand for an unknown number, and you find it the same way you found ?.
