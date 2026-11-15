# The seasons

```lesson
(objective "Name the seasons and say what the weather is like in each.")
(minutes 20)
```

In this lesson you name the seasons and talk about the weather: **Im Winter schneit es.** (In winter it snows.)

```cards
(card "die Jahreszeit, die Jahreszeiten" "the season" (typed) (note "das Jahr + die Zeit"))
(card "der Frühling" "spring" (typed))
(card "der Sommer" "summer" (typed))
(card "der Herbst" "fall" (typed) (note "Also: autumn."))
(card "der Winter" "winter" (typed))
```

Like the months, the seasons are masculine, and you say **im**: **im Sommer**, **im Winter**.

In Germany, Austria and Switzerland, spring is about March to May, summer June to August, fall September to November and winter December to February. South of the equator, in Australia for example, the seasons come the other way round.

```check
(choice
  (ask "In Germany, which season is der Juli in?")
  (right "im Sommer")
  (wrong "im Winter"
    "In Germany, July is in summer. In Australia it would be winter, but the question is about Germany.")
  (wrong "im Frühling"
    "Spring in Germany is about March to May. July is summer.")
  (hint "June to August."))
```

---

## Weather words

You know kalt and warm. Here are **das Wetter** (the weather), **heiß** (hot) and **die Sonne** (the sun). Rain and snow are verbs with **es**:

```cards
(card "das Wetter" "the weather" (typed) (note "Wie ist das Wetter? What is the weather like?"))
(card "heiß" "hot" (typed))
(card "die Sonne, die Sonnen" "the sun" (typed))
(card "Es regnet." "It is raining." (typed))
(card "Es schneit." "It is snowing." (typed))
(card "der Grad" "the degree" (typed) (note "zwanzig Grad: no plural ending after a number"))
```

> Wie ist das Wetter? - Es regnet. / Die Sonne scheint. (shines)

```check
(choice
  (ask "How do you say: It is snowing.")
  (right "Es schneit.")
  (wrong "Es ist Schnee."
    "German uses a verb with es, like English: Es schneit.")
  (wrong "Es regnet."
    "Es regnet is rain. Snow is Es schneit.")
  (hint "es + a verb"))
```

---

## Degrees

German-speaking countries measure temperature in degrees Celsius. **Es sind zwanzig Grad** is 20 °C, about 68 °F: warm. At 0 °C (32 °F) water freezes.

Notice **sind**: with a number of degrees, the verb is plural.

```check
(choice
  (ask "Es sind dreißig Grad. What is the weather like?")
  (right "hot")
  (wrong "cold"
    "These are degrees Celsius. 30 °C is about 86 °F: hot.")
  (wrong "freezing"
    "Water freezes at 0 °C. 30 °C is hot.")
  (hint "Celsius: 30 °C is about 86 °F."))
```

```sources
(source "NIST, Special Publication 811, Guide for the Use of the International System of Units: degree Celsius and conversion to degree Fahrenheit")
```

---

## Mir ist kalt

Remember: you say **Mir ist kalt** for "I am cold", not "Ich bin kalt". For the weather, use **es**: **Es ist kalt.** (It is cold.)

```check
(choice
  (ask "It is winter, and you are cold. What do you say?")
  (right "Mir ist kalt.")
  (wrong "Ich bin kalt."
    "Ich bin kalt is the English said word for word, and in German it says you are a cold person. For feeling cold, say Mir ist kalt.")
  (hint "The fixed phrase starts with Mir."))
```

---

## A worked example

```example
(example
  (problem "Say in German: In fall it rains.")
  (step "in a season: im Herbst.")
  (step "Put it first. The verb comes second: regnet.")
  (step "Then the subject es.")
  (answer "Im Herbst regnet es."))
```

---

## Now you finish one

Say: In summer it is hot. **Im Sommer ist ___ heiß.**

```check
(text
  (ask "Type the missing word.")
  (accept "es")
  (wrong-if "mir" "Mir ist heiß is about how you feel. For the weather, use es.")
  (wrong-if "er" "The weather uses es: Im Sommer ist es heiß.")
  (hint "the weather: es"))
```

---

## A postcard

Sara writes from her holiday in the mountains.

> Liebe Oma, (Dear) wie geht es dir? Hier ist es Winter. Es ist kalt: minus zehn Grad! Es schneit jeden Tag. (every day) Ich fahre Ski. (I ski) Das ist toll! Viele Grüße, Sara

```check
(choice
  (ask "What is the weather like where Sara is?")
  (right "cold, and it snows every day")
  (wrong "warm and sunny"
    "Sara writes: Es ist kalt: minus zehn Grad! Es schneit jeden Tag.")
  (wrong "it rains every day"
    "It snows, not rains: Es schneit jeden Tag.")
  (hint "Find kalt and schneit."))
```

---

## Practice

```check
(text
  (ask "Type the German for the season after Sommer.")
  (accept "Herbst")
  (accept "der Herbst")
  (wrong-if "Winter" "Winter comes after fall. After Sommer comes der Herbst.")
  (wrong-if "Frühling" "Frühling is spring, before Sommer.")
  (hint "fall"))
```

```check
(choice
  (ask "Which is right?")
  (right "Im Frühling ist es warm.")
  (wrong "Am Frühling ist es warm."
    "With seasons, use im, as with months: im Frühling.")
  (wrong "Im Frühling es ist warm."
    "After im Frühling, the verb comes second: ist es.")
  (hint "im + season, verb second."))
```

```check
(number
  (ask "How many seasons are there? Type the number.")
  (answer 4)
  (hint "Frühling, Sommer, Herbst, Winter"))
```

Now you can name the seasons with im, and say what the weather is like with es.
