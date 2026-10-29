# Order does not matter

```lesson
(objective "Use the commutative property: 3 x 7 and 7 x 3 have the same product.")
(standards "3.OA.B.5")
(minutes 20)
(keywords "property (of multiplication)" "commutative property")
```

You can swap the factors in a multiplication and get the same product.

Look at the array. It has 3 rows of 7, so it shows 3 × 7. Now turn it
on its side. It has 7 rows of 3: 7 × 3. The dots did not change, so
the product did not change.

```figure
(define t (toggle 'turn "Turn the array"))
(if t (dot-array 136 22 7 3 24 'ink) (dot-array 88 60 3 7 24 'ink))
(label 160 210 (if t "7 rows of 3: 7 × 3 = 21" "3 rows of 7: 3 × 7 = 21") 'body)
```

```check
(number
  (ask "3 × 7 = 21. What is 7 × 3?")
  (answer 21) (from "7 * 3")
  (wrong-if 10 "10 is 7 + 3. 7 × 3 is 7 groups of 3. It is the same array turned, so it has the same 21 dots.")
  (hint "Turn the array. Do the dots change?"))
```

---

## A rule for all numbers

A **property** of multiplication is a rule that is true for every
number. You can count on it every time.

Here is one: you can multiply factors in either order. 4 × 9 and
9 × 4 have the same product, and so do 2 × 8 and 8 × 2.

```check
(choice
  (ask "Is 6 × 8 the same as 8 × 6?")
  (right "Yes: the factors are swapped, so the product is the same")
  (wrong "No: 6 groups of 8 is not 8 groups of 6"
    "The groups look different, but the total is the same. An array of 6 rows of 8 turned on its side is 8 rows of 6.")
  (hint "Picture the array turned on its side."))
```

---

## The commutative property

This rule has a name. The **commutative property** of multiplication
says that changing the order of the factors does not change the
product.

$$ 3 × 7 = 7 × 3 $$

```check
(choice
  (ask "Which equation shows the commutative property?")
  (right "5 × 2 = 2 × 5")
  (wrong "5 × 2 = 2 + 5" (false "5 * 2 = 2 + 5")
    "This swaps the numbers, but it also changes × to +. 2 + 5 is 7, not 10. Keep the × sign and swap the factors.")
  (wrong "5 × 2 = 10"
    "This is a true fact, but nothing is swapped. The commutative property says the factors can change order.")
  (hint "Look for the same 2 factors in the other order."))
```

---

## Use it

If you know one fact, you know the swapped one too. You know
2 × 9 = 18. So 9 × 2 = 18 as well. Counting by 2s 9 times is easier
than counting by 9s.

```example
(example
  (problem "Find 9 × 5.")
  (step "Swap the factors: 9 × 5 = 5 × 9.")
  (step "5 × 9 is 5 nines, or 9 fives. Count by 5s 9 times.")
  (step "5, 10, 15, 20, 25, 30, 35, 40, 45.")
  (answer "9 × 5 = 45"))
```

```example
(example
  (problem "Find 8 × 2.")
  (step "Swap the factors: 8 × 2 = 2 × 8.")
  (step "2 × 8 is 8 + 8.")
  (step (number (ask "8 + 8 = ?") (answer 16) (from "8 + 8")
    (wrong-if 10 "10 is 8 + 2. 2 × 8 means 2 eights: 8 + 8.")))
  (answer "8 × 2 = 16"))
```

---

## Practice

```check
(number
  (ask "4 × 10 = 40. What is 10 × 4?")
  (answer 40) (from "10 * 4")
  (wrong-if 14 "14 is 10 + 4. Swapping the factors keeps the product the same: 40.")
  (hint "The factors are swapped."))
```

```check
(number
  (ask "Find the missing factor: 6 × 7 = 7 × ?")
  (answer 6) (true "6 * 7 = 7 * 6")
  (wrong-if 7 "7 × 7 is 49, but 6 × 7 is 42. Swap the factors: 6 × 7 = 7 × 6.")
  (wrong-if 42 "42 is the product. The missing number is a factor: swap 6 and 7.")
  (hint "The same 2 factors, in the other order."))
```

---

```check
(choice
  (ask "Lea has 3 bags of 8 shells. Kai has 8 bags of 3 shells. Who has more?")
  (right "They have the same number")
  (wrong "Lea, because her bags hold more"
    "Lea's bags hold more, but Kai has more bags. 3 × 8 and 8 × 3 are both 24.")
  (wrong "Kai, because he has more bags"
    "Kai has more bags, but each holds fewer. 8 × 3 and 3 × 8 are both 24.")
  (hint "Compare 3 × 8 and 8 × 3."))
```

So: by the commutative property, you can swap the factors and the product stays the same.
