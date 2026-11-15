# Checking sums and differences

```lesson
(objective "Check a sum or a difference with an estimate and with the inverse operation.")
(standards "4.NBT.B.4" "4.NBT.A.3")
(minutes 25)
(keywords "inverse operation")
```

You can check an answer in 2 ways: with an estimate, and by working backward.

First, estimate. Round each number, then add the rounded numbers.

38,415 + 21,907 = 60,322. To the nearest thousand: 38,000 + 22,000 =
60,000. The answer 60,322 is close to 60,000, so it is reasonable.

```check
(choice
  (ask "Mia adds 47,812 + 29,350 and gets 67,162. Is her answer reasonable?")
  (right "No: the estimate 48,000 + 29,000 is 77,000." (true "48000 + 29000 = 77000"))
  (wrong "Yes: it has 5 digits, like the numbers she adds."
    "Having 5 digits is not enough. Round and add: 48,000 + 29,000 = 77,000. 67,162 is about 10,000 away from it.")
  (wrong "Yes: 67,162 is between 47,812 and 29,350."
    "A sum of 2 numbers is more than either one. Estimate: 48,000 + 29,000 = 77,000.")
  (hint "Round each number to the nearest thousand.")
  (hint "Add the rounded numbers. Is 67,162 close?"))
```

---

## Undo it

Adding and subtracting undo each other. An operation that undoes
another is its **inverse operation**. Subtracting is the inverse of
adding, and adding is the inverse of subtracting.

To check 7,352 - 2,816 = 4,536, add back what you took away:

4,536 + 2,816 = 7,352. You are back where you started, so the answer is right.

```check
(number
  (ask "Check 9,104 - 3,587 = 5,517. What is 5,517 + 3,587?")
  (answer 9104) (from "5517 + 3587")
  (wrong-if 1930 "5,517 - 3,587 subtracts again. To undo a subtraction, add: 5,517 + 3,587.")
  (hint "Add the answer and the number taken away.")
  (hint "If you get 9,104, the answer was right."))
```

---

## Check a sum by subtracting

To check a sum, take one of the numbers away from it. You should get
the other number.

3,658 + 2,774 = 6,432, and 6,432 - 2,774 = 3,658.

```check
(choice
  (ask "Which checks 25,300 + 14,800 = 40,100?")
  (right "40,100 - 14,800 = 25,300" (true "40100 - 14800 = 25300"))
  (wrong "40,100 + 14,800 = 54,900" (true "40100 + 14800 = 54900")
    "Adding again does not undo the adding. Subtract one number from the sum.")
  (wrong "25,300 - 14,800 = 10,500" (true "25300 - 14800 = 10500")
    "That subtracts the 2 numbers you added. Start from the sum, 40,100, and take one away.")
  (hint "Start from the sum. Take away one of the numbers."))
```

---

## Find the mistake

Leo says 62,000 - 18,350 = 44,650. Check by adding:

44,650 + 18,350 = 63,000. That is not 62,000, so Leo made a mistake.

```check
(number
  (ask "What is 62,000 - 18,350 really?")
  (answer 43650) (from "62000 - 18350") (true "43650 + 18350 = 62000")
  (wrong-if 44650 "That is Leo's answer, and adding back gives 63,000. When you regroup, the 2 thousands become 1.")
  (wrong-if 56350 "That takes the smaller digit from the bigger one. Regroup across the zeros.")
  (hint "Regroup: 61 thousands, 9 hundreds, 10 tens.")
  (hint "Then check your answer by adding 18,350."))
```

---

## Worked example

```example
(example
  (problem "Check 53,276 - 19,488 = 33,788 two ways.")
  (step "Estimate: 53,000 - 19,000 = 34,000. 33,788 is close to it.")
  (step "Inverse operation: 33,788 + 19,488 = 53,276.")
  (step "That is the number you started from.")
  (answer "Both checks agree: 33,788 is right."))
```

```example
(example
  (problem "Raj says 6,895 + 4,368 = 11,263. Check it by subtracting.")
  (step "Take one number away from the sum: 11,263 - 4,368.")
  (step "You should get the other number, 6,895.")
  (step (number (ask "What is 11,263 - 4,368?") (answer 6895) (from "11263 - 4368")
    (wrong-if 13105 "That takes the smaller digit from the bigger one. Regroup in each place where the top is smaller.")))
  (answer "11,263 - 4,368 = 6,895, so Raj is right."))
```

---

## Practice

```check
(choice
  (ask "Which addition checks 80,000 - 27,450 = 52,550?")
  (right "52,550 + 27,450 = 80,000" (true "52550 + 27450 = 80000"))
  (wrong "80,000 + 27,450 = 107,450" (true "80000 + 27450 = 107450")
    "To undo a subtraction, add the number taken away to the answer, not to the start.")
  (wrong "52,550 - 27,450 = 25,100" (true "52550 - 27450 = 25100")
    "Subtracting again does not undo a subtraction. Add: 52,550 + 27,450.")
  (hint "Add the answer and the number taken away."))
```

```check
(choice
  (ask "Ana says 312,640 + 189,275 = 401,915. Round each number to the nearest hundred thousand. What does the estimate show?")
  (right "It is not reasonable: 300,000 + 200,000 = 500,000." (true "300000 + 200000 = 500000"))
  (wrong "It is reasonable: 300,000 + 100,000 = 400,000."
    "189,275 rounds to 200,000, not 100,000: its ten thousands digit is 8.")
  (wrong "It is reasonable: both numbers have 6 digits."
    "Counting digits is not enough. Round and add: 300,000 + 200,000 = 500,000.")
  (hint "189,275: look at the ten thousands digit."))
```

---

```check
(number
  (ask "To check 45,019 - 7,863 = 37,156, you add 37,156 + 7,863. What do you get?")
  (answer 45019) (from "37156 + 7863")
  (wrong-if 35019 "1 + 7 + 7 = 15 thousands. Write 5 and regroup 1 ten thousand: 3 + 1 = 4.")
  (hint "Add place by place from the ones.")
  (hint "If you get 45,019, the answer was right."))
```

```check
(number
  (ask "Ben says 72,305 - 28,640 = 54,665. Check it, and type the right difference.")
  (answer 43665) (from "72305 - 28640") (true "43665 + 28640 = 72305")
  (wrong-if 54665 "Add to check: 54,665 + 28,640 = 83,305, not 72,305. Ben forgot to regroup in some places.")
  (wrong-if 56345 "That takes the smaller digit from the bigger one. Regroup where the top is smaller.")
  (hint "Estimate first: 72,000 - 29,000 = 43,000.")
  (hint "Then subtract place by place with regrouping."))
```

So: an estimate checks the size, and the inverse operation checks the exact answer.
