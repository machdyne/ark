# Decimals times and divided by 10, 100, 1,000

```lesson
(objective "Multiply and divide a decimal by 10, 100 and 1,000, such as 4.2 x 100 = 420 and 4.2 ÷ 100 = 0.042, and explain the pattern in where the decimal point falls.")
(standards "5.NBT.A.2")
(minutes 25)
```

You can multiply and divide a decimal by 10, 100 and 1,000.

The rule is the same as for whole numbers. Multiplying by 10 moves each
digit one place left. The decimal point stays between the ones and the
tenths.

$$ 4.2 * 10 = 42 $$

The 4 ones become 4 tens. The 2 tenths become 2 ones.

```figure
(define c (choice 'c '("× 10" "× 100" "÷ 10" "÷ 100") "4.2"))
(define p (list-ref '(1 2 -1 -2) c))
(m5p1-shift 20 120 4.2 p 2 -3 -1 (min 0 (+ p -1)))
(label 160 210 (string-append "4.2 " (list-ref '("× 10" "× 100" "÷ 10" "÷ 100") c) " = " (fmt (if (> p 0) (* 4.2 (expt 10 p)) (/ 4.2 (expt 10 (- p)))) (max 0 (- 1 p)))) 'body 'bold)
```

```check
(text
  (ask "What is 3.5 × 10?")
  (accept "35") (accept "35.0")
  (true "3.5 * 10 = 35")
  (wrong-if "3.50" "Writing a 0 at the end does not multiply: 3.50 = 3.5. Move each digit one place left.")
  (wrong-if "30.5" "Every digit moves, not only the 3. The 5 tenths become 5 ones: 35.")
  (hint "The 3 ones become 3 tens.")
  (hint "The 5 tenths become 5 ones."))
```

---

## Multiplying by 100 and 1,000

Multiplying by 100 moves each digit 2 places left. Multiplying by 1,000
moves each digit 3 places left. Write zeros in empty places up to the
ones.

$$ 4.2 * 100 = 420 $$

$$ 0.375 * 1000 = 375 $$

It looks as if the decimal point moves right. Really, the digits move
left past it.

```check
(text
  (ask "What is 0.68 × 1,000?")
  (accept "680") (accept "680.0")
  (true "0.68 * 1000 = 680")
  (wrong-if "68" "That moves the digits 2 places, which is × 100. 1,000 moves them 3 places: 680.")
  (wrong-if "0.68000" "Zeros at the end of a decimal do not change it. Move each digit 3 places left.")
  (hint "1,000 has 3 zeros: each digit moves 3 places left.")
  (hint "The 6 tenths become 6 hundreds."))
```

---

## Dividing

Dividing by 10, 100 or 1,000 moves each digit 1, 2 or 3 places right.
Write zeros in empty places between the decimal point and the digits.

$$ 4.2 ÷ 100 = 0.042 $$

The 4 ones become 4 hundredths. The 2 tenths become 2 thousandths.

```check
(text
  (ask "What is 5.3 ÷ 10?")
  (accept "0.53") (accept ".53") (accept "0.530") (accept ".530")
  (true "5.3 ÷ 10 = 0.53")
  (wrong-if "53" "That multiplies by 10. Dividing makes the number smaller: each digit moves one place right.")
  (wrong-if "0.053" "That divides by 100, two places. Dividing by 10 moves each digit only one place.")
  (hint "The 5 ones become 5 tenths.")
  (hint "The 3 tenths become 3 hundredths."))
```

---

## The pattern

The number of zeros in 10, 100 or 1,000 is how many places each digit
moves.

| | 10 | 100 | 1,000 |
| × | 1 place left | 2 places left | 3 places left |
| ÷ | 1 place right | 2 places right | 3 places right |

```check
(choice
  (ask "What is 26.4 ÷ 100?")
  (right "0.264" (true "26.4 ÷ 100 = 0.264"))
  (wrong "2.64" (false "26.4 ÷ 100 = 2.64")
    "2.64 is 26.4 ÷ 10, one place. Dividing by 100 moves each digit 2 places right.")
  (wrong "2,640" (false "26.4 ÷ 100 = 2640")
    "2,640 is 26.4 × 100. Dividing makes the number smaller: the digits move right.")
  (wrong "26.004" (false "26.4 ÷ 100 = 26.004")
    "Every digit moves, not only the 4. The 2 tens become 2 tenths.")
  (hint "100 has 2 zeros: each digit moves 2 places right.")
  (hint "The 2 tens become 2 tenths."))
```

---

## Worked example

```example
(example
  (problem "Find 0.09 × 100.")
  (step "Each digit moves 2 places left.")
  (step "The 9 hundredths become 9 ones.")
  (answer "0.09 × 100 = 9"))
```

```example
(example
  (problem "Find 71 ÷ 1,000.")
  (step "Each digit moves 3 places right.")
  (step "The 7 tens become 7 hundredths. The 1 one becomes 1 thousandth.")
  (step (text (ask "So 71 ÷ 1,000 = ?") (accept "0.071") (accept ".071") (true "71 ÷ 1000 = 0.071")
    (wrong-if "0.71" "That divides by 100. Dividing by 1,000 moves each digit 3 places: 0.071.")))
  (answer "71 ÷ 1,000 = 0.071"))
```

---

## Practice

```check
(text
  (ask "What is 2.06 × 100?")
  (accept "206") (accept "206.0")
  (true "2.06 * 100 = 206")
  (wrong-if "26" "The 0 tenths hold a place. The digits 2, 0, 6 all move 2 places left: 206.")
  (wrong-if "20.6" "That is × 10. 100 moves each digit 2 places.")
  (hint "The 2 ones become 2 hundreds."))
```

```check
(text
  (ask "What is 8.5 ÷ 100?")
  (accept "0.085") (accept ".085")
  (true "8.5 ÷ 100 = 0.085")
  (wrong-if "0.85" "That is ÷ 10. 100 moves each digit 2 places right: the 8 ones become 8 hundredths.")
  (wrong-if "850" "That multiplies. Dividing makes the number smaller.")
  (hint "The 8 ones become 8 hundredths."))
```

---

```check
(text
  (ask "Fill in: 0.7 × ? = 700")
  (accept "1000") (accept "1,000")
  (true "0.7 * 1000 = 700")
  (wrong-if "100" "0.7 × 100 = 70. The 7 moved from the tenths to the hundreds: 3 places.")
  (hint "How many places did the 7 move?"))
```

```check
(text
  (ask "What is 34 ÷ 10?")
  (accept "3.4") (accept "3.40")
  (true "34 ÷ 10 = 3.4")
  (wrong-if "340" "That multiplies by 10. Dividing moves each digit one place right.")
  (wrong-if "0.34" "That divides by 100. 10 moves each digit one place: 3.4.")
  (hint "The 3 tens become 3 ones."))
```

So: × or ÷ 10, 100 or 1,000 moves each digit 1, 2 or 3 places, and the
decimal point stays between the ones and the tenths.
