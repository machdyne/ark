# Passwords

```lesson
(objective "Say why a password is kept secret, tell a strong password from a weak one, and never give it because a message asks.")
(standards "1B-NI-05")
(minutes 20)
(keywords "password" "account (online)")
```

A password keeps your account safe, but only while it stays a secret.

An **account** is your own space in a game, an app or a website. It
keeps your things, like your saved games and messages.

A **password** is a secret word or group of words that you type to get
into your account. It proves that you are you.

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Security: Passwords and Keys")
```

```check
(choice
  (ask "What is a password for?")
  (right "To prove it is really you getting into your account")
  (wrong "To make the computer run faster"
    "A password does not change how fast a computer runs. It keeps other people out of your account.")
  (wrong "To tell everyone who you are"
    "A password is secret. It proves who you are to the computer, not to other people.")
  (hint "Who should be able to get into your account?"))
```

---

## Keep it secret

Anyone who knows your password can get into your account. They could
read your messages, or pretend to be you.

So keep your password secret, even from your best friend. The only
people who may know it are the grown-ups who look after you, like a
parent or grandparent.

```check
(choice
  (ask "Sam's best friend asks for his game password, to help him get to the next level. What should Sam do?")
  (right "Keep it secret, even from his best friend")
  (wrong "Tell him: he is his best friend"
    "Friends can fall out, or pass a password on by mistake. Then someone else could get into Sam's account.")
  (wrong "Tell him, then change it next year"
    "A year is a long time for someone else to use your account. Keep it secret from the start.")
  (hint "Who may know Sam's password?"))
```

---

## Strong and weak passwords

A **weak** password is easy to guess: your name, your pet's name, your
birthday, "password" or "123456".

A **strong** password is long and hard to guess. One good way is a few
words that have nothing to do with each other, put together. Make up
your own: do not use one from a lesson or a book.

Use a different password for each account. Then if one is found out,
the others stay safe.

```sources
(source "NIST Special Publication 800-63B, Digital Identity Guidelines (2017), section 5.1.1: Memorized Secrets")
(source "National Cyber Security Centre (UK): password advice (three random words)")
(source "Timeless Computing (Zeitlos docs, tc.md), Security: Passwords and Keys")
```

```check
(choice
  (ask "Which password is the strongest?")
  (right "three words with nothing in common, like lamp, river and cloud, put together")
  (wrong "your pet's name, Max"
    "Many people know your pet's name, and it is short. Someone could guess it.")
  (wrong "123456"
    "123456 is one of the first passwords anyone would try. It is very weak.")
  (wrong "your birthday"
    "Your birthday is easy to find out, so it is easy to guess.")
  (hint "Strong means long and hard to guess."))
```

---

## A message that asks

Sometimes a message or a pop-up asks you to type your password. It may
say you won a prize, or that your account is locked. A message that
asks for your password is very likely a trick.

Do not type your password. Do not click on anything in the message.
Show a trusted adult.

```sources
(source "Federal Trade Commission (US), Consumer Advice: How to Recognize and Avoid Phishing Scams")
```

```check
(choice
  (ask "A message says: \"You won 1000 coins! Type your password here to get them.\" What should you do?")
  (right "Not type it, and show a trusted adult")
  (wrong "Type it quickly before the prize is gone"
    "Messages like this often try to rush you. Someone could then get into your account. Show a trusted adult.")
  (wrong "Type it, then change it later"
    "In that time someone could get into your account and change the password first. Do not type it.")
  (hint "Is your password ever something to type because a message asks?"))
```

---

## Practice

```check
(choice
  (several)
  (ask "Which of these help keep your account safe? Choose every one.")
  (right "A long password that is hard to guess")
  (right "A different password for each account")
  (right "Keeping your password secret")
  (wrong "Using your name as your password, so you never forget it"
    "Your name is one of the first things anyone would guess. Choose something long and hard to guess.")
  (hint "Think: secret, long, hard to guess, different for each account."))
```

So: keep your password secret, make it long and hard to guess, and
never type it because a message asks.
