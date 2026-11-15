# Who says so, and how do they know?

```lesson
(objective "Ask who made a source, why, and what evidence it gives.")
(minutes 20)
(keywords "source (of information)")
```

You can judge a claim by asking where it comes from and what backs it
up.

A **source** is where a piece of information comes from: a book, a
news report, a website, a video, a person. Before you trust a claim,
ask 3 questions about its source:

1. **Who** made it? Do they know the subject?
2. **Why** did they make it? To inform, to sell, to persuade, to
   entertain?
3. **What evidence** do they give? **Evidence** is anything that
   supports a claim and that others can check: measurements, records,
   data, documents.

```check
(choice
  (ask "A made-up page says a juicer \"makes you healthier\". It is on the juicer maker's own site. Which question matters most here?")
  (right "Why did they make it: they want to sell juicers")
  (wrong "Who made it: it is the maker, so it must be accurate"
    "The maker knows its juicer, but it also gains if you buy one. That gives it a reason to make the claim either way.")
  (wrong "No question: a website would not say it unless it were true"
    "Websites can say almost anything. Ask who made it, why, and with what evidence.")
  (hint "What does the maker want you to do?"))
```

---

## Evidence or just a claim?

Saying something firmly is not evidence. "Experts agree" without
naming any experts is not evidence. "I read it somewhere" is not
evidence.

Good evidence can be checked: "The town's records show the bridge was
built in 1910" points you to where you can look.

```check
(choice
  (ask "Which statement gives evidence you could check?")
  (right "\"The school's own attendance records for March show 92% attendance.\"")
  (wrong "\"Everyone knows attendance is great this year.\""
    "\"Everyone knows\" is an appeal to popularity, not evidence. Nothing here can be checked.")
  (wrong "\"Trust me, attendance has never been better.\""
    "\"Trust me\" asks for belief without giving anything to check.")
  (hint "Which one tells you where to look?"))
```

---

## Worked example

```example
(example
  (problem "A made-up video says a new phone \"lasts 3 days on one charge\". It was made by a well-known reviewer who bought the phone, and shows the phone being used over 3 days with the battery level on screen. Judge the source.")
  (step "Who: a reviewer who tests phones, so knows the subject.")
  (step "Why: to inform viewers; the reviewer bought the phone, so was not given it to praise.")
  (step "Evidence: the test is shown and could be repeated.")
  (answer "A fairly strong source; still, one test of one phone is a small amount of evidence."))
```

```example
(example
  (problem "A post says a cafe \"is closing next week\", with no name and no link. Judge it.")
  (step "Who: unknown. Why: unknown.")
  (step (choice (ask "What evidence does it give?")
    (right "None that can be checked")
    (wrong "Enough: it is very specific" "Being specific is not evidence. Nothing tells you where to check.")))
  (answer "Weak: check with the cafe itself before you believe or share it."))
```

---

## Practice

```check
(choice
  (ask "Which source is likely the most reliable on how long to cook a chicken safely?")
  (right "A government food-safety agency's page")
  (wrong "A post by someone with many followers"
    "Many followers is popularity, not expertise. A food-safety agency has experts and checks its advice.")
  (wrong "An advert for an oven"
    "An advert's goal is to sell. It may be right, but a food-safety agency has no product to sell you.")
  (hint "Who are the experts, with nothing to sell?"))
```

---

```check
(choice
  (ask "A made-up news story says \"Sources say the stadium will close.\" What is the weakness?")
  (right "It does not say who the sources are or what evidence they have")
  (wrong "It is from the news, so it is reliable"
    "News stories vary. Unnamed sources give you no way to judge who knows what.")
  (wrong "Stadiums never close"
    "That is a claim of your own, not a judgment of the source. The problem is that you cannot check the story.")
  (hint "Can you tell who said it?"))
```

So: ask who made a source, why, and what evidence you could check.
