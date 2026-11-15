# Explaining features

```lesson
(objective "Explain why a feature keeps going, such as why \"start at 1, add 3\" always alternates odd and even.")
(standards "4.OA.C.5")
(minutes 25)
```

You can explain why a feature of a pattern keeps going forever.

Put the dots of a number in pairs. An even number makes pairs with
none left. An odd number has 1 dot left over.

Join 7 dots and 3 dots. The 2 left-over dots make a new pair. So
odd + odd = even.

```figure
(define on (toggle 'join "Join them" #f))
(define (dots x0 n0 n role)
  (for-range n0 (+ n0 n)
    (lambda (i)
      (let ((x (+ x0 (* 30 (quotient i 2)))) (y (+ 80 (* 30 (modulo i 2)))))
        (circle x y 9 role) (ring x y 9 'ink 1)))))
(if on
    (begin (dots 80 0 7 'warm) (dots 80 7 3 'cool) (label 160 160 "10: all in pairs" 'body 'bold))
    (begin (dots 40 0 7 'warm) (dots 220 0 3 'cool)
           (label 85 160 "7: 1 left" 'body 'bold) (label 235 160 "3: 1 left" 'body 'bold)))
```

```check
(choice
  (ask "You add 2 odd numbers. What is the sum?")
  (right "Always even")
  (wrong "Always odd"
    "Each odd number has 1 left-over dot. The 2 left-overs make a pair, so none is left: the sum is even.")
  (wrong "Sometimes odd, sometimes even"
    "Try a few: 3 + 5 = 8, 7 + 9 = 16. The 2 left-over dots always pair up, so it is always even.")
  (hint "Toggle the figure. What happens to the 2 left-over dots?"))
```

---

## Even + odd

An even number has no dot left over. Add an odd number, and its 1
left-over dot is still alone. So even + odd = odd.

Adding an odd number always switches: odd becomes even, and even
becomes odd.

```check
(choice
  (ask "What is 10 + 7, odd or even, and why?")
  (right "Odd: 10 is all pairs, and 7 has 1 dot left over" (true "10 + 7 = 17"))
  (wrong "Even: 10 is even"
    "10 is all pairs, but 7 has 1 dot left over. That dot has no partner, so 17 is odd.")
  (wrong "Odd: 10 + 7 has a 7 in it"
    "17 is odd, but not because of the digit 7 in the question. It is odd because 7 has 1 dot left over.")
  (hint "Which number has a dot left over?"))
```

---

## Why "add 3" alternates

"Start at 1. Add 3." starts odd. 3 is odd, so each step switches:
odd, even, odd, even ... The rule adds 3 every time. So it switches
every time, forever.

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 4, 4.OA.C.5: the rule \"Add 3\" from 1, and why its terms alternate odd and even")
```

```check
(choice
  (ask "Why does \"start at 1, add 3\" keep switching between odd and even?")
  (right "Adding an odd number always switches odd and even")
  (wrong "Because the 1st term is 1"
    "Starting at 1 makes the 1st term odd. The switching comes from what is added each time: 3, which is odd.")
  (wrong "It only switches for the first few terms"
    "Each step adds 3, and adding an odd number always switches. So it keeps switching, however far you go.")
  (hint "Is 3 odd or even? What does adding it do?"))
```

---

## Adding an even number

Even + even = even, and odd + even = odd. The pairs of an even number
change nothing about the left-over dot. So adding an even number keeps
each term the same as the start: all odd, or all even.

```check
(choice
  (ask "Start at 7. Add 4. Why is every term odd?")
  (right "7 is odd, and adding 4, an even number, keeps it odd")
  (wrong "4 is even, so the terms are even"
    "Adding an even number does not make the sum even. It keeps what the start was. 7 is odd, so 11, 15, 19 are odd.")
  (wrong "7 ends in 7"
    "The terms 11, 15, 19 do not end in 7. They stay odd because 7 is odd and 4 is even.")
  (hint "Is the start odd or even? Is the amount added odd or even?"))
