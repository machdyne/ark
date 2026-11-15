# At the market

```lesson
(objective "Buy food at a market with quantities and the phrases of a shop.")
(minutes 25)
```

In this lesson you buy food at a market: **Ich hätte gern ein Kilo Tomaten, bitte.**

```cards
(card "der Markt, die Märkte" "the market" (typed))
(card "der Laden, die Läden" "the store" (typed) (note "Also: the shop."))
(card "die Tomate, die Tomaten" "the tomato" (typed))
(card "das Kilo" "the kilo" (typed) (note "A kilogram. zwei Kilo: no plural ending after a number"))
(card "der Liter" "the liter" (typed))
(card "die Flasche, die Flaschen" "the bottle" (typed))
```

Germany and Austria use the metric system: food is sold by the kilogram (kilo) and the liter. 1 kilogram is about 2.2 pounds, and 1 liter is a little more than 1 US quart.

```check
(choice
  (ask "At a market you ask for ein Kilo Äpfel. About how much is that?")
  (right "about 2 pounds")
  (wrong "about 1 pound"
    "A kilogram is about 2.2 pounds, more than twice a pound.")
  (wrong "about 10 pounds"
    "That is far too much. A kilogram is about 2.2 pounds.")
  (hint "1 kilogram is about 2.2 pounds."))
```

```sources
(source "NIST, Special Publication 811, Guide for the Use of the International System of Units: kilogram, liter, and conversion factors")
```

---

## No word for "of"

English says "a kilo **of** tomatoes". German puts the food straight after the amount:

> ein Kilo Tomaten, ein Liter Milch, eine Flasche Wasser

After a number, **Kilo** and **Liter** take no plural ending. **Flasche** is feminine and does take one:

> zwei Kilo Äpfel, drei Liter Milch, zwei Flaschen Saft

```check
(choice
  (ask "How do you say: two bottles of water?")
  (right "zwei Flaschen Wasser")
  (wrong "zwei Flasche Wasser"
    "Feminine measure words take the plural after a number: zwei Flaschen.")
  (wrong "zwei Flaschen von Wasser"
    "German needs no word for of here: zwei Flaschen Wasser.")
  (hint "Flasche is feminine, and German adds no word for of."))
```

```sources
(source "Duden, Die Grammatik (Duden volume 4): measure words after numbers (zwei Kilo, zwei Flaschen)")
```

---

## The phrases of a shop

```cards
(card "Ich hätte gern ..." "I would like ..." (note "Polite, for shops and cafés. The thing is in the accusative: Ich hätte gern einen Apfel."))
(card "Sonst noch etwas?" "Anything else?" (typed))
(card "Das ist alles." "That is all.")
(card "Das macht ..." "That comes to ... (the total)")
```

**Ich hätte gern** is as polite as **Ich möchte**. Both are right in a shop.

```check
(text
  (ask "Ich hätte gern ___ Apfel. Type the missing word (an).")
  (accept "einen")
  (wrong-if "ein" "Der Apfel is what you would like, the object, so masculine ein becomes einen.")
  (hint "der Apfel, as an object."))
```

---

## A worked example

```example
(example
  (problem "Ask for three liters of milk, politely.")
  (step "Start: Ich hätte gern ...")
  (step "The amount: drei Liter. Liter takes no plural ending.")
  (step "The food, with no word for of: Milch.")
  (answer "Ich hätte gern drei Liter Milch, bitte."))
```

---

## Now you finish one

Ask for two kilos of tomatoes. **Ich hätte gern zwei ___ Tomaten.**

```check
(text
  (ask "Type the missing word.")
  (accept "Kilo")
  (wrong-if "Kilos" "After a number, Kilo takes no plural ending: zwei Kilo.")
  (hint "Kilo after a number."))
```

---

## At the market

> Verkäufer (seller): Guten Morgen! Was möchten Sie?

> Frau Klein: Ich hätte gern ein Kilo Tomaten.

> Verkäufer: Gern. Sonst noch etwas?

> Frau Klein: Ja, sechs Eier und eine Flasche Apfelsaft.

> Verkäufer: Das macht 7,80 €.

> Frau Klein: Hier, bitte. Danke! Auf Wiedersehen!

```check
(choice
  (ask "What does Frau Klein buy?")
  (right "tomatoes, eggs and apple juice")
  (wrong "tomatoes, apples and juice"
    "Apfelsaft is one word: apple juice. She buys no apples.")
  (wrong "tomatoes and eggs"
    "She also asks for eine Flasche Apfelsaft.")
  (hint "Read both of her orders."))
```

```check
(number
  (ask "How many eggs does she buy?")
  (answer 6)
  (wrong-if 1 "Read again: sechs Eier.")
  (hint "Find the number before Eier."))
```

---

## Practice

```check
(choice
  (ask "The seller asks: Sonst noch etwas? You want nothing more. What do you say?")
  (right "Nein, danke. Das ist alles.")
  (wrong "Ja, danke. Das ist alles."
    "Ja means you want something more. Say nein and das ist alles.")
  (wrong "Das macht alles."
    "Das macht ... is what the seller says with the total.")
  (hint "Anything else? - No, that is all."))
```

```check
(text
  (ask "Ask for a bottle of water: Ich hätte gern ___ Flasche Wasser.")
  (accept "eine")
  (wrong-if "einen" "Die Flasche is feminine, and feminine eine does not change.")
  (wrong-if "ein" "Die Flasche is feminine: eine Flasche.")
  (hint "die Flasche is feminine."))
```

```check
(number
  (ask "One kilo of apples costs 3 euros. What do 2 kilos cost, in euros?")
  (answer 6) (unit "€") (from "2 * 3")
  (wrong-if 5 "One kilo is 3 euros. Two kilos are 3 + 3.")
  (hint "Twice 3 euros."))
```

```check
(choice
  (ask "Which is right?")
  (right "Ich hätte gern zwei Kilo Äpfel.")
  (wrong "Ich hätte gern zwei Kilos Äpfel."
    "After a number, Kilo takes no plural ending.")
  (wrong "Ich hätte gern zwei Kilo Apfel."
    "Two kilos are many apples, so use the plural: Äpfel.")
  (hint "Kilo has no plural ending after a number, but the apples are plural."))
```

Now you can ask for food by the kilo, the liter and the bottle and use the phrases of a shop.
