# Popularity and authority

```lesson
(objective "Spot an appeal to popularity, and tell a fair appeal to authority from a fallacious one.")
(minutes 20)
(keywords "appeal to popularity" "appeal to authority")
```

You can tell when "everyone thinks so" or "an expert says so" is a good
reason, and when it is not.

An **appeal to popularity** says a claim is true, or a thing is good,
because many people believe it or do it.

> "This game must be the best ever made. Millions of people bought it."

Many people can be wrong, and sales can come from good advertising or
a low price. Popularity tells you what people chose, not whether it is
true or best.

```sources
(source "Internet Encyclopedia of Philosophy, \"Fallacies\"")
```

```check
(choice
  (ask "\"Everyone in my class says the test is cancelled, so it must be.\" What is wrong?")
  (right "Many people saying it does not make it true; ask the teacher")
  (wrong "Nothing: if everyone says it, it is true"
    "A rumor can spread to everyone and still be false. The person who would know is the teacher.")
  (wrong "Classmates are not clever enough to know"
    "That attacks the people, not the claim. The point is that the number of people is not evidence.")
  (hint "Who would actually know?"))
```

---

## Authority: fair or not

An **appeal to authority** supports a claim by citing someone who is
said to know. It can be fair or a fallacy.

It is **fair** when the person is a real expert *in that field*, speaks
about that field, and other experts mostly agree.

It is a **fallacy** when the "expert" speaks outside their field, or
has a reason to say it (such as being paid), or when experts in the
field disagree and only one is quoted.

```check
(choice
  (ask "Which appeal to authority is FAIR?")
  (right "A dentist explains how often to brush your teeth")
  (wrong "A famous singer says a vitamin pill cures colds"
    "A singer is an expert in music, not medicine. Fame in one field gives no expertise in another.")
  (wrong "The maker of a drink says its drink is the healthiest"
    "The maker gains from you believing it, so it has a reason to say so whether or not it is true.")
  (hint "Is the person an expert in this field, with nothing to gain?"))
```

---

## Worked example

```example
(example
  (problem "\"A top football player says this phone has the best camera, so it does.\" Fair or fallacy?")
  (step "Is a football player an expert in cameras? No: the field is sport.")
  (step "Is the player likely paid to say it? Often, in an advert.")
  (answer "A fallacious appeal to authority: outside the player's field, and maybe paid."))
```

```example
(example
  (problem "\"The bridge engineer says the bridge is safe to cross again.\" Fair or fallacy?")
  (step "Is a bridge engineer an expert on bridges? Yes.")
  (step (choice (ask "So is this a fair appeal to authority?")
    (right "Yes: an expert speaking in her own field")
    (wrong "No: you should never trust an expert" "Trusting a real expert in her field is reasonable. The fallacy is trusting someone outside their field or with a reason to mislead.")))
  (answer "Fair: an expert speaking in her own field."))
```

---

## Practice

```check
(choice
  (ask "\"9 out of 10 people in our street use this washing powder, so it must clean best.\" Name the fallacy.")
  (right "Appeal to popularity")
  (wrong "Appeal to authority"
    "No expert is cited. The argument rests on how many people use it.")
  (wrong "False dilemma"
    "No 2 choices are set against each other. The reason given is that many people use it.")
  (hint "What is the reason given?"))
```

---

```check
(choice
  (ask "A famous actor says a diet will make you live longer. What is the best reply?")
  (right "\"What do doctors and nutrition scientists say about it?\"")
  (wrong "\"The actor is rich, so they must be right.\""
    "Wealth or fame is not expertise in nutrition. Ask the people who study it.")
  (wrong "\"Actors are not clever, so it is false.\""
    "That is an ad hominem. The claim might be true or false; check what the experts in that field say.")
  (hint "Who are the experts on diet?"))
```

---

```check
(choice
  (ask "Which of these help make citing an expert fair, not a fallacy?")
  (several)
  (right "When the expert speaks about their own field")
  (right "When most experts in that field agree")
  (wrong "When the expert is very famous"
    "Fame does not make someone right, least of all outside their field.")
  (hint "Pick 2."))
```

So: popularity is not proof, and an expert counts only in their own
field, with nothing to gain, and in step with other experts.
