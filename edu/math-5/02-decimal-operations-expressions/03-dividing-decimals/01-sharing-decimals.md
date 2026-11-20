# Sharing decimals

```lesson
(objective "Divide a decimal by a whole number by sharing hundredths squares equally, such as 2.4 ÷ 3 = 0.8.")
(standards "5.NBT.B.7")
(minutes 20)
```

You can divide a decimal by a whole number by sharing tenths and
hundredths equally.

$0.6 ÷ 3$ means: share 6 tenths among 3 equal groups. Each group gets 2
tenths.

$$ 0.6 ÷ 3 = 0.2 $$

```figure
(m5p2-hund 10 40 9 20 'warm)
(m5p2-hund 115 40 9 20 'warm)
(m5p2-hund 220 40 9 20 'warm)
(label 55 150 "0.2" 'body 'bold)
(label 160 150 "0.2" 'body 'bold)
(label 265 150 "0.2" 'body 'bold)
(label 160 25 "0.6 shared by 3" 'body)
(caption "6 tenths in 3 equal groups: 2 tenths each")
```

```check
(text
  (ask "Share 0.8 among 4. What is 0.8 ÷ 4?")
  (accept "0.2") (accept ".2") (accept "0.20")
  (true "0.8 ÷ 4 = 0.2")
  (wrong-if "2" "8 tenths in 4 groups are 2 tenths each, not 2 wholes. 2 tenths = 0.2.")
  (wrong-if "3.2" "That multiplies. Share 8 tenths into 4 groups: 2 tenths each.")
  (hint "8 tenths ÷ 4 = ? tenths"))
```

---

## Break wholes into tenths

$2.4 ÷ 3$: you cannot give each of 3 groups a whole from 2 wholes. So
break the 2 wholes into 20 tenths. With the 4 tenths, there are 24
tenths.

24 tenths ÷ 3 = 8 tenths each.

$$ 2.4 ÷ 3 = 0.8 $$

```figure
(m5p2-hund 10 40 9 80 'warm)
(m5p2-hund 115 40 9 80 'warm)
(m5p2-hund 220 40 9 80 'warm)
(label 55 150 "0.8" 'body 'bold)
(label 160 150 "0.8" 'body 'bold)
(label 265 150 "0.8" 'body 'bold)
(label 160 25 "2.4 = 24 tenths, shared by 3" 'body)
(caption "24 tenths in 3 equal groups: 8 tenths each")
```

```check
(text
  (ask "What is 1.5 ÷ 5?")
  (accept "0.3") (accept ".3") (accept "0.30")
  (true "1.5 ÷ 5 = 0.3")
  (wrong-if "3" "1.5 is 15 tenths. 15 tenths ÷ 5 = 3 tenths, not 3 wholes.")
  (wrong-if "1.1" "The 1 whole cannot go to each of 5 groups. Break it into 10 tenths: 15 tenths ÷ 5 = 3 tenths.")
  (hint "1.5 = 15 tenths."))
```

---

## Sharing hundredths

$0.36 ÷ 4$: 36 hundredths in 4 equal groups. 36 ÷ 4 = 9, so each group
gets 9 hundredths.

$$ 0.36 ÷ 4 = 0.09 $$

```check
(text
  (ask "What is 0.24 ÷ 6?")
  (accept "0.04") (accept ".04")
  (true "0.24 ÷ 6 = 0.04")
  (wrong-if "0.4" "24 hundredths ÷ 6 = 4 hundredths. 0.4 is 4 tenths, 10 times too much.")
  (wrong-if "4" "4 counts hundredths: 0.04.")
  (hint "24 hundredths ÷ 6 = ? hundredths"))
```

---

## Worked example

```example
(example
  (problem "Share 3.6 liters of juice among 4 jugs equally.")
  (step "3 wholes cannot go to 4 jugs, so 3.6 = 36 tenths.")
  (step "36 tenths ÷ 4 = 9 tenths.")
  (answer "3.6 ÷ 4 = 0.9 liter in each jug"))
```

```example
(example
  (problem "Find 0.45 ÷ 5.")
  (step "0.45 = 45 hundredths.")
  (step (text (ask "45 hundredths ÷ 5 = ? as a decimal")
    (accept "0.09") (accept ".09")
    (true "0.45 ÷ 5 = 0.09")
    (wrong-if "0.9" "45 ÷ 5 = 9 hundredths, so 0.09.")))
  (answer "0.45 ÷ 5 = 0.09"))
```

---

## Practice

```check
(text
  (ask "What is 4.2 ÷ 6?")
  (accept "0.7") (accept ".7") (accept "0.70")
  (true "4.2 ÷ 6 = 0.7")
  (wrong-if "7" "42 tenths ÷ 6 = 7 tenths: 0.7.")
  (hint "4.2 = 42 tenths."))
```

```check
(text
  (ask "What is 0.56 ÷ 8?")
  (accept "0.07") (accept ".07")
  (true "0.56 ÷ 8 = 0.07")
  (wrong-if "0.7" "56 hundredths ÷ 8 = 7 hundredths: 0.07.")
  (hint "56 hundredths ÷ 8 = ? hundredths"))
```

---

```check
(text
  (ask "3 friends share 2.7 kilograms of rice equally. How many kilograms does each get?")
  (accept "0.9") (accept ".9") (accept "0.90")
  (unit "kilograms")
  (true "2.7 ÷ 3 = 0.9")
  (wrong-if "8.1" "That multiplies. Share: 27 tenths ÷ 3 = 9 tenths.")
  (wrong-if "9" "Each friend gets 9 tenths of a kilogram: 0.9.")
  (hint "2.7 = 27 tenths."))
```

```check
(choice
  (ask "Which is the same as 0.8 ÷ 2?")
  (right "8 tenths ÷ 2 = 4 tenths" (true "0.8 ÷ 2 = 0.4"))
  (wrong "8 ÷ 2 = 4" (false "0.8 ÷ 2 = 4")
    "The 8 is 8 tenths. Sharing 8 tenths gives tenths: 0.4, not 4.")
  (wrong "8 hundredths ÷ 2 = 4 hundredths" (false "0.8 ÷ 2 = 0.04")
    "The 8 in 0.8 is in the tenths place, so it is 8 tenths.")
  (hint "What is the 8 in 0.8 worth?"))
```

So: to divide a decimal by a whole number, think of it as tenths or hundredths and share them equally.
