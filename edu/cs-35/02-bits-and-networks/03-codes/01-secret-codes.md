# Secret codes

```lesson
(objective "Use a code that gives each letter a number to write and read a message.")
(minutes 15)
```

You can turn letters into numbers with a code, and numbers back into
letters.

A **code** is a rule that swaps one thing for another. Here is a
simple code: A is 1, B is 2, C is 3, and so on, up to Z, which is 26.

With this code, the word HI is 8 9.

```figure
(define s (slider 's 1 26 8 "Letter" 1))
(for-range 0 26
  (lambda (k)
    (let ((x (+ 16 (* (modulo k 13) 24))) (y (if (< k 13) 40 120)))
      (text x y (string (integer->char (+ 65 k))) 'centre 'body 'bold)
      (text x (+ y 22) (fmt (+ k 1) 0) 'centre 'small)
      (if (= (+ k 1) s) (frame (- x 11) (- y 18) 22 46 'ink 2)))))
(text 160 210 (string-append (string (integer->char (+ 64 s))) " is " (fmt s 0)) 'centre 'big 'bold)
```

```check
(number
  (ask "With this code, what number is the letter E?")
  (answer 5)
  (wrong-if 4 "Count again from A: A is 1, B is 2, C is 3, D is 4, E is ...")
  (hint "A is 1. Count on to E."))
```

---

## Reading a message

To read a message, swap each number back for its letter.

```example
(example
  (problem "Read the message 3 1 20.")
  (step "3 is C.")
  (step "1 is A.")
  (step "20 is T.")
  (answer "The message is CAT."))
```

```example
(example
  (problem "Read the message 4 15 7.")
  (step "4 is D.")
  (step "15 is O.")
  (step (text (ask "7 is which letter? Then write the whole word.")
    (accept "DOG")
    (wrong-if "DOH" "H is 8. Count again: 7 is one before H.")))
  (answer "The message is DOG."))
```

```check
(text
  (ask "Read the message 2 5 5.")
  (accept "BEE")
  (wrong-if "BE" "There are three numbers, so there are three letters. 5 comes twice.")
  (wrong-if "CFF" "That counts from A as 0. In this code A is 1, so 2 is B.")
  (hint "2 is B. 5 is E."))
```

---

## Both sides need the same code

A code works only if the sender and the reader use the same rule. If
the reader uses a different rule, the numbers turn into the wrong
letters.

```check
(choice
  (ask "Ana sends 8 9 with the code A is 1. Ben reads it with a code where A is 0, B is 1, and so on. What does Ben read?")
  (right "IJ, not HI")
  (wrong "HI, the same as Ana"
    "In Ben's code every number means the next letter: 8 is I, not H. A code works only when both use the same rule.")
  (hint "In Ben's code, which letter is 8?"))
```

---

## Practice

```check
(number
  (ask "With the code A is 1, what number is the letter Z?")
  (answer 26)
  (wrong-if 25 "That counts from A as 0. In this code A is 1, so Z, the 26th letter, is 26.")
  (hint "Z is the last letter of the alphabet. How many letters are there?"))
```

---

```check
(text
  (ask "Read the message 12 9 7 8 20.")
  (accept "LIGHT")
  (wrong-if "LIGHS" "S is 19. 20 is the letter after S.")
  (hint "12 is L, 9 is I.")
  (hint "7 is G, 8 is H, and 20 is T."))
```

So: a code swaps letters for numbers, and the reader must use the same
code as the writer.
