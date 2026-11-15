# Numbers up to a million

```lesson
(objective "Read and write numbers up to 1,000,000, naming the hundred thousands place and the value of each digit.")
(standards "4.NBT.A.2")
(minutes 20)
```

You can read and write numbers with 6 digits, and even 1,000,000.

Left of the ten thousands comes the hundred thousands place. A 1 there
is worth 100,000.

In 254,870, the 2 is in the hundred thousands place. Its value is
200,000. Move the slider to see each digit.

```figure
(define k (slider 'k 0 5 5 "Place" 1))
(define d (m4p1-digit 254870 k))
(m4p1-chart 40 254870 6 k)
(label 160 150 (string-append (fmt d 0) " is in the " (list-ref '("ones" "tens" "hundreds" "thousands" "ten thousands" "hundred thousands") k) " place") 'small)
(label 160 180 (string-append "Its value is " (m4p1-num (* d (expt 10 k))) ".") 'body 'bold)
```

```check
(number
  (ask "What is the value of the 3 in 362,015?")
  (answer 300000) (from "3 * 100000")
  (wrong-if 30000 "The 3 is 6 places from the right: the hundred thousands place. Its value is 300,000.")
  (wrong-if 3 "3 is the digit. In the hundred thousands place it stands for 300,000.")
  (hint "Count the places from the right. The 3 is 6th.")
  (hint "The 3 is in the hundred thousands place."))
```

---

## Reading 6 digits

The comma splits 254,870 into 2 groups of 3 digits. Read the first
group like a 3-digit number. Then say "thousand". Then read the second
group.

"two hundred fifty-four thousand, eight hundred seventy"

```check
(choice
  (ask "How do you read 708,240?")
  (right "seven hundred eight thousand, two hundred forty")
  (wrong "seventy thousand, eight hundred twenty-four"
    "The first group has 3 digits: 708. So it is seven hundred eight thousand.")
  (wrong "seven hundred eighty thousand, two hundred forty"
    "The tens digit of 708 is 0, so it is seven hundred eight, not eighty.")
  (wrong "seven hundred eight, two hundred forty"
    "You need the word \"thousand\" where the comma is. 708 is the number of thousands.")
  (hint "Read 708 first, then say \"thousand\".")
  (hint "Then read 240."))
```

---

## Writing from words

To write a number you hear, write the thousands group, a comma, then
the last 3 digits. Every group after the comma has 3 digits. Use zeros
for places with nothing.

"four hundred six thousand, fifty-two" is 406,052.

```check
(number
  (ask "Write in digits: one hundred thirty thousand, nine.")
  (answer 130009)
  (wrong-if 1309 "The last group must have 3 digits. Nine is 009 after the comma: 130,009.")
  (wrong-if 130900 "Nine is 9 ones, not 9 hundreds. After the comma write 009.")
  (wrong-if 13009 "One hundred thirty thousand is 130 thousands: 130 before the comma.")
  (hint "Before the comma: 130. After the comma: 3 digits for nine.")
  (hint "Nine as 3 digits is 009."))
```

---

## One million

Count one more than 999,999. Every place is full, so every place
regroups. You get 1,000,000: **one million**.

999,999 + 1 = 1,000,000

It has 7 digits and 2 commas. One million is 1,000 thousands.

```figure
(define m (toggle 'm "Add 1"))
(label 160 60 "999,999" 'big 'bold)
(if m (begin (label 160 95 "+ 1" 'big) (line 100 108 220 108 'ink 2)
  (label 160 140 "1,000,000" 'big 'bold)))
(label 160 185 (if m "one million" "nine hundred ninety-nine thousand,") 'small)
(label 160 203 (if m "" "nine hundred ninety-nine") 'small)
```

```check
(number
  (ask "How many thousands make one million?")
  (answer 1000) (from "1000000 / 1000") (true "1000 * 1000 = 1000000")
  (wrong-if 100 "100 thousands is 100,000, one hundred thousand. You need 10 of those for a million.")
  (wrong-if 10 "10 thousands is only 10,000. One million is 1,000,000: 1,000 groups of 1,000.")
  (hint "1,000,000 has 1,000 before the last comma."))
```

---

## Worked example

```example
(example
  (problem "Write five hundred thousand, three hundred in digits.")
  (step "The thousands group is 500.")
  (step "The last group is three hundred: 300.")
  (step "Put a comma between them.")
  (answer "500,300"))
```

```example
(example
  (problem "Name the place and the value of the 9 in 491,250.")
  (step "Count from the right: 0 ones, 5 tens, 2 hundreds, 1 thousand.")
  (step "The 9 is next: the ten thousands place.")
  (step (number (ask "What is the value of the 9?") (answer 90000) (from "9 * 10000")
    (wrong-if 900000 "The 4 is in the hundred thousands place. The 9 is in the ten thousands place.")))
  (answer "The 9 is in the ten thousands place. Its value is 90,000."))
```

---

## Practice

```check
(number
  (ask "What is the value of the 6 in 615,072?")
  (answer 600000) (from "6 * 100000")
  (wrong-if 60000 "615,072 has 6 digits. The 6 is the 6th from the right: hundred thousands.")
  (hint "The 6 is the first of 6 digits."))
```

```check
(number
  (ask "Write in digits: eight hundred two thousand, forty.")
  (answer 802040)
  (wrong-if 80240 "Eight hundred two thousand is 802 thousands. Then 040 for forty: 802,040.")
  (wrong-if 802400 "Forty is 4 tens: 040 after the comma, not 400.")
  (hint "Before the comma: 802. After it: forty as 3 digits."))
```

---

```check
(choice
  (ask "How do you read 1,000,000?")
  (right "one million")
  (wrong "one hundred thousand"
    "One hundred thousand is 100,000, with 6 digits. 1,000,000 has 7 digits.")
  (wrong "ten thousand thousand"
    "1,000,000 is 1,000 thousands. Its name is one million.")
  (hint "Count the digits: 7."))
```

```check
(number
  (ask "Which digit is in the hundred thousands place of 437,816?")
  (answer 4)
  (wrong-if 3 "3 is in the ten thousands place. The hundred thousands place is one more to the left.")
  (wrong-if 6 "6 is in the ones place. Count 6 places from the right.")
  (hint "Count 6 places from the right."))
```

So: read the thousands group, say "thousand", then read the last 3 digits.
