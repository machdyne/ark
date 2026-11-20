# Comparing expressions

```lesson
(objective "Compare two expressions without evaluating them by how one is made from the other, such as (45 + 12) ÷ 3 is less than 45 + 12.")
(standards "5.OA.A.2")
(minutes 20)
```

You can compare two expressions without finding their values, by
seeing how one is made from the other.

$(45 + 12) ÷ 3$ is the sum $45 + 12$ shared into 3 equal parts. One part
is less than the whole sum. So:

$$ (45 + 12) ÷ 3 < 45 + 12 $$

```figure
(m5p2-tape 20 60 280 30 1 "45 + 12" "")
(m5p2-tape 20 150 280 30 3 "" "")
(rect 21 151 (- (/ 280 3) 2) 28 'warm)
(label (+ 20 (/ 280 6)) 200 "(45 + 12) ÷ 3" 'small 'bold)
(caption "One of 3 equal parts of the sum")
```

```check
(choice
  (ask "Without working it out: which is greater, (38 + 26) ÷ 2 or 38 + 26?")
  (right "38 + 26" (true "38 + 26 > (38 + 26) ÷ 2"))
  (wrong "(38 + 26) ÷ 2" (false "(38 + 26) ÷ 2 > 38 + 26")
    "Dividing the sum by 2 gives half of it. Half of a number is less than the number.")
  (wrong "They are equal" (false "(38 + 26) ÷ 2 = 38 + 26")
    "Dividing by 2 changes the sum: it gives half of it.")
  (hint "(38 + 26) ÷ 2 is half of what?"))
```

---

## Times as large

$6 * (175 - 48)$ is 6 times $175 - 48$. Since $175 - 48$ is more than
0, 6 times it is greater.

```check
(choice
  (ask "Which is greater, 7 × (512 + 96) or 512 + 96?")
  (right "7 × (512 + 96)" (true "7 * (512 + 96) > 512 + 96"))
  (wrong "512 + 96" (false "512 + 96 > 7 * (512 + 96)")
    "7 × (512 + 96) is 7 copies of the sum. 7 copies are more than 1.")
  (wrong "You must add first to tell"
    "You need not add. 7 times a number greater than 0 is more than the number.")
  (hint "How many copies of the sum does each one have?"))
```

---

## Comparing two expressions with the same part

$4 * (31 + 59)$ and $5 * (31 + 59)$ both use the sum of 31 and 59.
5 copies are more than 4 copies, so the second is greater, by one more
copy of the sum.

```check
(choice
  (ask "Compare 3 × (204 + 18) and 8 × (204 + 18).")
  (right "8 × (204 + 18) is greater" (true "8 * (204 + 18) > 3 * (204 + 18)"))
  (wrong "3 × (204 + 18) is greater" (false "3 * (204 + 18) > 8 * (204 + 18)")
    "Both multiply the same sum. 8 copies of it are more than 3 copies.")
  (wrong "They are equal" (false "3 * (204 + 18) = 8 * (204 + 18)")
    "They multiply the same sum by different numbers: 3 and 8.")
  (hint "The sum is the same. Which has more copies of it?"))
```

---

## Worked example

```example
(example
  (problem "Compare (720 - 90) ÷ 9 and (720 - 90) ÷ 3.")
  (step "Both share the same difference, 720 - 90.")
  (step "Into 9 parts, each part is smaller than into 3 parts.")
  (answer "(720 - 90) ÷ 9 < (720 - 90) ÷ 3"))
```

```example
(example
  (problem "Compare 2 × (66 + 34) and (66 + 34) + (66 + 34).")
  (step "2 × (66 + 34) is 2 copies of the sum.")
  (step (choice (ask "(66 + 34) + (66 + 34) is also 2 copies. So they are:")
    (right "Equal" (true "2 * (66 + 34) = (66 + 34) + (66 + 34)"))
    (wrong "Not equal" "Both are 2 copies of the same sum, so they are equal.")))
  (answer "2 × (66 + 34) = (66 + 34) + (66 + 34)"))
```

---

## Practice

```check
(choice
  (ask "Which is less, (1,260 + 340) ÷ 4 or 1,260 + 340?")
  (right "(1,260 + 340) ÷ 4" (true "(1260 + 340) ÷ 4 < 1260 + 340"))
  (wrong "1,260 + 340" (false "1260 + 340 < (1260 + 340) ÷ 4")
    "Dividing the sum by 4 gives one fourth of it, which is less than the sum.")
  (hint "(1,260 + 340) ÷ 4 is a fourth of the sum."))
```

```check
(choice
  (ask "How do 10 × (87 - 29) and 87 - 29 compare?")
  (right "The first is 10 times as large as the second")
  (wrong "The first is 10 more than the second"
    "10 more would be (87 - 29) + 10. The × sign makes it 10 times as large.")
  (wrong "The second is 10 times as large as the first"
    "The first is the one multiplied by 10, so it is the larger.")
  (hint "Which one is multiplied?"))
```

---

```check
(choice
  (ask "Compare (500 + 25) ÷ 5 and (500 + 25) ÷ 7.")
  (right "(500 + 25) ÷ 5 is greater" (true "(500 + 25) ÷ 5 > (500 + 25) ÷ 7"))
  (wrong "(500 + 25) ÷ 7 is greater" (false "(500 + 25) ÷ 7 > (500 + 25) ÷ 5")
    "7 is greater than 5, but sharing into 7 parts makes each part smaller than sharing into 5 parts.")
  (wrong "They are equal" (false "(500 + 25) ÷ 5 = (500 + 25) ÷ 7")
    "The same sum is shared into different numbers of parts, so the parts differ.")
  (hint "More parts, or fewer: which makes each part bigger?"))
```

```check
(number
  (ask "45 + 12 = 57. How many times as large as (45 + 12) ÷ 3 is 45 + 12?")
  (answer 3) (from "57 ÷ (57 ÷ 3)")
  (wrong-if 19 "19 is the value of (45 + 12) ÷ 3. The question asks how many times as large the sum is: 3 parts make the sum.")
  (hint "The sum is shared into how many equal parts?"))
```

So: see how one expression is made from the other, times as large or shared into parts, to compare them without working them out.
