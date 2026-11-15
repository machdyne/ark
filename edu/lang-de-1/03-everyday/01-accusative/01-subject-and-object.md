# Subject and object

```lesson
(objective "Tell the subject from the object in a German sentence and change der to den for a masculine object.")
(minutes 25)
(keywords "object (of a verb)" "case (of a noun)" "nominative" "accusative")
```

In this lesson you learn to say what someone sees, needs or looks for. For that, German changes **der** to **den**.

Look at this sentence:

> Der Junge sieht den Hund. (The boy sees the dog.)

You know the subject: the person or thing that does the action. Here it is **der Junge**. The dog does nothing. It is what the boy sees.

The person or thing that the action is done to is the **object** of the verb. In this sentence, the object is **den Hund**.

```check
(choice
  (ask "Die Frau sieht den Mann. Who does the seeing?")
  (right "die Frau (the woman)")
  (wrong "den Mann (the man)"
    "The man is what she sees, so he is the object. The one who sees is the subject: die Frau.")
  (hint "The subject does the action. Who sees?"))
```

---

## Cases

In English, "he" becomes "him" when it is an object: "He sees the dog" but "The dog sees him". German does the same with its articles.

A **case** is the form a noun and its article take to show the noun's job in the sentence. German has four cases. In German 1 you meet two:

- The **nominative** is the case of the subject. It is the form you know: der, die, das.
- The **accusative** is the case of most objects. Most verbs put their object in the accusative.

```check
(choice
  (ask "Der Junge sieht den Hund. Which word is in the accusative?")
  (right "den Hund")
  (wrong "der Junge"
    "Der Junge is the subject, so it is in the nominative. The object, den Hund, is in the accusative.")
  (wrong "sieht"
    "Sieht is the verb. Cases are forms of nouns and their articles, not of verbs.")
  (hint "The accusative is the case of the object. What does the boy see?"))
```

```sources
(source "Duden, Die Grammatik (Duden volume 4): the four cases, nominative and accusative")
```

---

## Only der changes

Here is the good news. In the accusative, only the masculine **der** changes. It becomes **den**. Feminine, neuter and plural stay as they are.

| | nominative | accusative |
|---|---|---|
| masculine | der Hund | den Hund |
| feminine | die Katze | die Katze |
| neuter | das Buch | das Buch |
| plural | die Bücher | die Bücher |

> Ich sehe den Hund, die Katze und das Buch.

So you need the gender of each noun. That is why you learn every noun with its article.

```check
(text
  (ask "Der Tisch is masculine. Ich sehe ___ Tisch. Type the missing word.")
  (accept "den")
  (wrong-if "der" "Der is the nominative, for the subject. Here der Tisch is the object of sehe, so it takes the accusative: den.")
  (wrong-if "dem" "Dem is a different case, for German 2. The object of sehen is in the accusative: den.")
  (hint "Is der Tisch the subject or the object here?")
  (hint "A masculine object: der becomes ..."))
```

---

## New words

Two new verbs that take an object in the accusative, kennen again (you know it from part 2), and three masculine nouns. The verbs are regular: ich suche, du suchst, er sucht.

```cards
(card "suchen" "to look for" (typed) (note "Ich suche den Schlüssel. No word for 'for': suchen takes the object straight."))
(card "brauchen" "to need" (typed))
(card "kennen" "to know (a person or place)" (note "Review. Ich kenne den Mann. For knowing a fact German uses another verb, wissen."))
(card "der Stift, die Stifte" "the pen" (typed) (note "Any pen or pencil."))
(card "der Ball, die Bälle" "the ball" (typed))
(card "der Schlüssel, die Schlüssel" "the key" (typed))
```

English says "look **for** the key". German says **Ich suche den Schlüssel**, with no word for "for".

```check
(choice
  (ask "How do you say: I am looking for the pen.")
  (right "Ich suche den Stift.")
  (wrong "Ich suche für den Stift."
    "German does not add a word for 'for' here. Suchen takes its object straight: Ich suche den Stift.")
  (wrong "Ich suche der Stift."
    "Der Stift is the object, so it is in the accusative. Masculine der becomes den.")
  (hint "Suchen needs no extra word, and the object is masculine."))
```

