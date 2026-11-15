# Ratios

```lesson
(objective "Read and write a ratio and simplify it.")
(minutes 20)
(keywords "ratio")
```

Mixing paint, diluting a cleaner or staffing a shift: a ratio says how
much of one thing there is for each amount of another.

A **ratio** compares two amounts by how many parts of each. It is
written with a colon: 2 : 3, said "2 to 3". A drink of 1 part juice to
4 parts water has juice and water in the ratio 1 : 4.

Order matters: juice to water is 1 : 4, but water to juice is 4 : 1.

```figure
(define a (slider 'a 1 5 2 "First" 1))
(define b (slider 'b 1 5 3 "Second" 1))
(nu1-strip 20 80 280 50 a b 'warm 'cool)
(text 160 170 (string-append (fmt a 0) " : " (fmt b 0)) 'centre 'big 'bold)
(caption "The first amount left, the second right.")
```

```check
(choice
  (ask "A cleaner is mixed with 1 cap of soap to 10 caps of water. What is the ratio of water to soap?")
  (right "10 : 1")
  (wrong "1 : 10" "1 : 10 is soap to water. The question asks for water first, so the ratio is 10 : 1.")
  (wrong "1 : 11" "11 is the total number of caps. The ratio compares water (10) to soap (1).")
  (hint "Write the amount of water first."))
```

---

## A ratio is not a fraction of the whole

In 1 : 4, there are 1 + 4 = 5 parts in all. So the juice is $1/5$ of
the drink, not $1/4$.

```check
(fraction
  (ask "Paint is mixed 2 parts blue to 3 parts white. What fraction of the paint is blue?")
  (answer 2 5)
  (wrong-if (2 3) "2/3 compares blue with white. Out of the whole mix, there are 2 + 3 = 5 parts, so blue is 2/5.")
  (wrong-if (3 5) "3/5 is the white part. Blue is 2 of the 5 parts.")
  (hint "How many parts are there in all?"))
```

---

## Simplifying a ratio

Like a fraction, a ratio can be simplified: divide both numbers by the
same number. 6 : 9 is 2 : 3 (divide both by 3). It is the same mix,
just smaller.

```example
(example
  (problem "A shop has 12 staff on days and 8 on nights. Write the ratio of day staff to night staff in its simplest form.")
  (step "Day to night: 12 : 8.")
  (step "4 goes into 12 and 8. Divide both by 4.")
  (answer "3 : 2"))
```

```example
(example
  (problem "A class has 15 women and 10 men. Write the ratio of women to men in its simplest form.")
  (step "Women to men: 15 : 10.")
  (step (choice (ask "Divide both by 5. What is the ratio?") (right "3 : 2" (true "15/5 = 3") (true "10/5 = 2"))
    (wrong "2 : 3" "Keep the order of the question: women first. 15 ÷ 5 = 3 women to 10 ÷ 5 = 2 men.")
    (wrong "5 : 1" "5 is the number you divide by. 15 ÷ 5 = 3 and 10 ÷ 5 = 2: 3 : 2.")))
  (answer "3 : 2"))
```

---

## Practice

```check
(choice
  (ask "Simplify 20 : 30.")
  (right "2 : 3")
  (wrong "20 : 30" "That is right but not simplest: 10 goes into both.")
  (wrong "3 : 2" "Keep the order: 20 first. 20 ÷ 10 = 2, 30 ÷ 10 = 3.")
  (hint "10 goes into both."))
```

```check
(choice
  (ask "A recipe uses 3 eggs for every 1 bag of flour. Which mix is in the same ratio?")
  (right "6 eggs, 2 bags of flour" (true "6/2 = 3/1"))
  (wrong "4 eggs, 2 bags of flour" (false "4/2 = 3/1") "Adding 1 to each does not keep the ratio. For 2 bags you need 2 times 3 = 6 eggs.")
  (wrong "3 eggs, 3 bags of flour" "That is 1 egg for each bag. The ratio was 3 eggs for each bag.")
  (hint "Multiply both numbers by the same amount."))
```

```check
(fraction
  (ask "A team has 4 managers and 16 others. What fraction of the team are managers?")
  (answer 1 5) (equivalent)
  (wrong-if (1 4) "1/4 compares managers with others (4 : 16). The whole team is 20 people, and 4 of 20 is 1/5.")
  (hint "How many people in the whole team?"))
```

A ratio compares parts in order, a : b; divide both by the same number
to simplify it, and add the parts to find the whole.
