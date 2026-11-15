# mich and dich

```lesson
(objective "Use mich, dich, uns, euch and Sie as objects, and ask wen.")
(minutes 20)
```

In this lesson you say "me", "you" and "us" as objects: **Ich liebe dich.** (I love you.)

Pronouns change in the accusative too, as in English (I, me; we, us):

| nominative | accusative | English |
|---|---|---|
| ich | mich | me |
| du | dich | you (a friend) |
| wir | uns | us |
| ihr | euch | you (friends) |
| Sie | Sie | you (polite) |

> Kennst du mich? Ich kenne dich! Wir besuchen euch.

Polite **Sie** does not change.

```check
(text
  (ask "Ich verstehe ___ nicht. (you, to a friend) Type the missing word.")
  (accept "dich")
  (wrong-if "du" "Du is the subject form. Here you is the object of verstehe, so du becomes dich.")
  (wrong-if "dir" "Dir is a different case, for German 2. The object of verstehen is dich.")
  (hint "du in the accusative: d...ch"))
```

```sources
(source "Duden, Die Grammatik (Duden volume 4): the personal pronouns and their cases")
```

---

## New words (and die Party again)

```cards
(card "besuchen" "to visit" (typed) (note "Ich besuche dich. Regular."))
(card "lieben" "to love" (typed))
(card "verstehen" "to understand" (typed) (note "Ich verstehe dich nicht. Regular: ich verstehe, du verstehst, er versteht."))
(card "die Party, die Partys" "the party" (typed) (note "Review from part 2."))
(card "wen?" "whom? who? (as an object)" (note "Wen siehst du?"))
(card "mich" "me" (typed))
(card "dich" "you (a friend, as an object)")
(card "uns" "us" (typed))
(card "euch" "you (friends, as an object)")
```

```check
(choice
  (ask "How do you say: We are visiting you (two friends).")
  (right "Wir besuchen euch.")
  (wrong "Wir besuchen ihr."
    "Ihr is the subject form. As an object, ihr becomes euch.")
  (wrong "Wir besuchen dich."
    "Dich is one friend. For two or more friends, use euch.")
  (hint "you, more than one friend, as an object."))
```

---

## wer and wen

You know **wer** (who). It asks about the subject. **wen** asks about the object.

> Wer besucht dich? - Mein Opa besucht mich. (Who visits you? My grandpa.)

> Wen besuchst du? - Ich besuche meinen Opa. (Whom do you visit? My grandpa.)

```check
(choice
  (ask "You want to ask: Who(m) are you looking for? Which question is right?")
  (right "Wen suchst du?")
  (wrong "Wer suchst du?"
    "Du is the one who looks, so du is the subject. The person you look for is the object, so the question word is wen.")
  (hint "Is the person you look for the subject or the object?"))
```

---

## A worked example

```example
(example
  (problem "Say in German: Do you (Sie) understand me?")
  (step "A yes/no question: the verb first. Sie takes verstehen: Verstehen Sie ...")
  (step "me is the object: ich becomes mich.")
  (answer "Verstehen Sie mich?"))
```

---

## Now you finish one

Say: My friends visit us. **Meine Freunde besuchen ___.**

```check
(text
  (ask "Type the missing word.")
  (accept "uns")
  (wrong-if "wir" "Wir is the subject form. Here we are the ones visited, the object: uns.")
  (hint "wir as an object."))
```

---

## A party

Lisa calls her friends Tim and Ben.

> Lisa: Hallo Tim! Hörst du mich?

> Tim: Ja, ich höre dich. Ben ist auch hier. (also)

> Lisa: Wir machen eine Party. Kommt ihr?

> Tim: Ja, gern! Wir kommen.

> Lisa: Toll! Ich brauche euch: Ihr macht die Musik!

```check
(choice
  (ask "What will Tim and Ben do at the party?")
  (right "They make the music.")
  (wrong "They bring a present."
    "Nobody says Geschenk. Lisa says: Ich brauche euch: Ihr macht die Musik!")
  (wrong "They do not come."
    "Tim says: Ja, gern! Wir kommen.")
  (hint "Read Lisa's last line. Who is euch?"))
```

---

## Practice

```check
(text
  (ask "Liebst du ___? (me) Type the missing word.")
  (accept "mich")
  (wrong-if "ich" "Ich is the subject form. Here me is the object of liebst: mich.")
  (wrong-if "mir" "Mir is a different case, for German 2. The object of lieben is mich.")
  (hint "ich as an object."))
```

```check
(choice
  (ask "A shop assistant says: Ich verstehe Sie nicht. What does it mean?")
  (right "I do not understand you.")
  (wrong "I do not understand them."
    "With a capital S, Sie is the polite you. sie for them is written small, except at the start of a sentence.")
  (wrong "You do not understand me."
    "Ich is the subject: the assistant does not understand. Sie is the object.")
  (hint "Who does not understand? And what does a capital Sie mean?"))
```

```check
(choice
  (ask "___ besuchst du? - Meine Oma.")
  (right "Wen")
  (wrong "Wer"
    "Du is the subject. The person you visit is the object, so ask with wen.")
  (hint "The answer, meine Oma, is the object of besuchst."))
```

```check
(text
  (ask "Kennt ihr ___? (us) Type the missing word.")
  (accept "uns")
  (wrong-if "wir" "Wir is the subject form. As an object, wir becomes uns.")
  (wrong-if "euch" "Euch is you, more than one friend. us is uns.")
  (hint "us"))
```

Now you can use mich, dich, uns, euch and Sie as objects, and ask wen.
