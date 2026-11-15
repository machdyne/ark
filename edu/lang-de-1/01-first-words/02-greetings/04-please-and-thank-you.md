# Please and thank you

```lesson
(objective "Say please, thank you, you're welcome, excuse me and sorry, and ask someone to say something again.")
(minutes 20)
```

In this lesson you learn the small polite words you need every day.

## Thank you

You know danke. For more thanks:

- **Danke schön.** Thank you very much.
- **Vielen Dank!** Many thanks!

All of them work with du and with Sie.

```check
(text
  (ask "Type the German for Many thanks!")
  (accept "Vielen Dank")
  (accents nearly)
  (wrong-if "Viele Dank" "It is Vielen Dank, with n. Learn it as a whole.")
  (wrong-if "Danke schön" "Danke schön is thank you very much. Many thanks is Vielen Dank.")
  (hint "Vielen, then Dank."))
```

---

## bitte

**bitte** has three jobs:

1. **please**: Wo ist das Hotel, bitte? (Where is the hotel, please?)
2. **you're welcome**, after someone says danke: Bitte! or **Bitte schön!**
3. **here you are**, when you hand something over: Bitte schön!

```check
(choice
  (ask "Someone says Danke! to you. What do you answer?")
  (right "Bitte!")
  (wrong "Danke!"
    "Danke is what they said: thanks. The answer, you're welcome, is Bitte! or Bitte schön!")
  (wrong "Tschüss!"
    "Tschüss is bye. To say you're welcome, answer Bitte!")
  (hint "The same word as please."))
```

---

## Excuse me and sorry

**Entschuldigung!** means excuse me. Say it to get someone's attention, or after a small mistake, like stepping on a foot.

**Es tut mir leid.** means I'm sorry. Say it when something is really sad or bad, or to say you regret something. To sad news, people often say **Das tut mir leid.** (I'm sorry to hear that.)

```check
(choice
  (ask "You want to ask a stranger in the street for the way. How do you start?")
  (right "Entschuldigung!")
  (wrong "Es tut mir leid."
    "Es tut mir leid says you are sorry about something. To get a stranger's attention, say Entschuldigung!")
  (wrong "Bitte schön!"
    "Bitte schön is you're welcome, or here you are. To get attention, say Entschuldigung!")
  (hint "Which one means excuse me?"))
```

---

## No problem, and pardon?

When someone says Entschuldigung! to you, you can answer **Kein Problem.** (No problem.)

When you did not hear or understand something, say **Wie bitte?** (Pardon? Sorry, what?) It is polite with du and with Sie.

```check
(choice
  (ask "Herr Wolf says something, and you did not hear it. What do you say?")
  (right "Wie bitte?")
  (wrong "Was?"
    "Was? means What? It works with friends, but it can sound rude. Wie bitte? is polite with everyone.")
  (wrong "Kein Problem."
    "Kein Problem answers an excuse me. If you did not hear, ask: Wie bitte?")
  (hint "It has the word for please in it."))
```

```sources
(source "Goethe-Institut, Goethe-Zertifikat A1: Start Deutsch 1, Wortliste (the A1 words and phrases)")
(source "Duden, entries bitte and Entschuldigung")
```

---

## Your words

```cards
(card "bitte" "please" (typed) (note "also: you're welcome"))
(card "Danke schön." "Thank you very much.")
(card "Vielen Dank!" "Many thanks!")
(card "Bitte schön." "You're welcome; here you are.")
(card "Entschuldigung!" "Excuse me!" (typed))
(card "Es tut mir leid." "I'm sorry.")
(card "Kein Problem." "No problem.")
(card "Wie bitte?" "Pardon? Sorry, what?")
```

```check
(text
  (ask "Type the German for please.")
  (accept "bitte")
  (accents nearly)
  (wrong-if "danke" "danke means thanks. please is bitte.")
  (wrong-if "bite" "Close: German writes two t's, which make the i short: bitte.")
  (hint "Five letters: b, i, t, t, e."))
```

---

## Read: at the hotel desk

- **Ben:** Entschuldigung! Wo ist das Taxi?
- **Frau Berger:** Wie bitte?
- **Ben:** Wo ist das Taxi, bitte?
- **Frau Berger:** Da, links!
- **Ben:** Vielen Dank!
- **Frau Berger:** Bitte schön!

(da = there; links = on the left)

```check
(choice
  (ask "Why does Ben ask a second time?")
  (right "Frau Berger did not hear or understand him")
  (wrong "She says no"
    "She says Wie bitte?, which means Pardon?. So Ben asks again.")
  (wrong "He forgot the word taxi"
    "Ben's question is the same both times. He asks again because she said Wie bitte?")
  (hint "What does Wie bitte? mean?"))
```

```check
(choice
  (ask "What does Frau Berger mean by Bitte schön! at the end?")
  (right "You're welcome")
  (wrong "Please"
    "bitte can mean please, but here it answers Ben's Vielen Dank. After thanks, Bitte schön means you're welcome.")
  (wrong "Here you are"
    "She is not handing anything over. She answers his thanks: you're welcome.")
  (hint "What did Ben say just before?"))
```

---

## Polite talk

```example
(example
  (problem "You bump into a man on the train. He says: Kein Problem. What did you say first?")
  (step "You made a small mistake.")
  (step "For a small mistake, say excuse me.")
  (answer "Entschuldigung!"))
```

```example
(example
  (problem "A woman hands you your bag, which you dropped. She says: Bitte schön! What do you say?")
  (step "She is giving you something: Bitte schön here means here you are.")
  (step (choice (ask "What do you say back?")
    (right "Danke schön!")
    (wrong "Bitte schön!"
      "She already said that: here you are. Now you thank her: Danke schön!")))
  (answer "Danke schön!"))
```

---

## Practice

```check
(text
  (ask "You did not understand. Ask politely: Pardon?")
  (accept "Wie bitte")
  (accents nearly)
  (wrong-if "Was" "Was? can sound rude. The polite way is Wie bitte?")
  (wrong-if "Bitte" "Close. Say Wie bitte? to ask someone to say it again.")
  (hint "Two words: how, then please."))
```

---

```check
(choice
  (ask "Your friend tells you that her cat is ill. What do you say?")
  (right "Oh, das tut mir leid.")
  (wrong "Entschuldigung!"
    "Entschuldigung is excuse me, for getting attention or a small mistake. For sad news, say es tut mir leid or das tut mir leid.")
  (wrong "Kein Problem."
    "Kein Problem answers an excuse me. For sad news, say that you are sorry: das tut mir leid.")
  (hint "Which one says you are sorry to hear something?"))
```

---

```check
(text
  (ask "Type the German for Excuse me!")
  (accept "Entschuldigung")
  (accents nearly)
  (wrong-if "Entschuldigen" "Close. The word is Entschuldigung, with -ung at the end.")
  (wrong-if "Es tut mir leid" "That is I'm sorry. Excuse me is Entschuldigung!")
  (hint "Ent, schul, di, gung.")
  (hint "E, n, t, s, c, h, u, l, d, i, g, u, n, g."))
```

So: say bitte for please and you're welcome, danke or Vielen Dank for thanks, Entschuldigung for excuse me, Es tut mir leid for sorry, and Wie bitte? when you did not understand.
