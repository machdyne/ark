# Equal shares

```lesson
(objective "Use a unit fraction to name each share when 1 whole is shared equally.")
(standards "3.NF.A.1")
(minutes 15)
```

When 1 whole is shared equally, a unit fraction names each share.

Choose how many people share 1 pizza. Each person gets 1 equal part.

```figure
(define c (choice 'people '("2" "3" "4" "6" "8") "People"))
(define n (list-ref '(2 3 4 6 8) c))
(frac-circle 160 105 85 n 1 'warm)
(caption (string-append (fmt n 0) " people: each gets " (fr-s 1 n) " of the pizza."))
```

```check
(fraction
  (ask "4 people share 1 pizza equally. What fraction of the pizza does each person get?")
  (answer 1 4) (true "1/4 * 4 = 1")
  (wrong-if (4 1) "4/1 would be 4 whole pizzas. Each person gets 1 of 4 equal parts of 1 pizza: 1/4.")
  (wrong-if (1 3) "1/3 would be 3 equal shares. With 4 people there are 4 equal shares.")
  (hint "The pizza is cut into 1 equal part for each person.")
  (hint "4 people: 4 equal parts."))
```

---

## Count everyone

Count every person who shares, you too. If you share a sandwich with
2 friends, that is 3 people. Each of you gets $1/3$.

```figure
(fr-cuts 60 50 200 100 (fr-even 3) 1 'warm #f)
(label 93 175 "you" 'small)
(label 160 175 "friend" 'small)
(label 227 175 "friend" 'small)
(caption "1 sandwich shared by 3 people.")
```

```check
(choice
  (ask "Ana shares 1 cake equally with 5 friends. What fraction of the cake does each person get?")
  (right "1/6")
  (wrong "1/5"
    "5 is the number of friends. Ana eats some too, so 6 people share the cake.")
  (wrong "5/6"
    "5/6 is what all 5 friends get together. Each person gets just 1 of the 6 equal parts.")
  (hint "Count Ana and her friends.")
  (hint "1 + 5 people."))
```

---

## Worked example

```example
(example
(problem "8 children share 1 long loaf of bread equally. What does each child get?")
(step "Share 1 whole into 8 equal parts: 1 part for each child.")
(step "1 of 8 equal parts is 1/8.")
(answer "Each child gets 1/8 of the loaf."))
```

```example
(example
(problem "2 brothers share 1 apple equally. What does each one get?")
(step "Cut 1 whole into 2 equal parts: 1 for each brother.")
(step (choice (ask "What fraction is 1 part?")
  (right "1/2")
  (wrong "2/1"
    "2/1 means 2 wholes. Each brother gets 1 of 2 equal parts of 1 apple.")))
(answer "Each brother gets 1/2 of the apple."))
```

---

## Practice

```check
(fraction
  (ask "3 friends share 1 pie equally. What fraction of the pie does each friend get?")
  (answer 1 3) (true "1/3 * 3 = 1")
  (wrong-if (3 1) "3/1 is 3 whole pies. Each friend gets 1 of 3 equal parts of 1 pie.")
  (wrong-if (1 2) "1/2 would be 2 equal shares. 3 friends need 3 equal shares.")
  (hint "Cut the pie into 1 equal part for each friend."))
```

```check
(choice
  (ask "1 pizza is shared equally by 6 people. Then 1 pizza of the same size is shared equally by 8 people. Who gets more pizza?")
  (right "Each of the 6 people")
  (wrong "Each of the 8 people"
    "8 is more people, but they share the same size pizza. More people means smaller shares: 1/8 is smaller than 1/6.")
  (hint "More people sharing the same whole means smaller shares."))
```

---

```check
(number
  (ask "Each child gets 1/8 of a cake. How many children share the cake equally?")
  (answer 8)
  (wrong-if 1 "1 is one share. The denominator says the cake is cut into 8 equal shares.")
  (hint "The denominator counts the equal shares."))
```

So: when 1 whole is shared equally by 4 people, each gets $1/4$; by 8
people, each gets $1/8$.
