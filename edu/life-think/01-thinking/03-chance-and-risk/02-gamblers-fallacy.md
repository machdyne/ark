# The gambler's fallacy

```lesson
(objective "Explain why past results of independent events do not change the next one.")
(minutes 15)
(keywords "independent (events)" "gambler's fallacy")
```

You can see why a coin has no memory.

2 events are **independent** when one happening does not change the
probability of the other. Tosses of a fair coin are independent: the
coin does not know what it did before. Each toss, heads has a
probability of $1/2$.

```check
(fraction
  (ask "A fair coin has landed heads 4 times in a row. What is the probability of heads on the next toss?")
  (answer 1 2) (equivalent)
  (wrong-if (1 5) "The 4 heads before do not change the coin. The next toss is still 1 of 2 equally likely outcomes.")
  (hint "Does the coin remember?"))
```

---

## The fallacy

The **gambler's fallacy** is believing that after a run of one result,
the other result is "due": that chance will even things out soon.

> "Red has come up 6 times on this roulette wheel. Black must be next!"

On a fair wheel, each spin is independent. Black is no more likely
after 6 reds than at any other time.

```sources
(source "Tversky, A. and Kahneman, D. (1974), \"Judgment under Uncertainty: Heuristics and Biases\", Science 185, section on misconceptions of chance")
(source "Kahneman, D. (2011), Thinking, Fast and Slow")
```

```check
(choice
  (ask "Why is \"black must be next\" wrong on a fair wheel?")
  (right "Each spin is independent: past spins do not change the next one")
  (wrong "Because red is lucky on that wheel"
    "On a fair wheel no color is lucky. Each spin has the same chances as every other spin.")
  (wrong "It is right: things must even out"
    "Over very many spins the share of reds and blacks settles close to what is expected, but not by the wheel making up for a run. The next spin has the same chances as ever.")
  (hint "Does the wheel know what came before?"))
```

---

## When the past does matter

Not every event is independent. If you take cards from a pack and do
not put them back, the pack changes. After 3 aces are drawn, an ace is
less likely next, because only 1 is left.

```check
(choice
  (ask "Which of these are independent of what happened before?")
  (several)
  (right "Rolling a fair die again")
  (right "Tossing a fair coin again")
  (wrong "Drawing another card from a pack without putting the first back"
    "The first card is gone, so the pack is different. The chances for the next card have changed.")
  (hint "Pick 2. Which ones change nothing between tries?"))
```

---

## Worked example

```example
(example
  (problem "A family has 3 children, all girls. Ari says the next baby is very likely to be a boy. Is that right?")
  (step "Whether a baby is a boy or girl does not depend on the older children: it is close to independent.")
  (step "So 3 girls before does not make a boy \"due\".")
  (answer "No: that is the gambler's fallacy. The chance is about the same as for any baby."))
```

---

## Practice

```check
(choice
  (ask "Ben has lost 5 games of a fair dice game in a row. He says: \"I'm due a win.\" What is the best reply?")
  (right "\"The dice don't remember: your chance next game is the same as ever.\"")
  (wrong "\"Yes, after 5 losses a win is more likely.\""
    "That is the gambler's fallacy. If the game is fair and each roll independent, past losses change nothing.")
  (wrong "\"No, after 5 losses you are more likely to lose again.\""
    "That is the same mistake the other way round. The dice do not keep a streak going either.")
  (hint "Are the games independent?"))
```

---

```check
(fraction
  (ask "A fair 6-sided die has not shown a 6 in 10 rolls. What is the probability of a 6 on the next roll?")
  (answer 1 6) (equivalent)
  (wrong-if (1 2) "A 6 is not \"due\". The die is fair, so a 6 is 1 of 6 equally likely outcomes, as always.")
  (hint "The die is fair and has no memory."))
```

So: for independent events like fair coins and dice, a run of one
result does not make the other more likely.
