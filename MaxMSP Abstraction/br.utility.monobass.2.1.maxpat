{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            85.0,
            104.0,
            840.0,
            400.0
        ],
        "bglocked": 0,
        "openinpresentation": 0,
        "default_fontsize": 12.0,
        "default_fontface": 0,
        "default_fontname": "Arial",
        "gridonopen": 1,
        "gridsize": [
            15.0,
            15.0
        ],
        "gridsnaponopen": 1,
        "objectsnaponopen": 1,
        "statusbarvisible": 2,
        "toolbarvisible": 1,
        "lefttoolbarpinned": 0,
        "toptoolbarpinned": 0,
        "righttoolbarpinned": 0,
        "bottomtoolbarpinned": 0,
        "toolbars_unpinned_last_save": 0,
        "tallnewobj": 0,
        "boxanimatetime": 200,
        "enablehscroll": 1,
        "enablevscroll": 1,
        "devicewidth": 0.0,
        "description": "br.utility.monobass.2.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "digest": "",
        "tags": "",
        "style": "",
        "subpatcher_template": "",
        "assistshowspatchername": 0,
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-signature",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        460.0,
                        15.0,
                        360.0,
                        33.0
                    ],
                    "text": "br.utility.monobass.2.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/",
                    "linecount": 2
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "inlet",
                    "id": "obj-in1",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Left In (Signal)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "inlet",
                    "id": "obj-in2",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        90.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Right In (Signal)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "inlet",
                    "id": "obj-in3",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Bass Mono (Signal/Float) 0 = off, bass stays stereo. 1 = on, bass below Freq is L + R on both sides. 10 ms crossfade. Default 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "inlet",
                    "id": "obj-in4",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        240.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Freq (Signal/Float) crossover in Hz, 20 to 20000. Below it the bass goes mono, above it stays stereo. 10 ms glide. Default 120"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "inlet",
                    "id": "obj-in5",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        315.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Mix (Int) how the low L + R are combined. 0 = 0 dB (bass on one side only), 1 = -3 dB (stereo bass), 2 = -4.5 dB (full mix), 3 = -6 dB (centered bass, L = R, never clips). 10 ms glide. Default 3"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "outlet",
                    "id": "obj-out1",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        140.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Left Out (Signal) mono bass + left highs when Bass Mono is on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "outlet",
                    "id": "obj-out2",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        315.0,
                        140.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Right Out (Signal) mono bass + right highs when Bass Mono is on"
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-gen",
                    "text": "gen~ @title br.utility.monobass.2.1",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        80.0,
                        330.0,
                        22.0
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 0,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [
                            100.0,
                            100.0,
                            900.0,
                            900.0
                        ],
                        "bglocked": 0,
                        "openinpresentation": 0,
                        "default_fontsize": 12.0,
                        "default_fontface": 0,
                        "default_fontname": "Arial",
                        "gridonopen": 1,
                        "gridsize": [
                            15.0,
                            15.0
                        ],
                        "gridsnaponopen": 1,
                        "objectsnaponopen": 1,
                        "statusbarvisible": 2,
                        "toolbarvisible": 1,
                        "lefttoolbarpinned": 0,
                        "toptoolbarpinned": 0,
                        "righttoolbarpinned": 0,
                        "bottomtoolbarpinned": 0,
                        "toolbars_unpinned_last_save": 0,
                        "tallnewobj": 0,
                        "boxanimatetime": 200,
                        "enablehscroll": 1,
                        "enablevscroll": 1,
                        "devicewidth": 0.0,
                        "description": "",
                        "digest": "",
                        "tags": "",
                        "style": "",
                        "subpatcher_template": "",
                        "assistshowspatchername": 0,
                        "dependency_cache": [],
                        "autosave": 0,
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "newobj",
                                    "id": "obj-1",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        20.0,
                                        155.0,
                                        22.0
                                    ],
                                    "text": "in 1 @comment \"Left In (Signal)\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "newobj",
                                    "id": "obj-2",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        215.0,
                                        20.0,
                                        155.0,
                                        22.0
                                    ],
                                    "text": "in 2 @comment \"Right In (Signal)\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "newobj",
                                    "id": "obj-3",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        380.0,
                                        20.0,
                                        155.0,
                                        22.0
                                    ],
                                    "text": "in 3 @comment \"Bass Mono (Signal/Float) 0 = off, bass stays stereo. 1 = on, bass below Freq is L + R on both sides. 10 ms crossfade. Default 1\" @default 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "newobj",
                                    "id": "obj-4",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        545.0,
                                        20.0,
                                        155.0,
                                        22.0
                                    ],
                                    "text": "in 4 @comment \"Freq (Signal/Float) crossover in Hz, 20 to 20000. Below it the bass goes mono, above it stays stereo. 10 ms glide. Default 120\" @default 120"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "newobj",
                                    "id": "obj-5",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        710.0,
                                        20.0,
                                        155.0,
                                        22.0
                                    ],
                                    "text": "in 5 @comment \"Mix (Int) how the low L + R are combined. 0 = 0 dB (bass on one side only), 1 = -3 dB (stereo bass, L and R different), 2 = -4.5 dB (full mix, centered and wide parts), 3 = -6 dB (centered bass, L = R, never clips). 10 ms glide. Default 3\" @default 3"
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "codebox",
                                    "id": "obj-cb",
                                    "numinlets": 5,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        70.0,
                                        815.0,
                                        900.0
                                    ],
                                    "parameter_enable": 0,
                                    "code": "// br.utility.monobass.2.1 -- bass to mono, highs stay stereo, click-free\n// Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/\n// Crossover: Graham Wakefield's gen~ crossover: 2nd-order lowpass, high = allpass - low, so low + high = allpass.\n// Here the allpass is built from the first lowpass stage, 2 * lp1 - x: the same filter, but it shares the lowpass\n// memory, so fast Freq moves can't click\n// MUST MATCH: the core, the UI, the RNBO host and the M4L device embed this same code\n// in1/in2 audio L/R\n// in3 Bass Mono 0/1, signal or number. 0 = off, bass stays stereo. 1 = on, bass below Freq is L + R on both sides\n// in4 Freq, the crossover in Hz, signal or number. Default 120\n// in5 Mix 0/1/2/3, how the low L + R are combined, same as br.utility.mono:\n//   0 = 0 dB   bass on one side only: the sum is the same level\n//   1 = -3 dB  stereo bass, L and R different: they add up about +3 dB louder\n//   2 = -4.5 dB full mix, centered and wide parts: halfway, the smallest error for both\n//   3 = -6 dB  centered bass, L = R, most bass: exactly twice as loud, so halve it, never clips\n// out1/out2 audio L/R\n// Both sides always run through the crossover, on or off. Only the lows fade between stereo and mono, so the fade\n// never mixes the dry signal with the filtered one: that would comb filter around Freq while it fades.\n// Off = low + high = the input with a small phase shift around Freq, at the same level.\n// Bass Mono on/off crossfades along a raised-cosine S-curve in exactly 10 ms, as br.utility.mute.\n// Mix glides over 10 ms, as br.utility.gain. Freq glides in octaves over 30 ms.\n\n// fade position: 0 = stereo bass, 1 = mono bass\nHistory pos(1);\n// mono sum gain, starts at the default -6 dB\nHistory gS(0.5);\n// smoothed crossover frequency\nHistory fS(120);\n// filter state, left: lowpass 1, lowpass 2\nHistory s1L(0);\nHistory s2L(0);\n// filter state, right\nHistory s1R(0);\nHistory s2R(0);\n\n// read state first\np = pos;\ng = gS;\nf = fS;\nl1 = s1L;\nl2 = s2L;\nr1 = s1R;\nr2 = s2R;\n\n// Bass Mono on/off: S-curve crossfade\ngoal = clamp(in3, 0, 1);\ninc = 1 / mstosamps(10);\nif (p < goal) {\n    p = min(p + inc, goal);\n}\nelse if (p > goal) {\n    p = max(p - inc, goal);\n}\nw = 0.5 - 0.5 * cos(p * pi);\n\n// glide coefficients: 10 ms for Mix, 30 ms for Freq\nk = 1 - exp(-1 / max(1, mstosamps(10)));\nkf = 1 - exp(-1 / max(1, mstosamps(30)));\n\n// Mix: 0 / -3 / -4.5 / -6 dB. -3 = sqrt(0.5) and -6 = 0.5 exactly; -4.5 = 0.5^0.75, halfway between them\nm = clamp(floor(in5 + 0.5), 0, 3);\nmg = (m < 0.5) ? 1 : ((m < 1.5) ? sqrt(0.5) : ((m < 2.5) ? pow(0.5, 0.75) : 0.5));\ng = g + (mg - g) * k;\n// within -120 dB of the target: land on it\nif (abs(mg - g) < 0.000001) {\n    g = mg;\n}\n\n// Freq: 20 Hz to 20 kHz, kept below Nyquist\nfg = clamp(in4, 20, min(20000, samplerate * 0.45));\n// glide in octaves over 30 ms; skipped once it has landed\nif (f != fg) {\n    f = exp(log(f) + (log(fg) - log(f)) * kf);\n    if (abs(fg - f) < 0.0001) {\n        f = fg;\n    }\n}\n\n// lowpass gain. t = tan of half the angle per sample; Wakefield's allpass coefficient, sin w - 1 over cos w, = 2b - 1\nt = tan(f * pi / samplerate);\nb = t / (t + 1);\n\n// left: two one-pole lowpasses in a row = 2nd order; allpass = 2 * first stage - input\nv1 = (in1 - l1) * b;\ny1 = v1 + l1;\nl1 = y1 + v1;\nv2 = (y1 - l2) * b;\nloL = v2 + l2;\nl2 = loL + v2;\napOutL = 2 * y1 - in1;\nhiL = apOutL - loL;\n\n// right: same\nv1 = (in2 - r1) * b;\ny1 = v1 + r1;\nr1 = y1 + v1;\nv2 = (y1 - r2) * b;\nloR = v2 + r2;\nr2 = loR + v2;\napOutR = 2 * y1 - in2;\nhiR = apOutR - loR;\n\n// lows: fade each side toward the mono sum; highs untouched\nmono = (loL + loR) * g;\nout1 = loL + (mono - loL) * w + hiL;\nout2 = loR + (mono - loR) * w + hiR;\n\n// write state last\npos = p;\ngS = g;\nfS = f;\ns1L = l1;\ns2L = l2;\ns1R = r1;\ns2R = r2;\n",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "newobj",
                                    "id": "obj-o1",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        50.0,
                                        990.0,
                                        300.0,
                                        22.0
                                    ],
                                    "text": "out 1 @comment \"Left Out (Signal) mono bass + left highs when Bass Mono is on\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "newobj",
                                    "id": "obj-o2",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        380.0,
                                        990.0,
                                        300.0,
                                        22.0
                                    ],
                                    "text": "out 2 @comment \"Right Out (Signal) mono bass + right highs when Bass Mono is on\""
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-1",
                                        0
                                    ],
                                    "destination": [
                                        "obj-cb",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-2",
                                        0
                                    ],
                                    "destination": [
                                        "obj-cb",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-3",
                                        0
                                    ],
                                    "destination": [
                                        "obj-cb",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-4",
                                        0
                                    ],
                                    "destination": [
                                        "obj-cb",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-5",
                                        0
                                    ],
                                    "destination": [
                                        "obj-cb",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-cb",
                                        0
                                    ],
                                    "destination": [
                                        "obj-o1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-cb",
                                        1
                                    ],
                                    "destination": [
                                        "obj-o2",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-why",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        180.0,
                        560.0,
                        75.0
                    ],
                    "text": "bass to mono without a click. A crossover splits each side at Freq: below it L + R go to both outputs, above it each side stays as it was. Both sides always run through the crossover, so turning Bass Mono on or off only fades the lows (10 ms) and never mixes dry with filtered, which would comb filter. Mix sets how much the low sum is turned down: -6 dB keeps centered bass (most bass) at the same level. State outlet (last): every number that changes a control goes out as mono 0/1, freq <Hz> and mix 0-3, through [change] so repeats are dropped. Signals feed the gen~ only and are not reported."
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "obj-1",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        390.0,
                        340.0,
                        30.0,
                        30.0
                    ],
                    "comment": "State (Message): mono 0/1, freq <Hz> and mix 0-3, sent the moment a control changes. Numbers only (signals are not reported). Pick them out by name: [route mono freq mix]"
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-2",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        390.0,
                        270.0,
                        72.0,
                        22.0
                    ],
                    "text": "change 0",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-3",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        390.0,
                        300.0,
                        100.0,
                        22.0
                    ],
                    "text": "prepend mono",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-4",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        510.0,
                        270.0,
                        79.0,
                        22.0
                    ],
                    "text": "change 0.",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-5",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        510.0,
                        300.0,
                        100.0,
                        22.0
                    ],
                    "text": "prepend freq",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-6",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        630.0,
                        270.0,
                        72.0,
                        22.0
                    ],
                    "text": "change 0",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-7",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        630.0,
                        300.0,
                        93.0,
                        22.0
                    ],
                    "text": "prepend mix",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-in1",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in2",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in3",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in4",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gen",
                        0
                    ],
                    "destination": [
                        "obj-out1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gen",
                        1
                    ],
                    "destination": [
                        "obj-out2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in5",
                        0
                    ],
                    "destination": [
                        "obj-gen",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in3",
                        0
                    ],
                    "destination": [
                        "obj-2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-2",
                        0
                    ],
                    "destination": [
                        "obj-3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-3",
                        0
                    ],
                    "destination": [
                        "obj-1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in4",
                        0
                    ],
                    "destination": [
                        "obj-4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-4",
                        0
                    ],
                    "destination": [
                        "obj-5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-5",
                        0
                    ],
                    "destination": [
                        "obj-1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in5",
                        0
                    ],
                    "destination": [
                        "obj-6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-6",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-7",
                        0
                    ],
                    "destination": [
                        "obj-1",
                        0
                    ]
                }
            }
        ],
        "dependency_cache": [],
        "autosave": 0
    }
}