# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.utility.monobass.2.1
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.monobass.2.1, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.monobass](https://github.com/guaguanco127/br.utility.monobass)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9, or RNBO.

## Links

[About](#About)  
[Max/MSP Abstraction](https://github.com/guaguanco127/br.utility.monobass/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP   
[Max/MSP RNBO for External or VST](https://github.com/guaguanco127/br.utility.monobass/tree/main/RNBO%20Patchers%20for%20External%20or%20VST) To build your own Max external, or a VST or AU audio plugin (needs RNBO)  
[Ableton Max for Live Device](https://github.com/guaguanco127/br.utility.monobass/tree/main/Ableton%20Max%20For%20Live) To use inside of Ableton Suite   

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

You can use it as an abstraction within Max/MSP or as a Max for Live device within Ableton Live Suite. With RNBO you can also build your own Max external or VST/AU plugin from the included RNBO patch.

## <a name="New21"></a>What's new in 2.1

- New [State outlet](#State): every abstraction and the RNBO patch now send `mono 1`, `freq 120.` and `mix 3` out of their last outlet the moment a setting changes, so a display, Mira or another patch can follow along.
- The inlets and the audio outlets are unchanged. Only the file names move from 2.0 to 2.1.
- The Max for Live device is unchanged apart from the version number.

## <a name="New"></a>What's new in 2.0

- **Mix numbers changed.** A new -4.5 dB setting (for full mixes) sits between -3 and -6, and the menu is now in order of value. Mix 2 used to mean -6 dB and now means -4.5 dB; -6 dB is now Mix 3 and is the new default (1.0 defaulted to -3 dB, which made centered bass 3 dB louder). If a 1.0 patch sends Mix 2, change it to 3.
- **No comb filtering when switching.** 1.0 crossfaded between the dry signal and the filtered one, which briefly comb-filtered around the crossover. 2.0 keeps both sides in the crossover and fades only the lows (see About).
- Switching crossfades over 10 ms and Mix glides over 10 ms (1.0 jumped in about half a millisecond, which could click). Freq glides over 30 ms and the crossover is rebuilt so fast sweeps don't click.
- Mix values are rounded and limited to 0-3 (in 1.0, an in-between or out-of-range value fell through to 0 dB).
- -3 and -6 dB are now exact (-6 dB is exactly half).
- Bass Mono is on by default (1.0's abstraction loaded switched off). The 3rd inlet is now called Bass Mono (1.0: On/Off).
- New UI version with a Bass Mono button, a Freq dial and a Mix menu, plus an example patch.
- One RNBO patch now makes both the Max external and the VST3/AU plugin. Prebuilt externals are no longer included: the abstraction does the same job, so build an external only if you need one.
- The Max for Live parameters are named Bass Mono, Freq and Mix (1.0's were "live.text", "live.numbox" and "live.menu"), so they read clearly in Live's automation lanes.
- File names changed (no more `.abs`). The inlets are in the same order as 1.0: L, R, Bass Mono, Freq, Mix.

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.utility.monobass.2.1 | No UI. The plain object to patch with |
| br.utility.monobass.ui.2.1 | With a Bass Mono button, a Freq dial and a Mix menu, ready for a [bpatcher] |
| _br.utility.monobass.example.2.1 | Example patch with a wide synth bass: open this first |

The UI version contains the plain version and has the same inlets and outlets, so either swaps in without rewiring. Open the UI version in patching mode for comments on how it is built.

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


## <a name="Credits"></a>Credits

The crossover is Graham Wakefield's gen~ crossover from the Max gen~ examples (gen~.crossover: a lowpass and a highpass that add back up to an allpass, so splitting the signal doesn't change its level). Rewritten here as GenExpr code with the allpass sharing the lowpass memory, so the crossover can move without clicking. The mono summing, the Mix settings, the click-free switching and the UI are by Brian Riordan.
