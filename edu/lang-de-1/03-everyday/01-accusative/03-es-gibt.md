# es gibt

```lesson
(objective "Say what there is in a town with es gibt and the accusative.")
(minutes 20)
```

In this lesson you say what there is in a town: **Es gibt einen Park.** (There is a park.)

**es gibt** means "there is" or "there are". Two things to know:

- It is always **gibt**, for one thing or for many: Es gibt zwei Kinos.
- What there is, is the object of gibt, so it is in the accusative: Es gibt **einen** Park.

```check
(text
  (ask "Der Bahnhof is masculine. Es gibt ___ Bahnhof. Type the missing word (a).")
  (accept "einen")
  (wrong-if "ein" "What there is, is the object of gibt. So masculine ein becomes einen: Es gibt einen Bahnhof.")
  (hint "After es gibt, use the accusative."))
```

```sources
(source "Duden, Die Grammatik (Duden volume 4): es gibt with the accusative")
```

---

## In town

```cards
(card "es gibt" "there is" (typed) (note "Also: there are. Es gibt zwei Kinos."))
(card "der Park, die Parks" "the park" (typed))
(card "der Bahnhof, die Bahnhöfe" "the train station" (typed))
(card "das Kino, die Kinos" "the movie theater" (typed))
(card "die Bank, die Banken" "the bank" (typed) (note "The bank for money. A bench to sit on is also die Bank, but its plural is die Bänke."))
(card "der Supermarkt, die Supermärkte" "the supermarket" (typed))
(card "das Restaurant, die Restaurants" "the restaurant" (typed))
(card "das Museum, die Museen" "the museum" (typed))
(card "die Stadt, die Städte" "the town" (typed) (note "Also: the city."))
```

```check
(choice
  (ask "How do you say: There are two movie theaters.")
  (right "Es gibt zwei Kinos.")
  (wrong "Es geben zwei Kinos."
    "With es gibt, the verb stays gibt, even for many things. The subject is es, not the movie theaters.")
  (wrong "Es sind zwei Kinos."
    "To say that something is there in a place, German uses es gibt, not es sind.")
  (hint "es gibt is always gibt."))
```

---

## Questions and no

To ask, put **gibt** first: **Gibt es hier einen Supermarkt?** (Is there a supermarket here?)

To say no, use **kein**, with its accusative ending:

> Nein, hier gibt es keinen Supermarkt.

When the sentence starts with **hier**, the verb stays second and **es** comes after it: Hier **gibt es** ...

```check
(choice
  (ask "Which question is right?")
  (right "Gibt es hier ein Kino?")
  (wrong "Es gibt hier ein Kino?"
    "In a yes/no question the verb comes first: Gibt es hier ein Kino?")
  (wrong "Gibt es hier einen Kino?"
    "Das Kino is neuter, and neuter ein does not change. It is ein Kino.")
  (hint "Verb first in a yes/no question. And das Kino is neuter."))
```

---

## A worked example

```example
(example
  (problem "Say in German: There is no museum here.")
  (step "Start with hier, so the verb comes second and es after it: Hier gibt es ...")
  (step "das Museum is neuter. No is kein, and neuter kein does not change.")
  (answer "Hier gibt es kein Museum."))
```

---

## Now you finish one

Say: There is no park here. **Hier gibt es ___ Park.**

```check
(text
  (ask "Type the missing word.")
  (accept "keinen")
  (wrong-if "kein" "Der Park is masculine and the object of gibt, so kein becomes keinen.")
  (wrong-if "nicht" "With a noun, say no with kein: keinen Park.")
  (hint "Der Park is masculine. kein works like ein."))
```

---

## A small town

Jonas writes about his town.

> Meine Stadt ist klein, aber schön. (but) Es gibt einen Bahnhof, einen Park und ein Museum. Es gibt zwei Supermärkte und viele Restaurants. Aber es gibt kein Kino.

```check
(choice
  (ask "What is there NOT in Jonas's town?")
  (right "a movie theater")
  (wrong "a museum"
    "Jonas writes: einen Park und ein Museum. There is a museum.")
  (wrong "a supermarket"
    "There are two: zwei Supermärkte.")
  (hint "Look for kein."))
```

```check
(number
  (ask "How many supermarkets are there?")
  (answer 2)
  (wrong-if 1 "Read again: zwei Supermärkte. Supermärkte is the plural.")
  (hint "Find the word before Supermärkte."))
```

---

## Practice

```check
(text
  (ask "Gibt es hier ___ Bank? Type the missing word (a). (die Bank)")
  (accept "eine")
  (wrong-if "einen" "Die Bank is feminine. Feminine does not change in the accusative: eine Bank.")
  (wrong-if "ein" "Ein is for masculine and neuter. Die Bank is feminine: eine Bank.")
  (hint "Die Bank: feminine."))
```

```check
(choice
  (ask "Gibt es hier einen Bahnhof? - Nein, ... Which answer is right?")
  (right "Nein, hier gibt es keinen Bahnhof.")
  (wrong "Nein, hier gibt es keine Bahnhof."
    "Der Bahnhof is masculine. As the object of gibt it takes the accusative: keinen Bahnhof.")
  (wrong "Nein, hier es gibt keinen Bahnhof."
    "After hier, the verb must come second: hier gibt es.")
  (hint "Verb second after hier; der Bahnhof is masculine."))
```

```check
(choice
  (ask "Es gibt einen Park. What does it mean?")
  (right "There is a park.")
  (wrong "It gives a park."
    "Gibt comes from geben, to give, but es gibt is a fixed phrase. It means there is or there are.")
  (wrong "It is a park."
    "It is a park would be Es ist ein Park. Es gibt says that a park is there.")
  (hint "es gibt is a fixed phrase."))
```

Now you can say what there is and is not in a place with es gibt and the accusative.
