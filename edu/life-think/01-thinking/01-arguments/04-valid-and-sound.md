# Valid and sound

```lesson
(objective "Tell whether an argument is valid, and whether it is also sound.")
(minutes 20)
(keywords "valid" "sound")
```

You can tell an argument whose steps hold from one that is also built
on true premises.

An argument is **valid** when its conclusion must be true *if* its
premises are true. Validity is about the shape: the premises do not
have to be true.

- All fish can fly.
- A salmon is a fish.
- So a salmon can fly.

This is valid. If both premises were true, the conclusion would have
to be true. But the first premise is false.

```sources
(source "Internet Encyclopedia of Philosophy, \"Validity and Soundness\"")
```

```check
(choice
  (ask "\"All cats have 6 legs. Tom is a cat. So Tom has 6 legs.\" Is this argument valid?")
  (right "Yes: if the premises were true, the conclusion would have to be")
  (wrong "No: cats do not have 6 legs"
    "That makes a premise false, but validity only asks: if the premises were true, would the conclusion follow? Here it would.")
  (hint "Pretend the premises are true. Must the conclusion be true?"))
```

---

## Not valid

An argument is not valid when the premises could all be true and the
conclusion still false.

- All dogs are animals.
- My cat is an animal.
- So my cat is a dog.

Both premises are true, and the conclusion is false. So the shape is
broken: other things are animals too.

```check
(choice
  (ask "\"All apples are fruit. A banana is a fruit. So a banana is an apple.\" Is it valid?")
  (right "No: the premises are true but the conclusion is false")
  (wrong "Yes: both premises are true"
    "True premises are not enough. The conclusion must follow from them, and here it does not: many fruits are not apples.")
  (hint "Are the premises true? Is the conclusion?"))
```

---

## Sound

An argument is **sound** when it is valid *and* all its premises are
true. Then its conclusion must be true.

| | Premises true | A premise false |
|---|---|---|
| Valid | sound | valid, not sound |
| Not valid | not sound | not sound |

So to attack an argument, you can show a premise is false, or show the
conclusion does not follow.

```check
(choice
  (ask "\"All birds have feathers. A robin is a bird. So a robin has feathers.\" What is this argument?")
  (right "Valid and sound")
  (wrong "Valid but not sound"
    "An argument is unsound only if it is not valid or has a false premise. Both premises here are true.")
  (wrong "Not valid"
    "If all birds have feathers and a robin is a bird, a robin must have feathers. The conclusion follows.")
  (hint "Is it valid? Are both premises true?"))
```

---

## Worked example

```example
(example
  (problem "\"Every shop on Mill Street shuts on Sunday. The bakery is on Mill Street. So the bakery shuts on Sunday.\" Suppose the bakery in fact opens on Sunday. What can you say?")
  (step "Validity: if both premises were true, the bakery would have to shut. So it is valid.")
  (step "But the conclusion is false, so a premise must be false: not every shop on Mill Street shuts.")
  (answer "Valid, but not sound: the first premise is false."))
```

```example
(example
  (problem "\"If it snows, school closes. School closed today. So it snowed.\" Is it valid?")
  (step "Could both premises be true and the conclusion false?")
  (step (choice (ask "Could school close for another reason, with no snow?")
    (right "Yes: a burst pipe, say")
    (wrong "No: only snow closes school" "The premise says snow closes school, not that only snow does. Other things could close it.")))
  (answer "Not valid: school could close for another reason."))
```

---

## Practice

```check
(choice
  (ask "Which is true of every sound argument?")
  (right "Its conclusion is true")
  (wrong "It convinces everyone who hears it"
    "People can reject a sound argument, and accept a bad one. Sound means valid with true premises, so the conclusion is true.")
  (wrong "It has exactly 2 premises"
    "A sound argument can have any number of premises. What matters is that it is valid and they are all true.")
  (hint "Sound means valid and all premises true."))
```

---

```check
(choice
  (ask "\"All squares have 4 sides. This shape has 4 sides. So it is a square.\" Is it valid?")
  (right "No: other shapes have 4 sides too")
  (wrong "Yes: the premises are true"
    "A rectangle that is not a square also has 4 sides. The premises could be true and the conclusion false.")
  (hint "Think of a shape with 4 sides that is not a square."))
```

---

```check
(choice
  (ask "An argument is valid, but its conclusion is false. What must be true?")
  (right "At least 1 premise is false")
  (wrong "The argument is not valid after all"
    "A valid argument can have a false conclusion, but only when a premise is false.")
  (wrong "All the premises are true"
    "If it were valid and all its premises were true, the conclusion would have to be true. It is not, so a premise is false.")
  (hint "Valid means: true premises give a true conclusion."))
```

So: valid means the conclusion follows; sound means it follows from
true premises.
