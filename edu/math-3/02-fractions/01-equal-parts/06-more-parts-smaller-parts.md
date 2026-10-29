# More parts, smaller parts

```lesson
(objective "Explain why the more equal parts a whole is cut into, the smaller each part is.")
(standards "3.G.A.2")
(minutes 15)
```

The more equal parts you cut a whole into, the smaller each part is.

Choose a number of parts under the figure. The bar stays the same. Watch the shaded part as the
number of parts grows.

```figure
(define c (choice 'parts '("2" "3" "4" "6" "8") "Equal parts"))
(define n (list-ref '(2 3 4 6 8) c))
(define nm (list-ref '("half" "third" "fourth" "sixth" "eighth") c))
(frac-bar-at 40 30 240 40 1 1 'cool)
(label 160 90 "1 whole" 'small)
(frac-bar-at 40 110 240 40 n 1 'warm)
(label 160 180 (string-append "1 " nm " of the whole") 'body 'bold)
(caption "The same bar, cut into more and more equal parts.")
```

```check
(choice
  (ask "A bar is cut into 8 equal parts. A bar of the same size is cut into 4 equal parts. Which parts are smaller?")
  (right "The 8 parts")
  (wrong "The 4 parts"
    "4 is less than 8, but here you share the same bar. 8 parts must squeeze into the same space, so each one is smaller.")
  (wrong "They are the same size"
    "The bars are the same size, but one has more parts. More parts in the same bar means each part is smaller.")
  (hint "Choose 4, then 8, in the figure. Look at the shaded part."))
```

---

## Sharing a pizza

Think of 1 pizza. If 2 people share it, each gets 1 half. If 8
people share it, each gets 1 eighth.

The pizza does not grow. More people means smaller slices.

```figure
(label 85 30 "2 people" 'small)
(frac-circle 85 115 65 2 1 'warm)
(label 235 30 "8 people" 'small)
(frac-circle 235 115 65 8 1 'warm)
(caption "The same pizza, shared 2 ways and 8 ways.")
```

```check
(choice
  (ask "Which is bigger: 1 third or 1 sixth of the same pizza?")
  (right "1 third")
  (wrong "1 sixth"
    "6 is bigger than 3, but it counts the parts. Cutting the same pizza into 6 parts makes each part smaller than a third.")
  (wrong "They are the same"
    "A third is 1 of 3 parts. A sixth is 1 of 6 parts of the same pizza. They cannot be the same size.")
  (hint "Would you rather share a pizza with 3 people or with 6 people?"))
```

---

## Only for the same whole

This works only when the wholes are the same size. Half of a small
cookie can be smaller than 1 fourth of a big cookie.

```figure
(frac-circle 70 110 30 2 1 'warm)
(label 70 165 "small cookie" 'small)
(frac-circle 215 110 85 4 1 'warm)
(caption "1 half of a small cookie, 1 fourth of a big one.")
```

```check
(choice
  (ask "Is 1 half always bigger than 1 fourth?")
  (right "No: only when the wholes are the same size")
  (wrong "Yes, always"
    "Look at the cookies. Half of the small cookie is smaller than a fourth of the big one. Compare parts of the same whole.")
  (wrong "No, a fourth is always bigger"
    "For the same whole, the half is bigger: cutting it into 2 parts makes bigger parts than cutting it into 4. The wholes must match.")
  (hint "Look at the figure. Which shaded part is bigger?"))
```

---

## Worked example

```example
(example
(problem "Two ribbons are the same length. One is cut into 3 equal parts. The other is cut into 8 equal parts. Which parts are longer?")
(step "The ribbons are the same length, so you can compare their parts.")
(step "8 parts fit into the same length as 3 parts.")
(step "More parts in the same length means each part is shorter.")
(answer "The 3 parts are longer: 1 third is longer than 1 eighth."))
```

```example
(example
(problem "Two same size cakes. One is cut into 4 equal parts, the other into 6. Which parts are bigger?")
(step "The cakes are the same size, so you can compare their parts.")
(step (choice (ask "Which cake is cut into more parts?")
  (right "The one cut into 6")
  (wrong "The one cut into 4"
    "4 parts are fewer than 6 parts. The cake cut into 6 has more parts.")))
(step (choice (ask "So which parts are bigger?")
  (right "The fourths")
  (wrong "The sixths"
    "More parts of the same cake are smaller. The cake cut into 6 has the smaller parts.")))
(answer "Fourths are bigger than sixths of the same cake."))
```

---

## Practice

```check
(choice
  (ask "Which part of the same bar is the smallest?")
  (right "1 eighth")
  (wrong "1 half"
    "A half is 1 of only 2 parts. That is the biggest part here, not the smallest.")
  (wrong "1 fourth"
    "A fourth is 1 of 4 parts. An eighth is 1 of 8 parts of the same bar, so it is smaller.")
  (wrong "1 sixth"
    "A sixth is 1 of 6 parts. An eighth is 1 of 8 parts of the same bar, so it is smaller.")
  (hint "Which name means the most parts?"))
```

```check
(choice
  (ask "Jo says, \"1 sixth is bigger than 1 third, because 6 is bigger than 3.\" Is Jo right? Both parts come from the same bar.")
  (right "No: 1 sixth is smaller")
  (wrong "Yes: 6 is bigger than 3"
    "6 is bigger than 3, but it is the number of parts. When there are more parts in the same bar, each part is smaller.")
  (hint "Picture the bar cut into 3 parts, then into 6 parts."))
```

So: when you cut the same whole into more equal parts, each part gets
smaller.
