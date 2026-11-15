# Survivorship bias

```lesson
(objective "Notice when only the survivors are counted, and look back over the course.")
(minutes 20)
(keywords "survivorship bias")
```

You can ask "What about the ones I cannot see?"

**Survivorship bias** is judging from only the cases that made it
through some test, because the others have dropped out of sight.

> "Old houses were built so much better than new ones. Look how many
> are still standing after 150 years!"

The old houses you see are the ones that lasted. Many badly built old
houses fell down or were knocked down long ago, so you never see them.

```check
(choice
  (ask "Why might \"old houses were built better\" be misleading?")
  (right "We only see the old houses that survived; the weak ones are gone")
  (wrong "Old houses were in fact all built badly"
    "That is not the point. Some were built well. The problem is that we only see the survivors, so we cannot judge them all.")
  (wrong "New houses will all fall down"
    "Nothing in the argument shows that. The mistake is about which old houses we can see.")
  (hint "Which old houses can you no longer see?"))
```

---

## Success stories

A made-up magazine features 5 people who quit school and became rich.
It says: "Quitting school is the way to success!" But you do not hear
from the many people who quit and did not get rich. The magazine
counts only the survivors.

To check, ask: "Out of everyone who did this, how many did well?"

```check
(choice
  (ask "A made-up book profiles 10 bands that got famous after playing in a certain bar. It says the bar makes bands famous. What is missing?")
  (right "The many bands that played there and never got famous")
  (wrong "More details about the 10 famous bands"
    "More about the winners does not help. You need to know about all the bands that played there.")
  (wrong "Nothing: 10 famous bands is strong evidence"
    "Without knowing how many played there in all, 10 could be a tiny share.")
  (hint "Out of how many bands?"))
```

---

## Worked example

```example
(example
  (problem "A made-up gym shows photos of 20 members who lost weight. What should you ask before you join?")
  (step "These are the members who did well: the survivors.")
  (step "How many members joined in all, and how many did well?")
  (answer "If 20 did well out of 2000, the photos say little about your own chances."))
```

---

## Looking back

You now have a toolkit:

- **Arguments**: find the premises, the conclusion and the hidden premise; ask if it is valid and sound.
- **Fallacies**: name the weak step, but judge the claim on its own evidence.
- **Chance and risk**: ask for base rates and absolute risks.
- **Numbers**: points or percent? Mean or median? Who was in the sample? Correlation or cause? Where does the axis start?
- **Sources and science**: who, why, what evidence; read laterally; wait for replication.
- **Biases**: look for what would prove you wrong, make your own estimate first, check how often, and ask about the cases you cannot see.

```check
(choice
  (ask "A made-up ad: \"8 out of 10 of our customers who stayed with us for 5 years say we are the best!\" Which bias does this invite?")
  (right "Survivorship bias: unhappy customers who left are not asked")
  (wrong "Anchoring"
    "No first number pulls a later estimate here. The problem is who gets asked: only those who stayed.")
  (wrong "Availability heuristic"
    "This is not about how easily examples come to mind. It counts only the customers who stayed.")
  (hint "Who is missing from the count?"))
```

---

## Practice

```check
(choice
  (ask "\"Everyone I know who tried this diet lost weight.\" Which questions help most?")
  (several)
  (right "How many tried it and did not lose weight, or stopped talking about it?")
  (right "How many people did you ask, and how were they chosen?")
  (wrong "Which celebrity recommends the diet?"
    "That is an appeal to authority, and a celebrity is rarely an expert in diet. It does not answer who is missing.")
  (hint "Pick 2: think survivors and samples."))
```

So: the cases you cannot see matter as much as the ones you can; with
the tools of this course, you can weigh claims for yourself.
