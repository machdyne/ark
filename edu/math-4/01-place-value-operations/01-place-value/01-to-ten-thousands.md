# Places up to ten thousands

```lesson
(objective "Name the place and the value of each digit in a number up to 99,999, reading the comma after the thousands.")
(standards "4.NBT.A.2")
(minutes 20)
```

You can name the place and the value of every digit in a number up to 99,999.

You know the ones, tens, hundreds and thousands places. In 4,725, the
4 is in the thousands place. Its value is 4,000.

Move the slider to pick a place.

```figure
(define k (slider 'k 0 3 3 "Place" 1))
(define d (m4p1-digit 4725 k))
(m4p1-chart 40 4725 5 k)
(label 160 150 (string-append (fmt d 0) " is in the " (list-ref '("ones" "tens" "hundreds" "thousands") k) " place") 'body)
(label 160 180 (string-append "Its value is " (m4p1-num (* d (expt 10 k))) ".") 'body 'bold)
```

```check
(number
  (ask "What is the value of the 7 in 4,725?")
  (answer 700) (from "7 * 100")
  (wrong-if 7 "7 is the digit. Its place is the hundreds, so it stands for 7 hundreds: 700.")
  (wrong-if 70 "The 7 is in the hundreds place, not the tens. Count the places from the right: ones, tens, hundreds.")
  (hint "Count the places from the right: ones, tens, hundreds.")
  (hint "The 7 is in the hundreds place. 7 hundreds = ?"))
```

---

## The ten thousands place

Left of the thousands comes a new place: the ten thousands. A 1 there
is worth 10,000, which is 10 thousands.

In 52,618, the 5 is in the ten thousands place. Its value is 50,000.

```figure
(define k (slider 'k 0 4 4 "Place" 1))
(define d (m4p1-digit 52618 k))
(m4p1-chart 40 52618 5 k)
(label 160 150 (string-append (fmt d 0) " is in the " (list-ref '("ones" "tens" "hundreds" "thousands" "ten thousands") k) " place") 'body)
(label 160 180 (string-append "Its value is " (m4p1-num (* d (expt 10 k))) ".") 'body 'bold)
```

```check
(number
  (ask "Which digit is in the ten thousands place of 38,105?")
  (answer 3)
  (wrong-if 8 "8 is in the thousands place. The ten thousands place is one more to the left.")
  (wrong-if 5 "5 is in the ones place. Count from the right: ones, tens, hundreds, thousands, ten thousands.")
  (hint "Count 5 places from the right.")
  (hint "The ten thousands place is just left of the thousands place."))
```

---

## The comma

A comma goes after the thousands. It splits the number into groups of
3 digits, counted from the right. The comma helps you read big numbers.

You read 52,618 in two parts. First the part before the comma, then
the word "thousand", then the rest:

"fifty-two thousand, six hundred eighteen"

```check
(choice
  (ask "How do you read 31,406?")
  (right "thirty-one thousand, four hundred six")
  (wrong "thirty-one, four hundred six"
    "You need the word \"thousand\" where the comma is. The 31 before the comma is 31 thousands.")
  (wrong "thirty-one thousand, four hundred sixty"
    "The tens digit is 0, so there are no tens. 406 is four hundred six.")
  (wrong "three hundred fourteen thousand, six"
    "The comma comes after 31, not after 314. Only 2 digits are before the comma.")
  (hint "Read the part before the comma first: 31.")
  (hint "Then say \"thousand\", then read 406."))
```

---

## The value of a digit

A digit's value is the digit times its place. In 46,213:

- the 4 is 4 ten thousands, 40,000
- the 6 is 6 thousands, 6,000
- the 2 is 2 hundreds, 200

```check
(number
  (ask "What is the value of the 9 in 29,384?")
  (answer 9000) (from "9 * 1000")
  (wrong-if 9 "9 is the digit. It sits in the thousands place, so it stands for 9 thousands.")
  (wrong-if 90000 "The 9 is in the thousands place. The ten thousands place holds the 2.")
  (wrong-if 900 "Count the places from the right: 4 ones, 8 tens, 3 hundreds, 9 thousands.")
  (hint "Count the places from the right.")
  (hint "The 9 is in the thousands place."))
```

---

## A zero holds a place

In 30,405 there are no thousands and no tens. The zeros keep the other
digits in their places. Without them, 30,405 would be 345.

```check
(number
  (ask "Which digit is in the thousands place of 30,405?")
  (answer 0)
  (wrong-if 3 "3 is in the ten thousands place. The thousands place is the digit just before the comma.")
  (wrong-if 4 "4 is in the hundreds place, just after the comma. The thousands place is just before it.")
  (hint "The thousands place is the digit just before the comma."))
```

---

## Worked example

```example
(example
  (problem "Name the place and the value of the 8 in 81,527.")
  (step "Count from the right: 7 ones, 2 tens, 5 hundreds, 1 thousand.")
  (step "The 8 is next: the ten thousands place.")
  (step "8 ten thousands is 80,000.")
  (answer "The 8 is in the ten thousands place. Its value is 80,000."))
```

```example
(example
  (problem "Name the place and the value of the 6 in 70,561.")
  (step "Count from the right: 1 one, 6 tens.")
  (step "The 6 is in the tens place.")
  (step (number (ask "What is the value of the 6?") (answer 60) (from "6 * 10")
    (wrong-if 6 "The 6 is in the tens place. 6 tens is 60.")))
  (answer "The 6 is in the tens place. Its value is 60."))
```

---

## Practice

```check
(number
  (ask "What is the value of the 4 in 64,019?")
  (answer 4000) (from "4 * 1000")
  (wrong-if 40000 "The 6 is in the ten thousands place. The 4 is just before the comma: the thousands.")
  (wrong-if 4 "4 is the digit. In the thousands place it stands for 4,000.")
  (hint "The 4 is just before the comma."))
```

```check
(choice
  (ask "In 25,873, which digit is in the hundreds place?")
  (right "8")
  (wrong "2" "2 is in the ten thousands place. The hundreds place is the 3rd from the right.")
  (wrong "5" "5 is in the thousands place, just before the comma. The hundreds place is just after it.")
  (wrong "7" "7 is in the tens place. Count 3 places from the right.")
  (hint "Count 3 places from the right."))
```

---

```check
(number
  (ask "What is the value of the 1 in 13,950?")
  (answer 10000) (from "1 * 10000")
  (wrong-if 1000 "The 1 is in the ten thousands place, 5 places from the right. Its value is 10,000.")
  (wrong-if 1 "1 is the digit. In the ten thousands place it stands for 10,000.")
  (hint "Count the places from the right. The 1 is 5th."))
```

```check
(choice
  (ask "How do you read 90,017?")
  (right "ninety thousand, seventeen")
  (wrong "nine thousand, seventeen"
    "The part before the comma is 90, not 9. So it is ninety thousand.")
  (wrong "ninety thousand, one hundred seven"
    "The hundreds digit is 0. After the comma, 017 is just seventeen.")
  (hint "Read 90, say \"thousand\", then read 017."))
```

So: a digit's value is the digit times its place.