---

## The order can change, the case cannot

Because the article shows the job, German can put the object first. The verb stays second:

> Den Hund sieht der Junge. (The boy sees the dog.)

Den shows that the dog is the object, even at the start. This order puts weight on the dog.

```check
(choice
  (ask "Den Lehrer kennt der Junge. What does it mean?")
  (right "The boy knows the teacher.")
  (wrong "The teacher knows the boy."
    "Den Lehrer is in the accusative, so the teacher is the object, even though he comes first. Der Junge is the subject.")
  (hint "Look at the articles, not the order. Which noun has den?"))
```

---

## A worked example

```example
(example
  (problem "Say in German: The man needs the computer.")
  (step "The subject is the man: der Mann, in the nominative.")
  (step "The verb is brauchen. For er (der Mann) it is braucht.")
  (step "The object is the computer: der Computer is masculine, so der becomes den.")
  (answer "Der Mann braucht den Computer."))
```

---

## Now you finish one

The woman is looking for the key. **Die Frau sucht ___ Schlüssel.**

```check
(text
  (ask "Type the missing word.")
  (accept "den")
  (wrong-if "der" "Der Schlüssel is what she looks for, so it is the object. A masculine object takes den.")
  (wrong-if "die" "Die goes with die Frau, the subject. Der Schlüssel is masculine, so as an object it is den Schlüssel.")
  (hint "Der Schlüssel is masculine. Is it the subject or the object?"))
```

---

## A short scene

Lena and her brother are at home.

> Lena: Tom, ich suche den Schlüssel.

> Tom: Den Schlüssel? Er ist hier.

> Lena: Danke! Und ich brauche den Stift.

> Tom: Der Stift ist da. Und das Handy?

> Lena: Das Handy habe ich. Tschüss!

```check
(choice
  (ask "What is Lena looking for first?")
  (right "the key")
  (wrong "the pen"
    "She needs the pen too, but first she says: Ich suche den Schlüssel. Der Schlüssel is the key.")
  (wrong "the phone"
    "Tom asks about the phone at the end, and she has it. She is looking for den Schlüssel, the key.")
  (hint "Read her first line."))
```

---

## Practice

```check
(choice
  (ask "Which sentence is right?")
  (right "Ich kenne den Lehrer.")
  (wrong "Ich kenne der Lehrer."
    "Der Lehrer is the object of kenne. A masculine object is in the accusative: den Lehrer.")
  (wrong "Ich kennen den Lehrer."
    "Kennen is the infinitive. With ich, the verb ends in -e: ich kenne.")
  (hint "Find the object, then check its article."))
```

```check
(choice
  (ask "Er braucht die Lampe. Why is it die, not den?")
  (right "die Lampe is feminine, and feminine does not change")
  (wrong "die Lampe is the subject"
    "Er is the subject. Die Lampe is the object, but only masculine der changes in the accusative.")
  (wrong "brauchen does not take an object"
    "Brauchen does take an object: what you need. The object here is feminine, so its article stays die.")
  (hint "Which gender changes in the accusative?"))
```

```check
(text
  (ask "Der Junge sucht ___ Ball. Type the missing word.")
  (accept "den")
  (wrong-if "der" "The boy is the subject. The ball is what he looks for, the object, so der Ball becomes den Ball.")
  (hint "Der Ball is masculine and it is the object."))
```

```check
(text
  (ask "Ich sehe ___ Kind. Type the missing word. (das Kind)")
  (accept "das")
  (wrong-if "den" "Only masculine changes. Das Kind is neuter, so the accusative is still das Kind.")
  (wrong-if "dem" "Dem is a case for German 2. A neuter object in the accusative keeps das.")
  (hint "Das Kind is neuter. Does neuter change?"))
```

Now you can find the object of a verb and put a masculine object in the accusative with den.
