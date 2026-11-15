# Where are you from?

```lesson
(objective "Say which country you come from and ask others.")
(minutes 20)
```

In this lesson you learn to say where you come from, and to ask others.

## Ich komme aus ...

**Ich komme aus ...** means I come from ... Put the country (or town) after it:

- Ich komme aus Kanada.
- Ich komme aus Wien.

```check
(text
  (ask "Say: I come from Germany. (Germany is Deutschland.)")
  (accept "Ich komme aus Deutschland")
  (accents nearly)
  (wrong-if "Ich komme von Deutschland" "von is a word for from too, but for your country German uses aus: Ich komme aus Deutschland.")
  (wrong-if "Ich komme aus Deutsch" "Deutsch is the language. The country is Deutschland.")
  (hint "Ich komme aus, then the country."))
```

---

## Asking

| | du | Sie |
|---|---|---|
| Where are you from? | Woher kommst du? | Woher kommen Sie? |

**woher** means where from. It is not wo (where): wo asks where something is, woher where it comes from.

```check
(choice
  (ask "You want to know where your new friend Tom is from. What do you ask?")
  (right "Woher kommst du?")
  (wrong "Wo kommst du?"
    "wo asks where something is now. To ask where someone is from, use woher: Woher kommst du?")
  (wrong "Woher kommen Sie?"
    "That is the Sie form. Tom is your friend: Woher kommst du?")
  (hint "Where from is woher; a friend is du."))
```

---

## Countries

Many country names are close to English, but spelled the German way:

| German | English |
|---|---|
| Deutschland | Germany |
| Österreich | Austria |
| England | England |
| Kanada | Canada |
| Australien | Australia |

Others: Irland (Ireland), Schottland (Scotland), Neuseeland (New Zealand), Indien (India), Südafrika (South Africa), Nigeria, Großbritannien (Great Britain).

```check
(text
  (ask "Type the German name of Canada.")
  (accept "Kanada")
  (accents nearly)
  (wrong-if "Canada" "German writes this k sound with K: Kanada.")
  (hint "Like English, but with K."))
```

---

## aus der Schweiz, aus den USA

Most countries have no der, die or das. A few do, and then the phrase changes:

- die Schweiz: Ich komme **aus der Schweiz**.
- die USA: Ich komme **aus den USA**. (Many people also say aus Amerika.)

Learn these two as whole phrases.

```check
(choice
  (ask "How do you say I come from Switzerland?")
  (right "Ich komme aus der Schweiz.")
  (wrong "Ich komme aus Schweiz."
    "Schweiz is one of the few countries with die. With aus it becomes aus der Schweiz.")
  (wrong "Ich komme aus die Schweiz."
    "After aus, die Schweiz becomes der Schweiz: aus der Schweiz. Learn it as a phrase.")
  (hint "Switzerland is die Schweiz; after aus, die changes."))
```

```sources
(source "Duden, Die Grammatik: country names with and without the article (die Schweiz, die USA)")
(source "Goethe-Institut, Goethe-Zertifikat A1: Start Deutsch 1, Wortliste: kommen (aus), woher")
```

---

## Your words

```cards
(card "Ich komme aus ..." "I come from ...")
(card "Woher kommst du?" "Where are you from?" (note "with du"))
(card "Woher kommen Sie?" "Where are you from?" (note "with Sie"))
(card "Deutschland" "Germany" (typed))
(card "England" "England" (typed))
(card "Kanada" "Canada" (typed))
(card "Australien" "Australia" (typed))
(card "aus der Schweiz" "from Switzerland")
(card "aus den USA" "from the USA")
```

```check
(text
  (ask "Ask Frau Berger where she is from.")
  (accept "Woher kommen Sie")
  (accents nearly)
  (wrong-if "Woher kommst du" "That is the du form. With Frau Berger, use Sie: Woher kommen Sie?")
  (wrong-if "Wo kommen Sie" "To ask where from, use woher: Woher kommen Sie?")
  (hint "Woher, then the Sie form."))
```

---

## Read: at a summer school

- **Lea:** Woher kommst du, Tom?
- **Tom:** Ich komme aus Kanada. Und du?
- **Lea:** Aus Deutschland, aus München.
- **Tom:** Und Sie, Frau Smith? Woher kommen Sie?
- **Frau Smith:** Ich komme aus den USA, aus Boston.
- **Ben:** Ich komme auch aus Nordamerika. (Nordamerika = North America)

```check
(choice
  (ask "Where is Lea from?")
  (right "From Munich, in Germany")
  (wrong "From Canada"
    "That is Tom: Ich komme aus Kanada. Lea says: Aus Deutschland, aus München.")
  (wrong "From Boston"
    "That is Frau Smith, from the USA. Lea is from München, Munich.")
  (hint "Read Lea's second line."))
```

```check
(choice
  (ask "Why does Tom say Sie to Frau Smith but du to Lea?")
  (right "Frau Smith is an adult he calls Frau Smith; Lea is someone his age")
  (wrong "Frau Smith is from the USA"
    "Where someone comes from does not decide du or Sie. Tom uses Frau and the family name with her, which goes with Sie.")
  (hint "Think about what you learned in the du and Sie lesson."))
```

---

## Saying where you are from

```example
(example
  (problem "Tell a friend you are from Australia, and ask the same back.")
  (step "Ich komme aus, then the country: Ich komme aus Australien.")
  (step "A friend is du: Und du?")
  (answer "Ich komme aus Australien. Und du?"))
```

```example
(example
  (problem "Herr Wolf asks: Woher kommen Sie? You are from the USA. Answer.")
  (step "The USA is one of the countries with der, die or das.")
  (step (choice (ask "Which phrase is right?")
    (right "aus den USA")
    (wrong "aus USA"
      "The USA has die: with aus it becomes aus den USA. Or say aus Amerika.")))
  (answer "Ich komme aus den USA."))
```

---

## Practice

```check
(text
  (ask "Type the German name of Germany.")
  (accept "Deutschland")
  (accents nearly)
  (wrong-if "Deutsch" "Deutsch is the language. The country has land at the end: Deutschland.")
  (wrong-if "Germany" "That is English. In German: Deutschland.")
  (hint "Deutsch, then land."))
```

---

```check
(text
  (ask "Say: I come from Austria.")
  (accept "Ich komme aus Österreich")
  (accept "Ich komme aus Oesterreich")
  (accents nearly)
  (wrong-if "Ich komme aus Austria" "Austria is the English name. In German: Österreich.")
  (hint "Austria is Österreich."))
```

---

```check
(choice
  (ask "Which country needs der in Ich komme aus ___?")
  (right "Schweiz: aus der Schweiz")
  (wrong "Kanada: aus der Kanada"
    "Kanada has no der, die or das: Ich komme aus Kanada.")
  (wrong "England: aus der England"
    "England has no der, die or das: Ich komme aus England.")
  (hint "Only a few countries have der, die or das."))
```

So: say Ich komme aus ..., ask Woher kommst du? or Woher kommen Sie?, and remember aus der Schweiz and aus den USA.
