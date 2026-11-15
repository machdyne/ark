# Standard form and word form

```lesson
(objective "Write a number in standard form and in word form, and change one into the other.")
(standards "4.NBT.A.2")
(minutes 20)
(keywords "standard form" "word form")
```

You can write a number with digits or with words, and change one into the other.

A number written with digits, like 52,618, is in **standard form**. It
is the short way you usually write numbers. Put a comma after the
thousands.

```check
(choice
  (ask "Which number is in standard form?")
  (right "30,512")
  (wrong "thirty thousand, five hundred twelve"
    "That is the number written in words. Standard form uses digits.")
  (wrong "30 thousands and 512 ones"
    "That names the places with words. Standard form is just the digits: 30,512.")
  (hint "Standard form uses only digits and a comma."))
```

---

## Word form

The same number written in words is in **word form**.

52,618 is "fifty-two thousand, six hundred eighteen".

- Put a hyphen in the numbers from 21 to 99 that have 2 words, like fifty-two.
- Put a comma after the word "thousand", where the number has its comma.
- A zero is not said: 40,075 is "forty thousand, seventy-five".

```note
(note "Many people, in Britain and elsewhere, say \"and\" before the last tens and ones: \"six hundred and eighteen\", \"two thousand and nineteen\". It is the same number. US math books leave the \"and\" out, and so does this course.")
```

```check
(choice
  (ask "Which is the word form of 40,075?")
  (right "forty thousand, seventy-five")
  (wrong "four thousand, seventy-five"
    "The part before the comma is 40, so it is forty thousand. Four thousand is 4,000.")
  (wrong "forty thousand, seven hundred five"
    "The hundreds digit is 0. After the comma, 075 is seventy-five.")
  (wrong "forty thousand, zero hundred seventy-five"
    "A zero is not said. 075 is just seventy-five.")
  (hint "Read 40, say \"thousand\", then read 075."))
```

---

## From standard form to word form

1. Read the group before the comma, like a number up to 999.
2. Say "thousand" and write a comma.
3. Read the last 3 digits.

316,204 is "three hundred sixteen thousand, two hundred four".

```check
(choice
  (ask "Which is the word form of 316,240?")
  (right "three hundred sixteen thousand, two hundred forty")
  (wrong "three hundred sixteen thousand, two hundred four"
    "That is 316,204. Here the tens digit is 4 and the ones digit is 0: two hundred forty.")
  (wrong "thirty-one thousand, six hundred forty"
    "The group before the comma has 3 digits: 316. So it is three hundred sixteen thousand.")
  (hint "Read 316, say \"thousand\", then read 240."))
```

---

## From word form to standard form

1. Write the number before "thousand" in digits.
2. Write a comma.
3. Write the rest with exactly 3 digits. Use zeros for empty places.

"sixty thousand, eight" is 60,008.

```check
(number
  (ask "Write in standard form: sixty thousand, eight.")
  (answer 60008)
  (wrong-if 608 "Sixty thousand needs 60 before the comma. Then 3 digits for eight: 60,008.")
  (wrong-if 6008 "Sixty thousand is 60 thousands, so 60 goes before the comma: 60,008.")
  (wrong-if 60800 "Eight is 8 ones, not 8 hundreds. After the comma write 008.")
  (hint "Before the comma: 60.")
  (hint "After the comma, eight takes 3 digits: 008."))
```

---

## Worked example

```example
(example
  (problem "Write 905,030 in word form.")
  (step "Before the comma: 905 is nine hundred five.")
  (step "Say \"thousand\" and write a comma.")
  (step "After the comma: 030 is thirty.")
  (answer "nine hundred five thousand, thirty"))
```

```example
(example
  (problem "Write in standard form: two hundred thousand, four hundred eleven.")
  (step "Before the comma: 200.")
  (step "After the comma: 411.")
  (step (number (ask "So what is the number in standard form?") (answer 200411)
    (wrong-if 2411 "Two hundred thousand is 200 thousands. Write 200 before the comma.")))
  (answer "200,411"))
```

---

## Practice

```check
(number
  (ask "Write in standard form: seventy-three thousand, one hundred two.")
  (answer 73102)
  (wrong-if 73120 "One hundred two is 102, not 120: 1 hundred, 0 tens and 2 ones.")
  (wrong-if 7312 "Seventy-three thousand needs 73 before the comma, and 3 digits after it.")
  (hint "Before the comma: 73. After it: 102."))
```

```check
(text
  (ask "Write 2,019 in word form.")
  (accept "two thousand, nineteen")
  (accept "two thousand nineteen")
  (accept "two thousand and nineteen")
  (accept "two thousand, and nineteen")
  (wrong-if "two thousand, one hundred nineteen" "The hundreds digit is 0, so there are no hundreds. 019 is nineteen.")
  (wrong-if "twenty thousand, nineteen" "Only 1 digit is before the comma: 2. So it is two thousand.")
  (hint "Before the comma: 2. After it: 019.")
  (hint "A zero is not said. 019 is nineteen."))
```

---

```check
(choice
  (ask "Which is the word form of 500,600?")
  (right "five hundred thousand, six hundred")
  (wrong "five hundred six hundred"
    "You need the word \"thousand\" where the comma is: five hundred thousand.")
  (wrong "fifty thousand, six hundred"
    "Fifty thousand is 50,000. 500,600 has 500 before the comma.")
  (hint "Read 500, say \"thousand\", then read 600."))
```

```check
(number
  (ask "Write in standard form: one hundred four thousand, ninety.")
  (answer 104090)
  (wrong-if 10490 "One hundred four thousand is 104 thousands: 104 before the comma.")
  (wrong-if 104900 "Ninety is 9 tens: 090 after the comma, not 900.")
  (hint "Before the comma: 104. After it: ninety as 3 digits."))
```

So: standard form uses digits, and word form uses words.
