# Outline: Electricity, magnetism and modern physics

Part `03-electricity-modern` of `sci-hs-phys`, High School Physics: 7 units, 44 lessons. This file has no number, so learn ignores it. Write each lesson with exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears.

Standards: NGSS HS-PS codes where a performance expectation fits, and CCSS math codes on lessons that compute. NGSS has no performance expectation for the rules of circuits themselves; those lessons carry HS-PS2-6 (why materials conduct), HS-PS3-3 (devices that convert energy) or CCSS math codes (Ohm's law is the example HSA-CED.A.4 gives). The nucleus is in NGSS's chemistry codes (HS-PS1-8); the course `sci-hs-chem` covers it too, from the chemist's side.

## Figures

Your own figure procedures go in `lib/elec.scm` only, every name starting with `el-`. Keep that file at most 7 KB (the course has 24 KB for all three parts). Do not edit the other parts' lib files. You may not call parts 1 and 2's `mc-` and `wv-` procedures (other authors may change them); copy what you need under your own prefix.

Built-in procedures that suit this part (learn_figures.md, "The library"):

- `graph`, `graph-axes`, `plot`, `plot-point` -- current against voltage (a straight line for a resistor), force against distance for charges, power against current, a decay curve, the energy of photons against frequency
- `bar-chart` -- the voltage across each part of a series circuit, the energy a home uses in a month, the energy released per kilogram by fuels, fission and fusion
- `arrow`, `line`, `ring`, `label` -- field lines, forces on charges, current directions, circuit diagrams
- `number-line`, `nl-mark` -- energy levels of an atom, the spectrum by photon energy
- `dot-array` -- a sample of nuclei, some decayed
- `caption`

Sliders suit: charge and distance; battery voltage and resistances; the number of lamps in series or parallel; the speed a magnet moves through a coil; the turns of a transformer; the frequency and brightness of light on a metal; time in half-lives. Toggles suit: a switch open or closed, a magnet moving or still. Animation suits: charges drifting round a circuit (slowly: they really drift at well under a millimeter per second), a magnet moving in and out of a coil with the meter's needle, a generator's coil turning, nuclei decaying. Put fixed parts (the circuit's wires, the coil, the axes) in `still`, and keep a moving figure under about 60 points a frame.

Procedures you may want to write in `lib/elec.scm` (suggestions; name them as you like, with the prefix):

- `el-battery`, `el-resistor`, `el-lamp`, `el-switch`, `el-meter` -- circuit symbols at a place and an angle, joined by `line`s; a lamp drawn lit only when current flows through it
- `el-charge` -- a + or - disc; `el-field` -- field lines of a point charge or between two plates
- `el-magnet` -- a bar magnet with N and S; `el-coil` -- a coil of a few turns
- `el-levels` -- an atom's energy levels with a jump and its photon

**Every figure is physically true.** It models the physics, not a picture of it:

- Charges: like charges repel, unlike attract; $F = k q_1 q_2 / r^2$; field lines start on + and end on -, never cross, and are closest where the field is strongest.
- Circuits: a lamp is lit only when a closed loop through it joins the battery's two ends; $I = V / R$; in series the current is the same everywhere and the voltages add up to the battery's; in parallel each branch has the battery's voltage and the currents add. A lamp's brightness follows its power $P = I V$ (treat a lamp as a fixed resistor, and say so). An ammeter (in series) reads as if it had no resistance, a voltmeter (in parallel) as if it took no current. Current is drawn in the conventional direction, + to -, and the step says so where electrons are shown.
- Magnetism: field lines go from N to S outside a magnet; the field round a straight wire is circles, by the right-hand rule; a coil's current flows only while the magnetic field through it changes, and reverses when the change reverses. An ideal transformer has $V_s / V_p = N_s / N_p$.
- Photons: $E = h f$; below the threshold frequency no electrons leave the metal however bright the light; brighter light above it frees more electrons, not faster ones. An atom gives out or takes in only photons whose energy matches the gap between two of its levels.
- The nucleus: $N = N_0 (1/2)^(t / T_(1/2))$ for a large sample; which nucleus decays next is random. A figure's randomness must be the same every frame (a fixed list, or a number worked out from each nucleus's place), since a frame depends only on its controls and the time. $E = m c^2$.
- An animation runs in real time, or the caption says how much it is slowed or sped up.

Use these values in every part, so answers agree: the elementary charge $e = 1.60 * 10^-19$ C; Coulomb's constant $k = 8.99 * 10^9$ N m^2/C^2; Planck's constant $h = 6.63 * 10^-34$ J s; $c = 3.00 * 10^8$ m/s; 1 eV = $1.60 * 10^-19$ J; household outlets supply about 120 V in the US and Canada and about 230 V in much of the rest of the world. Say "about" where a value is rounded.

## Words

- Uses from parts 1 and 2: all their keywords, among them force, net force, field, gravitational field, inverse-square law, orbit, energy, work, joule, kinetic and potential energy, conservation of energy, thermal energy, power, watt, efficiency, wave, medium, frequency, hertz, wavelength, wave speed, amplitude, interference, diffraction, electromagnetic wave, electromagnetic spectrum, visible light, ultraviolet, infrared, X-ray, gamma ray, radio wave, microwave, optical fiber, double-slit experiment.
- SI first, US customary alongside where it is natural (an energy bill in kilowatt-hours is the same in both). Formulas in `$...$`; Greek letters by name ($Omega$ for ohms, $lambda$).
- Experiments are virtual: a simulation in a figure, or a table of data to read. Never ask the learner to build a circuit, open a plug or an outlet, or handle a magnet near electronics. The course is class A: lesson 03-circuit-energy/03 states facts about home wiring and how it is protected; it teaches no wiring and no repairs, and says that such work is for a licensed electrician.
- A term is used only after the lesson that teaches it, also inside this part: not "voltage" before 01-charge/06; not "current" as a term before 02-circuits/01; not "resistance" before 02-circuits/03; not "series" or "parallel" before 02-circuits/05 and /06; not "alternating current" before 04-magnetism/07 (03-circuit-energy/03 says "the outlets supply about 120 volts"); not "photon" before 05-quantum/01; not "semiconductor" before 01-charge/02; not "bit" before 06-information/01; not "nucleus" or "isotope" before 07-nuclear/01 (05-quantum talks of an atom's electrons and energy levels only).
- 05-quantum/05 keeps to physics: which photons can ionize atoms and why. It gives no medical advice, cites government and international health bodies for any claim about health, and says where a question is still studied rather than settled.
- Electrons, protons, neutrons and atoms are known from middle school; the course defines the nucleus and its numbers in 07-nuclear/01.
- High school words: sentences of 25 words or fewer, the subject's terms defined where they first appear, "you", present tense, numbers as digits, US spelling.

## 01-charge/ -- Electric charge and fields

Explain electric charge, how objects become charged, Coulomb's law, the electric field and voltage. Standards: HS-PS2-4, HS-PS2-6, HS-PS3-2, HS-PS3-5.

1. `01-electric-charge.md` -- Describe positive and negative charge, that like charges repel and unlike attract, and that charge is conserved and comes in whole numbers of elementary charges.  
   Standards: "HS-PS3-5". Keywords: "electric charge", "coulomb (unit)", "elementary charge", "conservation of charge".
2. `02-conductors-and-insulators.md` -- Explain conductors, insulators and semiconductors by how freely electrons move in them.  
   Standards: "HS-PS2-6". Keywords: "conductor (of electricity)", "insulator (of electricity)", "semiconductor".
3. `03-charging.md` -- Explain charging by friction, contact and induction, polarization, and grounding.  
   Standards: "HS-PS3-5". Keywords: "charging by contact", "charging by induction", "polarization (of charge)", "grounding".
4. `04-coulombs-law.md` -- Compute the force between two charges with Coulomb's law, and compare it with gravity.  
   Standards: "HS-PS2-4". Keywords: "Coulomb's law".
5. `05-electric-field.md` -- Describe the electric field as force per charge, E = F/q, and draw its field lines.  
   Standards: "HS-PS3-5". Keywords: "electric field", "field line".
6. `06-voltage.md` -- Explain electric potential energy, and voltage as the energy per coulomb, in volts.  
   Standards: "HS-PS3-5", "HS-PS3-2". Keywords: "electric potential energy", "voltage", "volt".

## 02-circuits/ -- Circuits

Build circuits in a simulation, and use Ohm's law and the rules of series and parallel circuits to find currents and voltages. Standards: HS-PS2-6, HS-PS3-3, HSA-CED.A.4, HSN-Q.A.1, HSS-ID.B.6.

1. `01-current.md` -- Compute current as charge passing per second, in amperes, and tell the conventional direction from the electrons' direction.  
   Standards: "HSN-Q.A.1", "HSA-CED.A.4". Keywords: "electric current", "ampere", "conventional current".
2. `02-circuits.md` -- Explain why a lamp lights only in a closed circuit, and read and draw circuit diagrams.  
   Standards: "HS-PS3-3". Keywords: "circuit", "circuit diagram", "closed circuit", "open circuit", "short circuit".
3. `03-resistance.md` -- Explain what a wire's resistance depends on: its material, length and thickness.  
   Standards: "HS-PS2-6". Keywords: "resistance", "ohm (unit)", "resistor".
4. `04-ohms-law.md` -- Use Ohm's law, V = IR, and find a resistance from the slope of simulated current-voltage data.  
   Standards: "HSA-CED.A.4", "HSS-ID.B.6". Keywords: "Ohm's law".
5. `05-series-circuits.md` -- Find the current and the voltage across each part of a series circuit, and its equivalent resistance.  
   Standards: "HSA-CED.A.4". Keywords: "series circuit", "equivalent resistance".
6. `06-parallel-circuits.md` -- Find the current in each branch of a parallel circuit, and its equivalent resistance.  
   Standards: "HSA-CED.A.4". Keywords: "parallel circuit", "branch (of a circuit)".
7. `07-meters.md` -- Place an ammeter and a voltmeter correctly, and read them, in a simulated circuit.  
   Standards: "HSN-Q.A.1". Keywords: "ammeter", "voltmeter".
8. `08-combined-circuits.md` -- Find currents and voltages in a circuit with parts in series and in parallel.  
   Standards: "HSA-CED.A.4". Keywords: (none new).

## 03-circuit-energy/ -- Energy in circuits

Compute electric power and energy, explain how circuits at home are protected, store energy in a capacitor, and design a circuit to a goal. Standards: HS-PS3-1, HS-PS3-2, HS-PS3-3, HSN-Q.A.1.

1. `01-electric-power.md` -- Compute electric power with P = IV and P = I^2 R, and explain which lamp glows brighter.  
   Standards: "HS-PS3-1". Keywords: "electric power".
2. `02-kilowatt-hours.md` -- Compute the energy a device uses in kilowatt-hours and joules, and what it costs at a given price.  
   Standards: "HS-PS3-1", "HSN-Q.A.1". Keywords: "kilowatt-hour".
3. `03-circuits-at-home.md` -- Explain why a home's outlets are wired in parallel, and how fuses, circuit breakers and grounding protect people.  
   Standards: "HS-PS3-3". Keywords: "fuse", "circuit breaker".
4. `04-capacitors.md` -- Explain how a capacitor stores charge and energy in its electric field, and use C = Q/V.  
   Standards: "HS-PS3-2". Keywords: "capacitor", "capacitance", "farad".
5. `05-designing-a-circuit.md` -- Design a circuit in a simulation that meets a goal, such as a lamp's brightness from a given battery, and explain the choices.  
   Standards: "HS-PS3-3". Keywords: (none new).

## 04-magnetism/ -- Magnetism and induction

Explain magnetic fields, how currents make them and feel forces in them, how a changing magnetic field makes a current in motors, generators and transformers, and how changing fields make light. Standards: HS-PS2-5, HS-PS3-5, HS-PS3-3, HS-PS4-1, HSA-CED.A.4.

1. `01-magnets.md` -- Describe magnetic poles and the magnetic field of a magnet and of Earth, with field lines and a compass.  
   Standards: "HS-PS3-5". Keywords: "magnetic pole", "magnetic field".
2. `02-currents-make-fields.md` -- Show that an electric current makes a magnetic field, and find its direction with the right-hand rule.  
   Standards: "HS-PS2-5". Keywords: "right-hand rule".
3. `03-electromagnets.md` -- Explain how a coil with a current, and an iron core, make an electromagnet, and what makes it stronger.  
   Standards: "HS-PS2-5". Keywords: "solenoid", "electromagnet".
4. `04-magnetic-force.md` -- Find the force on a current in a magnetic field, F = BIL, and its direction.  
   Standards: "HS-PS3-5", "HSA-CED.A.4". Keywords: "magnetic force", "tesla".
5. `05-electric-motors.md` -- Explain how an electric motor turns electric energy into motion.  
   Standards: "HS-PS3-3". Keywords: "electric motor".
6. `06-induction.md` -- Show that a changing magnetic field through a coil makes a current, and predict its direction from how the field changes.  
   Standards: "HS-PS2-5". Keywords: "electromagnetic induction", "induced current".
7. `07-generators.md` -- Explain how a generator turns motion into alternating current, and tell alternating from direct current.  
   Standards: "HS-PS2-5", "HS-PS3-3". Keywords: "generator", "alternating current", "direct current".
8. `08-transformers.md` -- Use the turns of a transformer to find its output voltage, and explain why power lines use high voltages.  
   Standards: "HS-PS2-5", "HSA-CED.A.4". Keywords: "transformer".
9. `09-fields-and-light.md` -- Explain that a changing electric field makes a magnetic field and the reverse, so linked fields travel as an electromagnetic wave at the speed of light.  
   Standards: "HS-PS4-1", "HS-PS2-5". Keywords: (none new).

## 05-quantum/ -- Photons and atoms

Use the photon model of light to explain the photoelectric effect, atomic spectra, the effects of radiation on the body, and solar cells. Standards: HS-PS4-3, HS-PS4-4, HS-PS4-5, HSA-CED.A.4.

1. `01-photons.md` -- Compute a photon's energy with E = hf, in joules and electronvolts.  
   Standards: "HS-PS4-3", "HSA-CED.A.4". Keywords: "photon", "Planck's constant", "electronvolt".
2. `02-photoelectric-effect.md` -- Explain the photoelectric effect, and why it needs the photon model and not the wave model.  
   Standards: "HS-PS4-3". Keywords: "photoelectric effect", "threshold frequency".
3. `03-wave-particle-duality.md` -- Decide which model of light, wave or particle, explains an experiment better, and say that electrons diffract too.  
   Standards: "HS-PS4-3". Keywords: "wave-particle duality".
4. `04-atomic-spectra.md` -- Explain emission and absorption spectra by electrons moving between energy levels and giving out or taking in photons.  
   Standards: "HS-PS4-3". Keywords: "energy level", "emission spectrum", "absorption spectrum".
5. `05-radiation-and-the-body.md` -- Tell ionizing from non-ionizing radiation by photon energy, and judge claims about the effects of radiation by their evidence.  
   Standards: "HS-PS4-4". Keywords: "ionizing radiation", "non-ionizing radiation".
6. `06-solar-cells-and-sensors.md` -- Explain how solar cells and camera sensors turn photons into electric current.  
   Standards: "HS-PS4-5". Keywords: "solar cell".

## 06-information/ -- Signals and information

Compare analog and digital signals, and explain how waves send information and how devices store it. Standards: HS-PS4-2, HS-PS4-5.

1. `01-analog-and-digital.md` -- Tell an analog signal from a digital one, and turn a signal into bits by sampling it.  
   Standards: "HS-PS4-2". Keywords: "signal (information)", "analog signal", "digital signal", "bit (binary digit)", "sampling (of a signal)".
2. `02-noise-and-copies.md` -- Weigh the advantages and disadvantages of digital signals: noise, copying, compression and loss.  
   Standards: "HS-PS4-2". Keywords: "noise (in a signal)".
3. `03-sending-signals.md` -- Explain how radio waves and optical fibers carry information by changing a carrier wave.  
   Standards: "HS-PS4-5". Keywords: "carrier wave", "modulation".
4. `04-storing-information.md` -- Compare magnetic, optical and flash storage, and weigh how long and how safely each keeps information.  
   Standards: "HS-PS4-2". Keywords: (none new).

## 07-nuclear/ -- The nucleus

Describe the nucleus, radioactive decay and half-life, and explain the energy of fission and fusion with E = mc^2. Standards: HS-PS1-8, HSF-LE.A.1c, HSA-CED.A.4.

1. `01-the-nucleus.md` -- Describe the nucleus by its atomic number and mass number, tell isotopes apart, and explain what holds it together.  
   Standards: "HS-PS1-8". Keywords: "nucleus (of an atom)", "atomic number", "mass number", "isotope", "strong nuclear force".
2. `02-radioactive-decay.md` -- Describe alpha, beta and gamma decay, and balance a nuclear equation.  
   Standards: "HS-PS1-8". Keywords: "radioactive decay", "alpha decay", "beta decay", "gamma decay".
3. `03-half-life.md` -- Use half-life to find how much of a sample is left after a time.  
   Standards: "HS-PS1-8", "HSF-LE.A.1c". Keywords: "half-life".
4. `04-mass-and-energy.md` -- Use E = mc^2 to find the energy released when mass is lost in a nuclear change.  
   Standards: "HS-PS1-8", "HSA-CED.A.4". Keywords: "mass-energy equivalence", "binding energy".
5. `05-fission.md` -- Explain nuclear fission, chain reactions, and how a power plant uses them.  
   Standards: "HS-PS1-8". Keywords: "nuclear fission", "chain reaction".
6. `06-fusion.md` -- Explain nuclear fusion, why it needs great temperatures, and how it powers the sun.  
   Standards: "HS-PS1-8". Keywords: "nuclear fusion".
