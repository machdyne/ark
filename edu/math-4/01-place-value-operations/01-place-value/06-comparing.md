# Comparing big numbers

```lesson
(objective "Compare and order numbers up to 1,000,000 by place value, starting from the greatest place, and record with >, = or <.")
(standards "4.NBT.A.2")
(minutes 25)
```

You can tell which of two big numbers is greater by looking at their places.

First count the digits. Of 2 whole numbers, the one with more digits is greater. 100,000
has 6 digits and 99,999 has 5, so 100,000 is greater.

```check
(choice
  (ask "Which is greater: 9,876 or 10,234?")
  (right "10,234" (true "10234 > 9876"))
  (wrong "9,876"
    "9,876 starts with a bigger digit, but it has only 4 digits. 10,234 has 5 digits, so it is in the ten thousands.")
  (hint "Count the digits in each number."))
```

---

## Same number of digits

Line up the places. Start at the greatest place and move right. Stop at
the first place where the digits differ. The number with the greater
digit there is greater.

Move the slider to compare 45,812 and 45,281 place by place.

```figure
(define k (slider 'k 2 4 4 "Place" 1))
(m4p1-chart 16 45812 5 k)
(m4p1-chart 106 45281 5 k)
(define a (m4p1-digit 45812 k))
(define b (m4p1-digit 45281 k))
(label 160 206 (if (= a b) (string-append "Both " (fmt a 0) ": go on to the right.")
  (string-append (fmt a 0) " hundreds > " (fmt b 0) " hundreds")) 'body 'bold)
```

```check
(choice
  (ask "Compare 45,812 and 45,281.")
  (right "45,812 > 45,281" (true "45812 > 45281"))
  (wrong "45,812 < 45,281" (false "45812 < 45281")
    "The ten thousands and the thousands are the same. In the hundreds, 8 is greater than 2, so 45,812 is greater.")
  (wrong "45,812 = 45,281" (false "45812 = 45281")
    "They have the same digits, but in different places. In the hundreds, 8 is greater than 2.")
  (hint "Both start with 45. Look at the hundreds."))
```

---

## The signs

The sign > means "is greater than", and < means "is less than". The
open side faces the greater number.

$$ 370159 > 307915 $$

The ten thousands differ first: 7 is greater than 0.

```check
(choice
  (ask "Which sign goes in the box? 307,915 [ ] 370,159")
  (right "<" (true "307915 < 370159"))
  (wrong ">" (false "307915 > 370159")
    "Both have 3 hundred thousands. In the ten thousands, 0 is less than 7. So 307,915 is the smaller one.")
  (wrong "=" (false "307915 = 370159")
    "The digits are the same, but in different places. Compare the ten thousands: 0 and 7.")
  (hint "Both start with 3. Look at the next place."))
```

---

## Putting in order

To put numbers in order, compare them the same way. Find the least
first, then the next, and so on.

52,300 and 52,030 and 5,230: 5,230 has only 4 digits, so it is the
least. Then compare the other 2 at the hundreds: 0 < 3.

5,230 < 52,030 < 52,300

```check
(choice
  (ask "Which shows 618,000 and 681,000 and 168,000 in order from least to greatest?")
  (right "168,000 < 618,000 < 681,000" (true "168000 < 618000 < 681000"))
  (wrong "681,000 < 618,000 < 168,000" (false "681000 < 618000 < 168000")
    "That is from greatest to least. Least to greatest starts with the smallest number.")
  (wrong "618,000 < 168,000 < 681,000" (false "618000 < 168000 < 681000")
    "Look at the hundred thousands first: 1 is less than 6. So 168,000 is the least.")
  (hint "Look at the hundred thousands first.")
  (hint "Two numbers start with 6. Compare their ten thousands."))
```

---

## Worked example

```example
(example
  (problem "Compare 704,519 and 704,591.")
  (step "Both have 6 digits.")
  (step "Hundred thousands, ten thousands, thousands, hundreds: 7, 0, 4, 5 in both.")
  (step "Tens: 1 and 9. 1 is less than 9.")
  (answer "704,519 < 704,591"))
```

```example
(example
  (problem "Compare 26,999 and 27,001.")
  (step "Both have 5 digits.")
  (step "Ten thousands: 2 and 2, the same.")
  (step (choice (ask "Thousands: 6 and 7. So which sign is right?")
    (right "26,999 < 27,001" (true "26999 < 27001"))
    (wrong "26,999 > 27,001" (false "26999 > 27001")
      "The 9s come later, in smaller places. The thousands decide first: 6 is less than 7.")))
  (answer "26,999 < 27,001"))
```

---

## Practice

```check
(choice
  (ask "Which sign goes in the box? 89,450 [ ] 89,405")
  (right ">" (true "89450 > 89405"))
  (wrong "<" (false "89450 < 89405")
    "The first places are the same: 8, 9, 4. In the tens, 5 is greater than 0. So 89,450 is greater.")
  (wrong "=" (false "89450 = 89405")
    "The digits are the same, but the 5 and the 0 are in different places.")
  (hint "Compare place by place from the left."))
```

```check
(choice
  (ask "Which number is the greatest?")
  (right "100,000" (true "100000 > 99999") (true "100000 > 98760") (true "100000 > 10999"))
  (wrong "99,999"
    "99,999 has 5 digits. 100,000 has 6 digits, so it is greater.")
  (wrong "98,760"
    "98,760 starts with a 9, but it has only 5 digits. 100,000 has 6.")
  (wrong "10,999"
    "10,999 has 5 digits. 100,000 has 6 digits, so it is greater.")
  (hint "Count the digits first."))
```

---

```check
(choice
  (ask "Which sign goes in the box? 600,060 [ ] 600,600")
  (right "<" (true "600060 < 600600"))
  (wrong ">" (false "600060 > 600600")
    "Compare the hundreds: 0 and 6. 0 is less, so 600,060 is less.")
  (wrong "=" (false "600060 = 600600")
    "The 6s are in different places. In the hundreds, 0 is less than 6.")
  (hint "The first places are the same. Find where they differ."))
```

```check
(choice
  (ask "Which shows the numbers from least to greatest?")
  (right "40,999 < 41,009 < 41,090" (true "40999 < 41009 < 41090"))
  (wrong "41,090 < 41,009 < 40,999" (false "41090 < 41009 < 40999")
    "That goes from greatest to least.")
  (wrong "41,009 < 40,999 < 41,090" (false "41009 < 40999 < 41090")
    "Look at the thousands: 40,999 has 0 thousands and 41,009 has 1. So 40,999 is the least.")
  (hint "Compare the thousands first.")
  (hint "Then compare 41,009 and 41,090 at the tens."))
```

So: count the digits, then compare place by place from the left until the digits differ.
