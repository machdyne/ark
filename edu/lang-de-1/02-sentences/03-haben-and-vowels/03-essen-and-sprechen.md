# essen, sprechen, nehmen

```lesson
(objective "Conjugate verbs that change e to i: essen, sprechen, nehmen, vergessen.")
(minutes 25)
```

Some verbs change the vowel e to i, again only with du and er, sie,
es.

sprechen (to speak) is one of them:

| | sprechen |
|---|---|
| ich | spreche |
| du | sprichst (i) |
| er, sie, es | spricht (i) |
| wir | sprechen |
| ihr | sprecht |
| sie, Sie | sprechen |

Er spricht Deutsch und Englisch. (He speaks German and English.)

```sources
(source "Duden, Die Grammatik (10th edition, 2022): verbs with a vowel change in the present")
```

```check
(text
  (ask "Er ___ (sprechen) Deutsch. Write the right form.")
  (accept "spricht")
  (wrong-if "sprecht" "sprecht is for ihr. With er, e becomes i: spricht.")
  (wrong-if "sprichst" "sprichst is for du. With er the ending is -t: spricht.")
  (hint "e becomes i, and the ending for er is -t."))
```

---

## essen and vergessen

essen (to eat) and vergessen (to forget) change e to i too. Their
stems end in s, so du takes only -t, as with sitzen: du isst, er
isst.

Careful: er **isst** (he eats, with ss) is not er **ist** (he is,
from sein).

```check
(text
  (ask "du ___ (essen). Write the right form.")
  (accept "isst")
  (wrong-if "ist" "ist (one s) is from sein: er ist, he is. essen keeps its ss: du isst.")
  (wrong-if "esst" "esst is for ihr. With du, e becomes i: isst.")
  (wrong-if "issst" "The stem ends in s, so du adds only -t: isst.")
  (hint "e becomes i; the stem ends in ss; add -t."))
```

---

## nehmen

nehmen (to take) changes more than the vowel: du **nimmst**, er
**nimmt**. The h goes, and the m is doubled.

- Ich nehme das Buch. (I take the book.)
- Sie nimmt die Lampe. (She takes the lamp.)

```check
(text
  (ask "Write \"She takes the book.\" in German.")
  (accept "Sie nimmt das Buch.")
  (wrong-if "Sie nehmt das Buch." "With er, sie, es, nehmen changes: sie nimmt.")
  (wrong-if "Sie nimt das Buch." "nimmt has a double m.")
  (hint "sie nimmt ..."))
```

---

## Worked example

```example
(example
  (problem "Say \"You (du) forget the word.\" (das Wort = the word)")
  (step "vergessen with du: e becomes i: vergiss-.")
  (step "The stem ends in s, so du adds only -t: vergisst.")
  (answer "Du vergisst das Wort."))
```

```example
(example
  (problem "Say \"She speaks German.\"")
  (step "sprechen with sie (she): e becomes i.")
  (step (text (ask "Write the form of sprechen for sie (she).") (accept "spricht")
          (wrong-if "sprecht" "sprecht is for ihr. With sie (she): spricht.")))
  (answer "Sie spricht Deutsch."))
```

---

## Read

- Tom: Lena, du sprichst sehr gut Deutsch!
- Lena: Danke! Aber ich vergesse viel.
- Tom: Ich auch (too). Ich nehme immer das Wörterbuch.

```check
(choice
  (ask "What does Lena say about her German?")
  (right "She forgets a lot.")
  (wrong "She speaks very badly."
    "Tom says the opposite: du sprichst sehr gut Deutsch. Lena only adds: ich vergesse viel.")
  (wrong "She always takes the dictionary."
    "That is Tom: Ich nehme immer das Wörterbuch.")
  (hint "Look at Lena's line after Danke."))
```

---

## Practice

```check
(text
  (ask "Er ___ (essen) viel. Write the right form.")
  (accept "isst")
  (wrong-if "ist" "ist is from sein, he is. He eats: er isst, with ss.")
  (wrong-if "esst" "esst is for ihr. With er, e becomes i: isst.")
  (hint "Like du: e becomes i, with ss."))
```

```check
(text
  (ask "Write \"I speak English.\" in German.")
  (accept "Ich spreche Englisch.")
  (wrong-if "Ich spriche Englisch." "With ich the vowel does not change: ich spreche.")
  (hint "The vowel changes only with du and er, sie, es."))
```

---

```check
(choice
  (ask "Which form is right?")
  (right "ihr nehmt")
  (wrong "ihr nimmt"
    "The change is only for du and er, sie, es. ihr keeps the stem nehm-: ihr nehmt.")
  (wrong "ihr nimmst"
    "nimmst is du's form. ihr: nehmt.")
  (hint "Does ihr get the vowel change?"))
```

```check
(choice
  (ask "\"Lena vergisst das Wort.\" What does it mean?")
  (right "Lena forgets the word.")
  (wrong "Lena eats the word."
    "Eat is essen. vergessen ends like essen, but it means to forget.")
  (wrong "Lena takes the word."
    "Take is nehmen. vergessen means to forget.")
  (hint "vergessen sounds a little like English forget."))
```

```cards
(card "sprechen" "to speak" (typed) (note "du sprichst, er spricht"))
(card "essen" "to eat" (typed) (note "du isst, er isst"))
(card "nehmen" "to take" (typed) (note "du nimmst, er nimmt"))
(card "vergessen" "to forget" (typed) (note "du vergisst, er vergisst"))
(card "das Wort, die Wörter" "the word" (typed))
```

So: sprechen, essen, nehmen and vergessen change e to i with du and
er, sie, es; nehmen also becomes nimm-.
