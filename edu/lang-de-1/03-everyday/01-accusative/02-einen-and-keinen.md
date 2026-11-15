# einen and keinen

```lesson
(objective "Use einen, keinen and meinen for a masculine object, and see that the other articles do not change.")
(minutes 25)
```

In this lesson you say what you need and buy: **einen** Pullover, **keinen** Stift. Like der, the word ein changes only for a masculine object.

| | nominative | accusative |
|---|---|---|
| masculine | ein Pullover | einen Pullover |
| feminine | eine Jacke | eine Jacke |
| neuter | ein Hemd | ein Hemd |

The masculine accusative ends in **-en**, as in den: d**en**, ein**en**.

```check
(text
  (ask "Der Pullover is masculine. Ich brauche ___ Pullover. Type the missing word (a).")
  (accept "einen")
  (wrong-if "ein" "Ein is the nominative. Der Pullover is the object of brauche, so masculine ein becomes einen.")
  (wrong-if "eine" "Eine is for feminine nouns. Der Pullover is masculine: einen Pullover.")
  (hint "Masculine objects end in -en: den, ein...")
  (hint "Add -en to ein."))
```

---

## Clothes

```cards
(card "kaufen" "to buy" (typed) (note "Regular: ich kaufe, du kaufst, er kauft."))
(card "der Pullover, die Pullover" "the sweater" (typed))
(card "die Jacke, die Jacken" "the jacket" (typed))
(card "die Hose, die Hosen" "the pants" (typed) (note "One pair of pants is eine Hose, singular."))
(card "das Hemd, die Hemden" "the shirt" (typed))
(card "der Schuh, die Schuhe" "the shoe" (typed))
(card "das Kleid, die Kleider" "the dress" (typed))
(card "leider" "unfortunately" (typed) (note "Wir haben leider keine Schuhe. We have no shoes, unfortunately."))
```

One pair of pants is **eine Hose**, singular. Two pairs are **zwei Hosen**. English says "pants" for one pair; German counts the pair as one thing.

```check
(choice
  (ask "How do you say: I am buying a pair of pants.")
  (right "Ich kaufe eine Hose.")
  (wrong "Ich kaufe einen Hose."
    "Die Hose is feminine, and feminine does not change in the accusative. It stays eine Hose.")
  (wrong "Ich kaufe Hosen."
    "Hosen means more than one pair. One pair is eine Hose.")
  (hint "Die Hose is feminine and means one pair."))
```

---

## Neuter ein stays ein

Masculine and neuter both say **ein** in the nominative. In the accusative they part: masculine becomes **einen**, neuter stays **ein**.

> Ich kaufe einen Schuh und ein Hemd.

So "einen" tells you the noun is masculine. If you are not sure of the gender, look it up: the article is part of the word.

```check
(choice
  (ask "Which is right?")
  (right "Er kauft ein Kleid.")
  (wrong "Er kauft einen Kleid."
    "Das Kleid is neuter. Only masculine ein becomes einen; neuter stays ein.")
  (wrong "Er kauft eine Kleid."
    "Eine is for feminine nouns. Das Kleid is neuter, so it is ein Kleid.")
  (hint "Das Kleid: which gender?"))
```

---

## keinen and meinen

**kein** and **mein**, **dein**, **Ihr** have the same endings as ein. So a masculine object takes **keinen**, **meinen**, **deinen**, **Ihren**.

| | nominative | accusative |
|---|---|---|
| masculine | kein Pullover | keinen Pullover |
| feminine | keine Jacke | keine Jacke |
| neuter | kein Hemd | kein Hemd |
| plural | keine Schuhe | keine Schuhe |

> Ich habe keinen Pullover.

> Ich suche meinen Bruder.

```check
(text
  (ask "Der Hund is masculine. Ich habe ___ Hund. Type the missing word (no).")
  (accept "keinen")
  (wrong-if "kein" "Kein is the nominative. Der Hund is the object of habe, so masculine kein becomes keinen.")
  (wrong-if "nicht" "With a noun, German says no with kein, and it takes the case ending: keinen Hund.")
  (hint "kein works like ein. What does ein become for a masculine object?"))
```

