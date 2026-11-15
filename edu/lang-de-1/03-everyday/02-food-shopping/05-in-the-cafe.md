# In the café

```lesson
(objective "Order in a café with Sie and pay the bill.")
(minutes 25)
```

In this lesson you order in a café and pay: **Ich nehme eine Suppe. - Die Rechnung, bitte!**

```cards
(card "das Café, die Cafés" "the café" (typed))
(card "der Kuchen, die Kuchen" "the cake" (typed))
(card "das Stück, die Stücke" "the piece" (typed) (note "ein Stück Kuchen: a piece of cake, with no word for of"))
(card "die Suppe, die Suppen" "the soup" (typed))
(card "der Salat, die Salate" "the salad" (typed))
(card "bestellen" "to order" (typed) (note "Food and drink, in a café or a restaurant."))
```

A waiter and a guest who do not know each other say **Sie**. To order, you can say **Ich möchte ...**, **Ich hätte gern ...** or **Ich nehme ...** (I'll have ...). You know nehmen: ich nehme, du nimmst, er nimmt.

```check
(choice
  (ask "The waiter asks: Was möchten Sie? You want a piece of cake.")
  (right "Ich nehme ein Stück Kuchen, bitte.")
  (wrong "Ich nehme ein Stück von Kuchen, bitte."
    "Like ein Kilo Tomaten, German needs no word for of: ein Stück Kuchen.")
  (wrong "Ich nehme einen Stück Kuchen, bitte."
    "Das Stück is neuter, so ein does not change.")
  (hint "das Stück is neuter, and there is no word for of."))
```

---

## Ordering for two

When you order for yourself and a friend, use **wir**:

> Wir nehmen zwei Salate und ein Wasser.

**bestellen** means "to order" food. A waiter may ask: **Möchten Sie bestellen?** (Would you like to order?)

```check
(text
  (ask "Wir ___ eine Suppe. (bestellen) Type the form for wir.")
  (accept "bestellen")
  (wrong-if "bestellt" "Bestellt is for er or ihr. For wir, the verb ends in -en: bestellen.")
  (hint "wir: the -en form."))
```

---

## The bill

```cards
(card "die Rechnung, die Rechnungen" "the bill" (typed) (note "Also: the check."))
(card "bezahlen" "to pay" (typed))
(card "getrennt" "separately" (typed))
(card "Zusammen oder getrennt?" "Together or separately?")
(card "Zahlen, bitte!" "The bill, please!" (note "zahlen and bezahlen both mean to pay."))
```

To pay, call: **Die Rechnung, bitte!** or **Zahlen, bitte!**

When friends pay, the waiter often asks **Zusammen oder getrennt?** Each person can pay for their own food: **Getrennt, bitte.**

```check
(choice
  (ask "You want to pay only for your own drink. The waiter asks: Zusammen oder getrennt?")
  (right "Getrennt, bitte.")
  (wrong "Zusammen, bitte."
    "Zusammen means together: one person pays for everything. Getrennt means each pays for their own.")
  (hint "Separately is getrennt."))
```

---

## A worked example

```example
(example
  (problem "Order politely: a coffee and a piece of cake.")
  (step "A polite start: Ich hätte gern ...")
  (step "der Kaffee as an object: einen Kaffee.")
  (step "das Stück is neuter: ein Stück Kuchen.")
  (answer "Ich hätte gern einen Kaffee und ein Stück Kuchen."))
```

---

## Now you finish one

Ask for the bill, politely: **Die ___, bitte!**

```check
(text
  (ask "Type the missing word.")
  (accept "Rechnung")
  (wrong-if "Geld" "Geld is money. The bill is die Rechnung.")
  (hint "the bill: die R..."))
```

---

## In the café

> Kellner (waiter): Guten Tag! Möchten Sie bestellen?

> Anna: Ja. Ich nehme eine Suppe und ein Wasser.

> Max: Und ich hätte gern einen Salat und einen Saft.

> Kellner: Gern.

> Später (later). Max: Die Rechnung, bitte!

> Kellner: Zusammen oder getrennt?

> Anna: Zusammen, bitte. Ich bezahle.

```check
(choice
  (ask "Who pays?")
  (right "Anna pays for both.")
  (wrong "Max pays for both."
    "Max asks for the bill, but Anna says: Zusammen, bitte. Ich bezahle.")
  (wrong "Each pays for their own."
    "That would be getrennt. Anna says zusammen: together.")
  (hint "Read Anna's last line."))
```

```check
(choice
  (ask "What does Max eat?")
  (right "a salad")
  (wrong "a soup"
    "The soup is Anna's: Ich nehme eine Suppe.")
  (wrong "a piece of cake"
    "Nobody orders cake. Max says: einen Salat und einen Saft.")
  (hint "Find Max's order."))
```

---

## Practice

```check
(choice
  (ask "Which order is right?")
  (right "Ich nehme den Salat.")
  (wrong "Ich nehme der Salat."
    "Der Salat is what you take, the object, so der becomes den.")
  (wrong "Ich nehmen den Salat."
    "Nehmen is the infinitive. With ich it is nehme.")
  (hint "der Salat is the object, and check the verb's ending."))
```

```check
(text
  (ask "What is the plural of der Kuchen? Type it with die.")
  (accept "die Kuchen")
  (accept "Kuchen")
  (wrong-if "die Kuchens" "Der Kuchen does not change in the plural: die Kuchen.")
  (wrong-if "die Kuchenen" "Der Kuchen does not change in the plural: die Kuchen.")
  (hint "Like Brötchen, it does not change."))
```

```check
(choice
  (ask "You have finished and want to pay. What do you call to the waiter?")
  (right "Zahlen, bitte!")
  (wrong "Bestellen, bitte!"
    "Bestellen is to order food. To pay, call Zahlen, bitte! or Die Rechnung, bitte!")
  (wrong "Getrennt, bitte!"
    "Getrennt answers the waiter's question Zusammen oder getrennt? First you ask to pay.")
  (hint "to pay: zahlen or bezahlen."))
```

```check
(number
  (ask "Eine Suppe kostet 6 €, ein Wasser 2 €. You pay for both. How many euros?")
  (answer 8) (unit "€") (from "6 + 2")
  (hint "Add the two prices."))
```

Now you can order in a café with Sie, and ask for the bill together or separately.
