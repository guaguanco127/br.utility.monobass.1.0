# Max/MSP Abstraction: br.utility.monobass.2.1  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.monobass.2.1, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.monobass](https://github.com/guaguanco127/br.utility.monobass)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents 

[About](#About)   
[Which file?](#Files)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  
[Credits](#Credits) 

## <a name="About"></a>About

Sums the bass of a stereo signal to mono and leaves the highs in stereo, click-free. A crossover splits each side at Freq: below it, Left + Right goes to both outputs; above it, each side stays as it was. Low notes carry most of the energy but are hard to place in space, and stereo or out-of-phase bass can thin out or disappear on mono systems (clubs, phones, vinyl), so mono bass keeps the low end solid everywhere. Works at any sample rate.

Switching Bass Mono on or off crossfades over 10 ms, Mix changes glide over 10 ms, and Freq glides over 30 ms, so nothing clicks while audio plays, even when you sweep the crossover.

Mix sets how much the low sum is turned down, because L + R adds up to a different level depending on the bass:

| Mix | Gain | Use it for | Why |
|---|---|---|---|
| 0 | 0 dB | Bass on one side only | The silent side adds nothing, so the level is already right |
| 1 | -3 dB | Stereo bass: L and R different | Different signals add up about 3 dB louder on average |
| 2 | -4.5 dB | A full mix: centered and wide parts together | Halfway between -3 and -6, the smallest error for both |
| 3 | -6 dB (default) | Centered bass: L and R the same (most bass) | Identical signals add up exactly twice as loud (+6 dB), so halving gives it back unchanged |

When in doubt use -6 dB: it is the only setting that can never clip.

**Off is not exactly the dry signal.** Both sides always run through the crossover, even with Bass Mono off, and switching only fades the lows between stereo and mono. That keeps the switch free of comb filtering. The cost: with Bass Mono off, the bass keeps a small phase shift around Freq at the same level. You won't hear it on its own; it only matters if you blend this output with the untouched signal (for example on a parallel bus).

Out-of-phase bass (one side upside down) cancels when summed, just as it would on a mono system: monobass lets you hear that problem rather than hide it.

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.utility.monobass.2.1 | No UI. The plain object to patch with |
| br.utility.monobass.ui.2.1 | With a Bass Mono button, a Freq dial and a Mix menu, ready for a [bpatcher] |
| _br.utility.monobass.example.2.1 | Example patch with a wide synth bass: open this first |

The UI version contains the plain version and has the same inlets and outlets, so either swaps in without rewiring. Open the UI version in patching mode for comments on how it is built.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed, and that the Max patch you are using is saved inside a folder.  

2. Copy the .maxpat files you want into the same folder as your patch. The UI version needs the plain version next to it (br.utility.monobass.ui.2.1 uses br.utility.monobass.2.1).

3. In your patch, create an object called br.utility.monobass.2.1. For the version with controls, create a [bpatcher] and choose br.utility.monobass.ui.2.1.maxpat as its patcher.

## <a name="Use"></a>How To Use

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | | |
| 2 | Right In | Signal | | |
| 3 | Bass Mono | Signal or Float (UI: Int only) | 0 = off, bass stays stereo; 1 = on, bass below Freq is L + R on both sides | 1 (on) |
| 4 | Freq | Signal or Float (UI: Float only) | Crossover in Hz: 20 to 20000 (UI dial: 20 to 1000) | 120 |
| 5 | Mix | Int | 0 = 0 dB, 1 = -3 dB, 2 = -4.5 dB, 3 = -6 dB | 3 (-6 dB) |

Outlets 1 / 2: Left Out / Right Out (Signal). With Bass Mono on, both carry the same mono bass plus their own highs.  
Outlet 3: State (Message), see [State outlet](#State)

Bass Mono and Freq also take signals, so a square wave can switch Bass Mono or an LFO can move the crossover (the example patch switches Bass Mono with a square wave). In the UI version, numbers into the right inlets move the button, the dial and the menu, so the screen always shows what you hear. Hover any inlet or outlet in Max for its description.

## <a name="State"></a>State outlet

The last outlet of every abstraction (State) sends the current settings as named messages the moment they change: `mono 1`, `freq 120.` and `mix 3`. Use it to keep a display, Mira or another patch in sync. Pick it out by name with [route mono freq mix], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| mono | Int | 0 - 1, 1 = bass mono |
| freq | Float | crossover in Hz (UI: 20 - 1000; core: 20 - 20000) |
| mix | Int | menu index 0 - 3: 0 = 0 dB, 1 = -3 dB, 2 = -4.5 dB, 3 = -6 dB |

Only numbers are reported: if a signal drives the Bass Mono or Freq inlet of the plain version, nothing comes out of State. Mix is sent as the menu index, the same number the Mix inlet takes, so a State message can go straight back into an inlet. The names match br.utility.mono, so one [route mono freq mix] reads both tools. The example patch has a State outlet tab that shows all of this, and the RNBO patch shows the same [route mono freq mix].


Double-click the object to see inside it and study how it was built.

## <a name="Credits"></a>Credits

The crossover is Graham Wakefield's gen~ crossover from the Max gen~ examples (gen~.crossover: a lowpass and a highpass that add back up to an allpass, so splitting the signal doesn't change its level). Rewritten here as GenExpr code with the allpass sharing the lowpass memory, so the crossover can move without clicking. The mono summing, the Mix settings, the click-free switching and the UI are by Brian Riordan.