---

## Plurals

There is no plural of ein. For more than one, you use no article, or a number. **keine** and **meine** have a plural, and it does not change.

> Ich kaufe Schuhe. Ich kaufe zwei Hemden. Ich habe keine Schuhe.

```check
(choice
  (ask "How do you say: He has no shoes.")
  (right "Er hat keine Schuhe.")
  (wrong "Er hat keinen Schuhe."
    "Keinen is only for a masculine noun in the singular. Die Schuhe is plural, and plural keine does not change.")
  (wrong "Er hat nicht Schuhe."
    "With a noun, German says no with kein. Er hat keine Schuhe.")
  (hint "Schuhe is plural. Does the plural change in the accusative?"))
```

---

## A worked example

```example
(example
  (problem "Say in German: I need a sweater and a jacket.")
  (step "Subject and verb: ich brauche.")
  (step "der Pullover is masculine, so ein becomes einen: einen Pullover.")
  (step "die Jacke is feminine, so eine stays eine: eine Jacke.")
  (answer "Ich brauche einen Pullover und eine Jacke."))
```

---

## Now you finish one

Say: You (du) need a shirt. **Du brauchst ___ Hemd.**

```check
(text
  (ask "Type the missing word.")
  (accept "ein")
  (wrong-if "einen" "Das Hemd is neuter. Only masculine changes to einen; neuter stays ein.")
  (wrong-if "eine" "Eine is feminine. Das Hemd is neuter: ein Hemd.")
  (hint "Das Hemd: which gender? Does it change?"))
```

---

## In a shop

Mia is in a shop. The seller says Sie to her.

> Verkäufer (seller): Guten Tag! Was suchen Sie?

> Mia: Ich suche einen Pullover.

> Verkäufer: Hier, der Pullover ist schön.

> Mia: Ja! Ich kaufe den Pullover. Und ich brauche Schuhe.

> Verkäufer: Wir haben leider keine Schuhe.

```check
(choice
  (ask "What does Mia buy?")
  (right "a sweater")
  (wrong "shoes"
    "She needs shoes, but the shop has none: Wir haben leider keine Schuhe.")
  (wrong "a jacket"
    "Nobody says Jacke. Mia says: Ich kaufe den Pullover.")
  (hint "Find the line with kaufe."))
```

---

## Practice

```check
(text
  (ask "Ich suche ___ Vater. Type the missing word (my).")
  (accept "meinen")
  (wrong-if "mein" "Mein is the nominative. Der Vater is the object of suche, so mein becomes meinen, like einen.")
  (wrong-if "meine" "Meine is for feminine and plural nouns. Der Vater is masculine: meinen Vater.")
  (hint "mein works like ein."))
```

```check
(choice
  (ask "Which sentence is right?")
  (right "Hast du einen Stift?")
  (wrong "Hast du ein Stift?"
    "Der Stift is masculine and the object of hast. Masculine ein becomes einen.")
  (wrong "Hast du eine Stift?"
    "Eine is for feminine nouns. Der Stift is masculine, so the object is einen Stift.")
  (hint "Der Stift is masculine."))
```

```check
(choice
  (ask "Ein Junge kauft einen Ball. Which word is the subject?")
  (right "ein Junge")
  (wrong "einen Ball"
    "Einen shows the accusative, the case of the object. The boy is the one who buys: ein Junge, in the nominative.")
  (hint "Which article has the accusative ending -en?"))
```

```check
(text
  (ask "Ich habe ___ Jacke. Type the missing word (no).")
  (accept "keine")
  (wrong-if "keinen" "Die Jacke is feminine. Feminine does not change in the accusative: keine Jacke.")
  (wrong-if "kein" "Kein is for masculine and neuter nouns. Die Jacke is feminine: keine Jacke.")
  (hint "Die Jacke is feminine."))
```

Now you can use einen, keinen and meinen for a masculine object, and keep eine, ein and keine as they are.
