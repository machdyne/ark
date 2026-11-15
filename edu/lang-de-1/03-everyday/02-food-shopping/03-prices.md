# Prices

```lesson
(objective "Read, write and say prices in euros with the decimal comma, and ask what something costs.")
(minutes 25)
(keywords "decimal comma")
```

In this lesson you ask what something costs and understand the answer: **Was kostet das? - Zwei Euro fünfzig.**

Germany and Austria pay in euros. One euro has 100 cents. In German a price is written like this:

> 2,50 €

German writes a comma where English writes a point. This comma between the whole euros and the cents is the **decimal comma**. 2,50 € is two euros and fifty cents. The euro sign usually comes after the number in Germany, with a space.

```check
(choice
  (ask "A sign says: Brot 3,20 €. What does the bread cost?")
  (right "3 euros and 20 cents")
  (wrong "320 euros"
    "The comma is not a thousands mark. It is the decimal comma: 3 euros, 20 cents.")
  (wrong "3 euros and 2 cents"
    "After the comma there are two digits for the cents: 20 cents. 2 cents would be 3,02 €.")
  (hint "German writes 3,20 where English writes 3.20."))
```

```sources
(source "Duden, Die deutsche Rechtschreibung: writing numbers and amounts of money")
(source "Goethe-Institut, Goethe-Zertifikat A1: Start Deutsch 1, word list (Wortliste): Euro, Cent, kosten")
```

---

## Saying a price

Say the euros, then the word **Euro**, then the cents. You leave out the word Cent:

> 2,50 € - zwei Euro fünfzig

> 9,99 € - neun Euro neunundneunzig

> 1,00 € - ein Euro

Under one euro, say cents: 0,80 € is **achtzig Cent**. After a number, Euro and Cent have no plural ending: **zwanzig Euro**.

```cards
(card "der Euro" "the euro" (typed) (note "zwei Euro: no plural ending after a number"))
(card "der Cent" "the cent" (typed))
(card "das Geld" "the money" (typed))
```

```check
(choice
  (ask "How do you say 4,30 €?")
  (right "vier Euro dreißig")
  (wrong "vier Euros dreißig"
    "After a number, Euro takes no plural ending: vier Euro.")
  (wrong "vier Komma drei Euro"
    "That is how you read a number in math. For a price, say euros, then cents: vier Euro dreißig.")
  (hint "Euros, the word Euro, then the cents."))
```

---

## What does it cost?

```cards
(card "kosten" "to cost" (typed))
(card "Was kostet ...?" "What does ... cost?")
(card "teuer" "expensive" (typed))
(card "billig" "cheap" (typed))
```

The verb agrees with the thing: one thing **kostet**, more than one **kosten**.

> Was kostet der Käse? - Er kostet 3,50 €.

> Was kosten die Äpfel? - Sie kosten 2,00 €.

```check
(choice
  (ask "You want to know the price of the shoes. Which question is right?")
  (right "Was kosten die Schuhe?")
  (wrong "Was kostet die Schuhe?"
    "Die Schuhe is plural, the subject of the verb. A plural subject takes kosten.")
  (wrong "Was kostest die Schuhe?"
    "Kostest is the du form. The shoes are plural: kosten.")
  (hint "die Schuhe is plural."))
```

---

## A worked example

```example
(example
  (problem "Say the price 15,40 € in words.")
  (step "The euros: 15 is fünfzehn.")
  (step "Then the word Euro, with no plural ending.")
  (step "The cents: 40 is vierzig. Leave out the word Cent.")
  (answer "fünfzehn Euro vierzig"))
```

---

## Now you finish one

The jacket costs sixty-five euros and ninety cents. Write the price as a German shop writes it.

```check
(text
  (ask "Type the price with a decimal comma, e.g. 2,50 €.")
  (accept "65,90 €")
  (accept "65,90")
  (accept "65,90€")
  (accept "65,90 Euro")
  (accept "65,90 EUR")
  (accept "€ 65,90")
  (wrong-if "65.90 €" "In German the decimal comma separates euros and cents: 65,90 €.")
  (wrong-if "65.90" "Use the decimal comma: 65,90 €.")
  (hint "Euros, a comma, two digits for the cents."))
```

---

## In a shop

> Kunde (customer): Entschuldigung (excuse me), was kostet der Pullover?

> Verkäuferin (seller): Der Pullover kostet 49,00 €.

> Kunde: Oh, das ist teuer! Und das Hemd?

> Verkäuferin: Das Hemd kostet 19,99 €.

> Kunde: Das ist billig. Ich kaufe das Hemd.

```check
(choice
  (ask "What does the customer buy?")
  (right "the shirt, for 19,99 €")
  (wrong "the sweater, for 49,00 €"
    "The customer finds the sweater teuer, expensive, and buys das Hemd.")
  (wrong "the sweater and the shirt"
    "He says only: Ich kaufe das Hemd.")
  (hint "Find kaufe."))
```

---

## Practice

```check
(number
  (ask "Der Käse kostet 3,50 €. Das Brot kostet 2,50 €. How many euros do they cost together? (Type a whole number.)")
  (answer 6) (unit "€") (from "3.50 + 2.50")
  (wrong-if 5 "Add the cents too: 50 cents and 50 cents make one more euro.")
  (hint "50 cents + 50 cents = 1 euro."))
```

```check
(choice
  (ask "A sign says 0,90 €. How do you say it?")
  (right "neunzig Cent")
  (wrong "null Euro neunzig"
    "Under one euro, Germans just say the cents: neunzig Cent.")
  (wrong "neun Euro"
    "0,90 € is less than one euro: 90 cents.")
  (hint "It is less than one euro."))
```

```check
(choice
  (ask "Die Äpfel kosten 1,00 €. Das ist ...")
  (right "billig")
  (wrong "teuer"
    "One euro for apples is not much money. Teuer means expensive; billig means cheap.")
  (hint "Is one euro a lot or a little?"))
```

```check
(text
  (ask "Ask what the bread costs: Was ___ das Brot?")
  (accept "kostet")
  (wrong-if "kosten" "Das Brot is one thing, so the verb is kostet.")
  (wrong-if "kostest" "Kostest is the du form. For das Brot (es) it is kostet.")
  (hint "das Brot is es: es kostet."))
```

Now you can read, write and say prices with the decimal comma and ask Was kostet ...?