```

---

## Last digits

"Start at 4. Add 5." gives last digits 4, 9, 4, 9 ... Why? Adding 5
twice adds 10. Adding 10 adds 1 ten and 0 ones. So the ones digit comes
back to where it was.

```check
(choice
  (ask "Start at 3. Add 10. Why does every term end in 3?")
  (right "Adding 10 changes the tens, not the ones")
  (wrong "3 is odd"
    "Being odd does not keep the last digit. 3 + 2 = 5 is odd too, but ends in 5. Adding 10 adds 0 ones.")
  (wrong "The terms are multiples of 3"
    "13 and 23 end in 3, but 13 ÷ 3 = 4 R 1. They are not multiples of 3. Adding 10 adds 0 ones.")
  (hint "What does adding 10 do to the ones digit?"))
```

---

## Worked example

```example
(example
  (problem "Explain why \"start at 2, add 6\" has only even terms.")
  (step "The 1st term, 2, is even.")
  (step "6 is even. Adding an even number to an even number gives an even number.")
  (step "Every step adds 6, so every term stays even.")
  (answer "2 is even and 6 is even, so even + even keeps every term even."))
```

```example
(example
  (problem "Explain why \"start at 6, add 5\" alternates even and odd.")
  (step "The 1st term, 6, is even.")
  (step (choice (ask "What does adding 5 do each time?")
    (right "It switches: 5 is odd")
    (wrong "It keeps it even"
      "5 is odd. Adding an odd number switches: 6 + 5 = 11 is odd.")))
  (answer "5 is odd, so each step switches: even, odd, even, odd ..."))
```

---

## Practice

```check
(choice
  (ask "Start at 8. Add 7. What happens to odd and even?")
  (right "They alternate: 7 is odd, so each step switches")
  (wrong "All even: 8 is even"
    "8 is even, but 7 is odd. 8 + 7 = 15 is odd. Each step switches.")
  (wrong "All odd: 7 is odd"
    "The 1st term is 8, which is even. Then adding 7 switches each time: even, odd, even ...")
  (hint "Is the amount added odd or even?"))
```

```check
(choice
  (ask "Start at 11. Add 20. Which is true of every term, and why?")
  (right "It ends in 1, because adding 20 adds 0 ones")
  (wrong "It ends in 1, because 11 has two 1s"
    "The terms 31, 51, 71 end in 1 for another reason. 20 is 2 tens and 0 ones, so the ones never change.")
  (wrong "It is even, because 20 is even"
    "11 is odd. Adding an even number keeps it odd: 31, 51, 71.")
  (hint "Write 11, 31, 51. What does adding 20 do to the ones?"))
```

---

```check
(choice
  (ask "Kim says: \"start at 5, add 5\" ends in 5, 0, 5, 0 forever. Why is she right?")
  (right "5 + 5 ends in 0, and 0 + 5 ends in 5, so it repeats")
  (wrong "Because 5 is odd"
    "Being odd does not make digits repeat. The ones go 5, then 5 + 5 = 10 ends in 0, then 0 + 5 = 5.")
  (wrong "She is wrong: it stops after 100"
    "105 ends in 5 and 110 ends in 0. The same 2 steps happen however big the terms get.")
  (hint "What is 5 + 5? And 10 + 5?"))
```

```check
(number
  (ask "Start at 1. Add 3. How many of the first 10 terms are odd?")
  (answer 5)
  (wrong-if 10 "The terms alternate, so only half are odd: the 1st, 3rd, 5th, 7th and 9th.")
  (wrong-if 4 "The 1st term, 1, is odd too. Count the 1st, 3rd, 5th, 7th and 9th.")
  (hint "Odd terms are in the odd places: 1st, 3rd ..."))
```

So: explain a feature by what each step does. Adding an odd number
always switches odd and even.
