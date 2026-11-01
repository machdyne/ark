# Noise and copies

```lesson
(objective "Weigh the advantages and disadvantages of digital signals: noise, copying, compression and loss.")
(standards "HS-PS4-2")
(minutes 25)
(keywords "noise (in a signal)")
```

You can weigh why most information today is sent and stored digitally,
and what that costs.

Every signal picks up small, random, unwanted changes as it travels
through wires and air or is copied: **noise**. In an analog signal, the
noise becomes part of the signal. Nobody can tell afterward which
wiggles were the sound and which were noise.

A digital signal has only two levels. If the noise is less than half
the gap between them, the receiver still reads every bit rightly, and
can send on a clean new signal.

```figure
(define k (choice 'k '("Analog" "Digital") "Signal"))
(define a (slider 'a 0 1 0.3 "Noise" 0.1))
(define bits '(0 1 1 0 1 0 0 1 1 0))
(define (fr u) (- u (floor u)))
(define (nz i) (* a 70 (- (fr (* 43758.5453 (sin (* 12.9898 (+ i 1))))) 0.5)))
(define (dv i) (list-ref bits (min 9 (quotient i 4))))
(define (clean i) (if (= k 0) (* 30 (sin (* i 0.2))) (if (= (dv i) 1) 30 -30)))
(line 20 80 300 80 'grey 1)
(path (let loop ((i 39) (pts '()))
        (if (< i 0) pts (loop (- i 1) (cons (+ 20 (* 7 i)) (cons (- 80 (clean i) (nz i)) pts)))))
      'ink 1.5)
(text 20 30 "received, with noise" 'small)
(if (= k 1)
    (begin
      (text 20 140 "read as bits:" 'small)
      (for-range 0 10
        (lambda (j)
          (let* ((i (+ 1 (* 4 j))) (v (+ (clean i) (nz i))) (r (if (> v 0) 1 0)))
            (text (+ 30 (* 28 j)) 165 (if (= r 1) "1" "0") 'centre 'body 'bold)
            (if (not (= r (list-ref bits j))) (ring (+ 30 (* 28 j)) 160 10 'ink 1.5)))))
      (caption "Ringed: a bit read wrongly."))
    (caption "The noise is now part of the signal."))
```

```sources
(source "C. E. Shannon, A Mathematical Theory of Communication, Bell System Technical Journal 27 (1948)")
```

```check
(choice
  (ask "In the figure, choose Digital and raise the noise step by step to 1.0. When do bits start to be read wrongly?")
  (right "Only when the noise gets near half the gap between the two levels")
  (wrong "As soon as there is any noise at all"
    "Small noise leaves each bit clearly high or low, so it is read rightly. Errors start only when the noise is big enough to push a bit past the middle.")
  (wrong "Never: digital signals are not affected by noise"
    "Digital signals pick up noise too. They resist it only while it is small; large noise makes errors.")
  (hint "Watch the ringed bits as you move the slider."))
```

---

## Perfect copies

Copy an analog recording, then copy the copy, and noise is added each
time: the tenth copy sounds worse than the first. A digital copy
reads every bit and writes it again, so the thousandth copy can be
exactly the same as the original, bit for bit.

```check
(choice
  (ask "Why can a digital file be copied many times with no loss?")
  (right "Each copy reads each bit as 0 or 1 and writes it again exactly")
  (wrong "Digital files have no noise when they are made"
    "Every signal has some noise. Digital copies are exact because small noise does not change which level each bit is read as.")
  (wrong "Digital copies are made faster"
    "Speed is not the reason. Each bit is read and rewritten as exactly 0 or 1, so nothing builds up.")
  (hint "What happens to small noise when a bit is read?"))
```

---

## Compression

Digital information can be made smaller: **compression** stores the
same information in fewer bits. Lossless compression, as in a zip file,
gives back every bit exactly. Lossy compression, used for most music,
pictures and video, throws away details people barely notice, and can
shrink a file much more; those details are gone for good.

```check
(number
  (ask "A 50 MB recording is compressed to 5 MB. By what factor was it shrunk?")
  (answer 10) (from "50 / 5")
  (wrong-if 45 "That is the space saved, 50 - 5. The factor is how many times smaller: 50 / 5.")
  (hint "Divide the original size by the new size."))
```

---

## The costs of digital

Digital signals have disadvantages too:

- **Sampling loses detail.** Changes too fast for the samples to
  follow, and the rounding of each sample to a level, are lost.
- **More to send.** A digital signal usually needs many bits each
  second, more than an analog one carrying the same sound.
- **Sudden failure.** A weak digital signal works perfectly, until the
  noise is large enough to cause many errors; then it fails at once,
  where an analog one would only get worse.

```check
(choice
  (ask "A digital TV picture is perfect, then freezes and breaks up as you drive farther from the transmitter. An analog picture would have grown slowly snowier. Why the difference?")
  (right "Digital bits are read rightly until the noise is about half the gap between levels, then errors come quickly")
  (wrong "Digital signals do not travel as far as analog ones"
    "Both kinds travel as radio waves. The difference is how noise affects them: no effect until it is large, then failure.")
  (wrong "The digital picture was compressed too much"
    "Compression is the same near and far. It is the growing noise that makes the bits start to be read wrongly.")
  (hint "Think of the figure as the noise grows."))
```

---

## Practice

```check
(choice (several)
  (ask "Which are advantages of digital signals? Choose every one.")
  (right "Copies can be exactly the same as the original")
  (right "Small noise can be removed completely")
  (wrong "No information is lost in sampling"
    "Sampling always loses the rounding of each sample, and any change too fast for the samples to follow. More samples and bits make the loss smaller, but never zero.")
  (wrong "They never fail, however weak"
    "A weak enough digital signal fails suddenly, once noise causes many errors.")
  (hint "Two are true; the others overstate it."))
```

```check
(choice
  (ask "Which kind of compression should be used for a computer program's file, where every bit must be exact?")
  (right "Lossless")
  (wrong "Lossy"
    "Lossy compression throws details away for good. A program with changed bits may not run at all.")
  (hint "Which kind gives back every bit?"))
```

---

Digital signals resist small noise and copy perfectly, and can be
compressed, but sampling loses detail, they need more bits, and they
fail suddenly when noise is large.
