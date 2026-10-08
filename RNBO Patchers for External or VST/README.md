# Max/MSP RNBO Patch for External or VST Creation: br.utility.monobass.rnbo.2.1  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.monobass.2.1, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.monobass](https://github.com/guaguanco127/br.utility.monobass)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents 

[About](#About)   
[What is an External for Max/MSP?](#External)  
[What is a VST or AU Audio Plugin?](#VST)  
[How To Export as a Max/MSP External](#Export)  
[How To Export as a VST or AU Audio Plugin](#ExportVST)  
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

One patch now does both jobs (1.0 had two). Inside [rnbo~], the Bass_Mono, Freq and Mix params are the plugin parameters, and inlets 3, 4 and 5 set the same params, so the external has the same five inlets as the abstraction: L, R, Bass Mono, Freq, Mix. The gen~ code inside is the same as br.utility.monobass.2.1. As plugin parameters, Freq runs 20 to 1000 Hz.

The settings also come out of [rnbo~]'s rightmost outlet as `mono 1`, `freq 120.` and `mix 3` the moment they change ([outport mono], [outport freq] and [outport mix] inside), matching the State outlet of the abstractions. The patch shows it picked out with [route mono freq mix].

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way. 

## <a name="VST"></a>What is a VST or AU Audio Plugin? 

A VST is a third party audio plugin generally run within a digital audio workstation (DAW). A VST is cross platform for both Windows and Mac. An AU works the same way but is Mac only. 

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.utility.monobass.rnbo.2.1.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.utility.monobass.2.1~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.utility.monobass.2.1, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.utility.monobass.2.1~ in any patch. It has the same inlets as the abstraction (L, R, Bass Mono, Freq, Mix), except that Bass Mono and Freq take numbers only.

## <a name="ExportVST"></a>How To Export as a VST or AU Audio Plugin

**Please note that you can only use an audio plugin on the same computer that you created it with RNBO. Sending an audio plugin to another computer will not work and be flagged as an unrecognized developer** 

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.utility.monobass.rnbo.2.1.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Select "Audio Plugin Export".

5. Choose VST3 or AU and the platform, name your plugin, and export. The Bass_Mono (off/on), Freq (20 to 1000 Hz) and Mix (0 / -3 / -4.5 / -6 dB) parameters show up in your DAW for automation.

## <a name="Credits"></a>Credits

The crossover is Graham Wakefield's gen~ crossover from the Max gen~ examples (gen~.crossover: a lowpass and a highpass that add back up to an allpass, so splitting the signal doesn't change its level). Rewritten here as GenExpr code with the allpass sharing the lowpass memory, so the crossover can move without clicking. The mono summing, the Mix settings, the click-free switching and the UI are by Brian Riordan.
