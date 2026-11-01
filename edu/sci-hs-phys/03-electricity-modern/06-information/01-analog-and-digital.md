# Analog and digital

```lesson
(objective "Tell an analog signal from a digital one, and turn a signal into bits by sampling it.")
(standards "HS-PS4-2")
(minutes 25)
(keywords "signal (information)" "analog signal" "digital signal" "bit (binary digit)" "sampling (of a signal)")
```

You can tell the two ways of carrying information apart, and turn one
into the other.

A **signal** is a quantity that changes in a pattern to carry
information: a voltage on a wire, the brightness of light in a fiber,
the strength of a radio wave.

An **analog signal** can take any value in its range and changes
smoothly, in step with what it stands for. A microphone's voltage rises
and falls as the air pressure of the sound does.

A **digital signal** takes only a few set values, usually just two,
which stand for 0 and 1.

```figure
(define k (choice 's '("Analog" "Digital") "Signal"))
(line 30 110 290 110 'grey 1)
(if (= k 0)
    (path (let loop ((i 50) (pts '()))
            (if (< i 0) pts
                (let ((t (/ i 50)))
                  (loop (- i 1) (cons (+ 30 (* 260 t)) (cons (- 110 (* 60 (+ (* 0.6 (sin (* 2 pi t))) (* 0.3 (sin (+ 1 (* 6 pi t))))))) pts))))))
          'ink 2)
    (path '(30 150 62 150 62 70 94 70 94 150 126 150 126 70 190 70 190 150 222 150 222 70 254 70 254 150 290 150) 'ink 2))
(if (= k 1)
    (for-each (lambda (b x) (text x 190 b 'centre 'small 'bold))
              '("0" "1" "0" "1" "1" "0" "1" "0") '(46 78 110 142 174 206 238 270)))
(caption (if (= k 0) "Any value, changing smoothly." "Two values only: 0 and 1."))
```

```check
(choice
  (ask "A thermometer's output voltage rises smoothly from 0.2 V to 0.8 V as the room warms. What kind of signal is it?")
  (right "Analog")
  (wrong "Digital"
    "A digital signal jumps between a few set values. This voltage can be anything between 0.2 V and 0.8 V, changing smoothly.")
  (hint "Can the voltage take any value in its range?"))
```

---

## Bits

Each 0 or 1 of a digital signal is a **bit**, short for binary digit.
One bit has 2 values. Each extra bit doubles the number of patterns: 2
bits give 4 patterns (00, 01, 10, 11), and $n$ bits give $2^n$.

```check
(number
  (ask "How many different values can a group of 3 bits stand for?")
  (answer 8) (from "2^3")
  (wrong-if 6 "That is 2 x 3. Each bit doubles the count: 2 x 2 x 2 = 8.")
  (wrong-if 3 "3 is the number of bits. They give 2^3 patterns, from 000 to 111.")
  (hint "Each bit doubles the number of patterns."))
```

---

## Sampling

To turn an analog signal into bits, measure it at regular times: this
is **sampling**. Each sample is rounded to the nearest of the levels the
bits can stand for, and stored as bits.

The figure samples the signal. The dots are the samples, rounded to the
levels; the steps are the copy made from them.

```figure
(define n (slider 'n 4 40 8 "Samples" 4))
(define b (slider 'b 1 5 2 "Bits a sample" 1))
(define lv (- (expt 2 b) 1))
(define (sig t) (+ (* 0.6 (sin (* 2 pi t))) (* 0.3 (sin (+ 1 (* 6 pi t))))))
(define (q v) (- (* 2 (/ (round (* (/ (+ v 1) 2) lv)) lv)) 1))
(line 30 110 290 110 'grey 1)
(path (let loop ((i 50) (pts '()))
        (if (< i 0) pts
            (let ((t (/ i 50))) (loop (- i 1) (cons (+ 30 (* 260 t)) (cons (- 110 (* 70 (sig t))) pts))))))
      'grey 1.5)
(path (let loop ((i (- n 1)) (pts '()))
        (if (< i 0) pts
            (let* ((t (/ i n)) (y (- 110 (* 70 (q (sig t))))) (x0 (+ 30 (* 260 t))) (x1 (+ 30 (* 260 (/ (+ i 1) n)))))
              (loop (- i 1) (cons x0 (cons y (cons x1 (cons y pts))))))))
      'ink 2)
(for-range 0 n (lambda (i) (dot (+ 30 (* 260 (/ i n))) (- 110 (* 70 (q (sig (/ i n))))) 'ink)))
(text 160 205 (string-append (fmt (+ lv 1) 0) " levels, " (fmt (* n b) 0) " bits in all") 'centre 'small 'bold)
(caption "Grey: the analog signal. Steps: its digital copy.")
```

```check
(choice
  (ask "In the figure, which change makes the digital copy follow the signal most closely?")
  (right "More samples and more bits for each sample")
  (wrong "Fewer samples with more bits each"
    "More bits make each sample more exact, but with few samples, quick changes between them are missed. You need both.")
  (wrong "More samples with 1 bit each"
    "With 1 bit, each sample can only be high or low. Many such samples still give a rough copy.")
  (hint "Try the sliders at their highest and lowest."))
```

---

## How fast to sample

To capture a sound, you must take more than 2 samples for each cycle
of its highest frequency. People hear up to about 20,000 Hz, so a music
CD takes 44,100 samples each second, with 16 bits in each sample, for
each of its 2 channels.

```sources
(source "C. E. Shannon, Communication in the Presence of Noise, Proceedings of the IRE 37 (1949)")
(source "International Electrotechnical Commission, IEC 60908: Audio recording, compact disc digital audio system")
```

```check
(number
  (ask "A CD stores 44,100 samples each second for each channel, with 16 bits in each sample. How many bits does one channel store each second?")
  (answer 705600) (from "44100 * 16")
  (wrong-if 2756.25 "That divides. Each of the 44,100 samples has 16 bits: multiply.")
  (wrong-if 1411200 "That is for both channels. The question asks for one channel: 44,100 x 16.")
  (hint "Bits each second = samples each second x bits each sample."))
```

---

## Practice

```check
(choice
  (ask "Which is a digital signal?")
  (right "A voltage on a computer's wire that is either 0 V or 3.3 V")
  (wrong "The voltage from a microphone"
    "A microphone's voltage follows the sound smoothly, taking any value: analog.")
  (wrong "The height of the mercury in an old thermometer"
    "The mercury can stand at any height, changing smoothly: analog.")
  (hint "A digital signal has only a few set values."))
```

```check
(number
  (ask "Each sample of a signal is stored with 8 bits. How many levels can each sample have?")
  (answer 256) (from "2^8")
  (wrong-if 16 "That is 2 x 8. Each bit doubles the count: 2^8.")
  (hint "n bits give 2^n patterns."))
```

---

An analog signal changes smoothly, a digital signal uses a few set
values made of bits, and sampling turns one into the other: more
samples and more bits give a closer copy.
