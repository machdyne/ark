# What a remainder means

```lesson
(objective "Decide what a remainder means in a word problem: leave it out, add 1 to the quotient, or give the remainder as the answer.")
(standards "4.OA.A.3" "4.NBT.B.6")
(minutes 25)
```

You can decide what to do with a remainder by reading the question.

30 ÷ 4 = 7 R 2. The same division can answer 3 different questions.

```figure
(define c (choice 'c '("Bags" "Cars" "Left") "Question"))
(for-range 0 7 (lambda (i) (frame (+ 12 (* 42 i)) 50 36 26 'ink 1.5) (label (+ 30 (* 42 i)) 68 "4" 'small)))
(ring 30 112 7 'ink 2) (ring 54 112 7 'ink 2)
(if (= c 1) (begin (frame 12 98 60 26 'ink 2.5) (label 42 140 "8th car" 'small)))
(label 160 30 "30 ÷ 4 = 7 R 2" 'body 'bold)
(label 160 180 (list-ref '("How many full bags of 4 cookies?" "How many cars for 30 children, 4 a car?" "How many cookies are left over?") c) 'small)
(label 160 210 (list-ref '("7: the 2 left do not fill a bag." "8: the 2 left need a car too." "2: the remainder is the answer.") c) 'body 'bold)
```

Choose each question to see its answer.

```check
(choice
  (ask "Why can 30 ÷ 4 = 7 R 2 give the answers 7, 8 and 2?")
  (right "Each question asks about a different thing.")
  (wrong "Because the division was done wrong."
    "30 ÷ 4 = 7 R 2 is right: 4 × 7 + 2 = 30. The questions ask for full bags, cars or what is left.")
  (wrong "Because a remainder can be any of them."
    "The remainder is always 2. What changes is the question: full groups, enough groups, or what is left.")
  (hint "Read the 3 questions in the figure."))
```

---

## Leave it out

30 cookies go into bags of 4. How many bags can you fill?

7 bags are full, and 2 cookies are left. 2 cookies do not fill a bag.
So the answer is 7: leave the remainder out.

```check
(number
  (ask "A baker has 50 eggs. A box holds 8 eggs. How many boxes can she fill?")
  (answer 6) (unit "boxes") (from "(50 - 2) / 8") (true "50 = 8 * 6 + 2")
  (wrong-if 7 "50 ÷ 8 = 6 R 2. The 2 eggs left do not fill a 7th box.")
  (wrong-if 2 "2 is the eggs left over. The question asks how many boxes are full: 6.")
  (hint "50 ÷ 8 = 6 R 2.")
  (hint "Do 2 eggs fill a box?"))
```

---

## Add 1

30 children ride in cars that hold 4 each. How many cars do they need?

7 cars carry 28 children. 2 children are still waiting, so they need 1
more car. The answer is 8: add 1 to the quotient.

```check
(number
  (ask "125 people come to a dinner. Each table seats 6. How many tables are needed?")
  (answer 21) (unit "tables") (from "(125 - 5) / 6 + 1") (true "125 = 6 * 20 + 5")
  (wrong-if 20 "125 ÷ 6 = 20 R 5. 20 tables seat 120. The 5 people left need a table too.")
  (wrong-if 5 "5 is the people left over. They need 1 more table: 20 + 1.")
  (hint "125 ÷ 6 = 20 R 5.")
  (hint "Where do the 5 people left sit?"))
```

---

## The remainder is the answer

How many cookies are left after you fill the bags? That is the
remainder: 2.

```check
(number
  (ask "A teacher shares 75 crayons equally among 4 tables. She keeps the crayons left over. How many does she keep?")
  (answer 3) (unit "crayons") (from "75 - 4 * 18") (true "75 = 4 * 18 + 3")
  (wrong-if 18 "18 is how many each table gets. She keeps what is left: 75 ÷ 4 = 18 R 3.")
  (wrong-if 19 "The question asks what she keeps, not how many each table gets.")
  (hint "75 ÷ 4 = 18 R ?"))
```

---

## Worked example

```example
(example
  (problem "230 children go on a trip. Each bus holds 9 children. How many buses do they need?")
  (step "230 ÷ 9 = 25 R 5.")
  (step "25 buses carry 225 children. 5 children are left.")
  (step "Every child needs a seat, so add 1 bus.")
  (answer "They need 26 buses."))
```

```example
(example
  (problem "A school has 1,000 dollars. A chair costs 6 dollars. How many chairs can the school buy?")
  (step "1,000 ÷ 6 = 166 R 4.")
  (step "4 dollars is not enough for another chair.")
  (step (number (ask "How many chairs can it buy?") (answer 166) (unit "chairs") (from "(1000 - 4) / 6")
    (wrong-if 167 "4 dollars left over cannot buy a 167th chair. Leave the remainder out.")))
  (answer "The school can buy 166 chairs."))
```

---

## Practice

```check
(choice
  (ask "196 ÷ 5 = 39 R 1. A boat holds 5 people, and 196 people need to cross. How many boat trips are needed?")
  (right "40" (true "39 + 1 = 40"))
  (wrong "39"
    "39 trips carry 195 people. 1 person is still waiting and needs a trip too.")
  (wrong "1"
    "1 is the person left over. All 196 people must cross: 39 + 1 trips.")
  (hint "Does everyone get across in 39 trips?"))
```

```check
(number
  (ask "A farmer has 400 plants. She puts 7 in each row. How many full rows can she make?")
  (answer 57) (unit "rows") (from "(400 - 1) / 7") (true "400 = 7 * 57 + 1")
  (wrong-if 58 "400 ÷ 7 = 57 R 1. 1 plant does not make a full row.")
  (hint "400 ÷ 7 = 57 R 1."))
```

---

```check
(number
  (ask "345 photos go into an album, 8 to a page. How many photos are on the last page, which is not full?")
  (answer 1) (unit "photos") (from "345 - 8 * 43") (true "345 = 8 * 43 + 1")
  (wrong-if 43 "43 is the number of full pages. The last page holds the photos left over: 345 ÷ 8 = 43 R 1.")
  (wrong-if 44 "44 is the number of pages in all. The question asks for the photos on the last page.")
  (hint "345 ÷ 8 = 43 R ?"))
```

```check
(choice
  (ask "132 ÷ 5 = 26 R 2. Which question has the answer 27?")
  (right "132 books go on shelves of 5. How many shelves are needed?")
  (wrong "132 apples go in bags of 5. How many bags are full?"
    "Full bags leave the remainder out: 26. The 2 apples left do not fill a bag.")
  (wrong "132 cards are shared among 5 friends. How many cards are left?"
    "Cards left over is the remainder: 2.")
  (hint "Which question needs room for every one?"))
```

So: the question tells you to drop the remainder, add 1, or give the remainder.
