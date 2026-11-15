# Notes you can use

```lesson
(objective "Take notes in your own words and turn them into questions.")
(minutes 20)
```

Good notes are not just a record of the lesson: they are something you
can test yourself on later.

When you copy word for word, you can write without thinking about what
it means. When you put an idea in your own words, you have to work out
what it means first. Write short notes in your own words, and leave
room for questions.

```check
(choice
  (ask "The teacher says: \"Plants use sunlight to make food from water and air.\" Which note is in your own words?")
  (right "Plants make their own food, and they need light, water and air to do it")
  (wrong "Plants use sunlight to make food from water and air"
    "That is the teacher's sentence, copied exactly. Saying it your own way makes you think about what it means.")
  (wrong "Plants, sunlight, food"
    "Those are only words from the sentence. They do not say how they go together, so later they will not tell you much.")
  (hint "Look for the note that says the same idea in different words."))
```

---

## A page with a question column

One way to set out a page is to keep a column on the left for
questions. Walter Pauk described a page like this in his book *How to
Study in College*.

- During the lesson, write notes on the right.
- After the lesson, write a question in the left column beside each
  part.
- At the bottom, write 1 or 2 sentences that sum up the page.

Later, cover the right side and answer the questions from memory.

```figure
(frame 40 20 240 200 'ink 1.5)
(line 124 20 124 175 'ink 1)
(line 40 175 280 175 'ink 1)
(text 82 38 "Questions" 'small 'centre 'bold)
(text 202 38 "Notes" 'small 'centre 'bold)
(text 82 60 "What do" 'tiny 'centre)
(text 82 70 "plants need" 'tiny 'centre)
(text 82 80 "to make food?" 'tiny 'centre)
(for-range 0 5 (lambda (i) (line 134 (+ 56 (* i 14)) 270 (+ 56 (* i 14)) 'grey 1)))
(text 82 130 "Where does" 'tiny 'centre)
(text 82 140 "it happen?" 'tiny 'centre)
(for-range 0 3 (lambda (i) (line 134 (+ 128 (* i 14)) 270 (+ 128 (* i 14)) 'grey 1)))
(text 160 192 "Summary" 'small 'centre 'bold)
(line 60 206 260 206 'grey 1)
(caption "Cover the notes, then answer the questions")
```

```sources
(source "Walter Pauk, How to Study in College (Houghton Mifflin)")
```

```check
(choice
  (ask "What is the question column for?")
  (right "To test yourself later, by covering the notes and answering")
  (wrong "To write down questions you want to ask the teacher, and nothing else"
    "You can do that too, but the main use is to quiz yourself: cover the notes and answer from memory.")
  (wrong "To copy the headings from the board"
    "Headings tell you the topic. Questions ask for the idea, so you can test yourself on it.")
  (hint "Think of retrieval practice."))
```

---

## Highlighting

The 2013 review rated highlighting as **low** in usefulness. Marking a
line is quick, and it can feel like work, but it does not make you
recall anything.

If you highlight, use the marks to choose what to turn into questions.
Then test yourself on the questions.

```sources
(source "Dunlosky and others, Improving Students' Learning With Effective Learning Techniques, Psychological Science in the Public Interest 14(1), 2013: highlighting and underlining")
```

```check
(choice
  (ask "Mo has highlighted half of his textbook chapter. What should he do next?")
  (right "Turn the main highlighted ideas into questions and test himself")
  (wrong "Highlight the rest, so nothing is missed"
    "More highlighting is more of a method that helps little. The marks are only useful if he does something with them.")
  (wrong "Reread only the highlighted parts until they look familiar"
    "Looking familiar is the illusion of knowing. He needs to recall the ideas, not just see them again.")
  (hint "How can he make the marks into retrieval practice?"))
```

---

## From notes to questions

```example
(example
  (problem "Your notes say: The water cycle: water evaporates from seas and lakes, forms clouds, falls as rain or snow, and flows back to the seas and lakes.")
  (step "Pick out each idea: water evaporates; clouds form; rain or snow falls; water runs back.")
  (step "Write a question for the whole: What are the steps of the water cycle, in order?")
  (step "Write a question that asks why: Why does water not run out, even though it keeps raining?")
  (answer "Two questions you can answer later, with the notes covered."))
```

```check
(choice
  (ask "Which question, made from notes on the water cycle, asks the most of your memory?")
  (right "What are the steps of the water cycle, in order?")
  (wrong "Is the water cycle about water?"
    "That can be answered without remembering anything from the notes. A good question asks for the ideas.")
  (wrong "Did we learn about the water cycle on Tuesday?"
    "That asks when you learned it, not what you learned.")
  (hint "Which one makes you recall the ideas themselves?"))
```

---

## Practice

```check
(choice
  (ask "What is the best way to use your notes before a test?")
  (right "Cover them and answer your own questions, then check")
  (wrong "Read them through 3 times"
    "Rereading makes notes look familiar, which is the illusion of knowing. Cover them and recall instead.")
  (wrong "Copy them out neatly again"
    "Copying keeps the answers in front of you. Answering questions with the notes covered is retrieval practice.")
  (hint "Use the question column."))
```

---

## This week

In one class this week, leave a column for questions on your notes
page. After class, write a question beside each part. Two days later,
cover the notes and answer them.

So: write notes in your own words, add questions, and use them to test
yourself.
