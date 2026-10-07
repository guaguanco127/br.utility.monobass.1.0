{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            85.0,
            104.0,
            1200.0,
            640.0
        ],
        "description": "_br.utility.mono.example.2.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
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
                        630.0,
                        15.0,
                        470.0,
                        33.0
                    ],
                    "text": "_br.utility.monobass.example.2.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/",
                    "linecount": 2
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 24.0,
                    "maxclass": "comment",
                    "id": "obj-title",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        15.0,
                        300.0,
                        33.0
                    ],
                    "text": "br.utility.monobass"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-n1",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        57.0,
                        560.0,
                        33.0
                    ],
                    "text": "Sums the bass of a stereo signal to mono and leaves the highs in stereo, click-free. Freq sets the crossover; Mix sets how much the low sum is turned down."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-n2",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        105.0,
                        560.0,
                        60.0
                    ],
                    "text": "Two files, same DSP inside:\nbr.utility.monobass.2.0 = core, no UI (in: L, R, Bass Mono, Freq, Mix)\nbr.utility.monobass.ui.2.0 = the same with a Bass Mono button, a Freq dial and a Mix menu",
                    "linecount": 4
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-n3",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        175.0,
                        560.0,
                        75.0
                    ],
                    "text": "A: raise A's slider and toggle Bass Mono. Off: the bass swirls between the speakers. On: it sits in the middle and pulses slowly, which is what a mono speaker would play. Sweep Freq: the harmonics above it stay wide."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-n4",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        260.0,
                        560.0,
                        33.0
                    ],
                    "text": "B: the core's Bass Mono inlet takes a signal. A square wave switches B's bass between stereo and mono once a second: the 10 ms crossfade and the always-on crossover keep every switch clean."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-n5",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        310.0,
                        560.0,
                        20.0
                    ],
                    "text": "Numbers into the UI's inlets move its controls. Hover any inlet or outlet for its range and default."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-n6",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        512.0,
                        573.0,
                        20.0
                    ],
                    "text": "Outputs start muted at -70 dB: turn on audio, then raise ONE slider slowly (A and B play the same source)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-n7",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        550.0,
                        300.0,
                        20.0
                    ],
                    "text": "By Brian Riordan. github.com/guaguanco127"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-source",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            100.0,
                            100.0,
                            420.0,
                            260.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "comment",
                                    "id": "src-note",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        15.0,
                                        15.0,
                                        520.0,
                                        33.0
                                    ],
                                    "text": "Wide synth bass made in the gen~ (open it): 55 Hz left, 55.5 Hz right, like a chorused bass. No sample files needed."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "newobj",
                                    "id": "src-gen",
                                    "text": "gen~ @title wide-bass",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        15.0,
                                        70.0,
                                        200.0,
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
                                                    "maxclass": "codebox",
                                                    "id": "obj-cb",
                                                    "numinlets": 0,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        50.0,
                                                        20.0,
                                                        700.0,
                                                        460.0
                                                    ],
                                                    "parameter_enable": 0,
                                                    "code": "// example source: a wide synth bass, a slightly different note on each side like a chorused bass\n// out1/out2 bass L/R\nHistory ph1(0);\nHistory ph2(0);\nHistory pl(0);\n\n// read state first\na1 = ph1;\na2 = ph2;\np = pl;\n\n// 55 Hz (A1) on the left, 55.5 Hz on the right: in stereo it swirls, in mono it pulses once every 2 seconds\na1 = wrap(a1 + 55 / samplerate, 0, 1);\na2 = wrap(a2 + 55.5 / samplerate, 0, 1);\n// smooth 2 Hz pulse so it moves like a bass line\np = wrap(p + 2 / samplerate, 0, 1);\nenv = 0.55 + 0.45 * cos(twopi * p);\n// fundamental + 2nd + 3rd harmonic: sweep Freq to hear the harmonics above it stay wide\nout1 = (sin(twopi * a1) + 0.5 * sin(2 * twopi * a1) + 0.25 * sin(3 * twopi * a1)) * 0.3 * env;\nout2 = (sin(twopi * a2) + 0.5 * sin(2 * twopi * a2) + 0.25 * sin(3 * twopi * a2)) * 0.3 * env;\n\n// write state last\nph1 = a1;\nph2 = a2;\npl = p;\n",
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
                                                        500.0,
                                                        120.0,
                                                        22.0
                                                    ],
                                                    "text": "out 1 @comment \"Bass L\""
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
                                                        400.0,
                                                        500.0,
                                                        120.0,
                                                        22.0
                                                    ],
                                                    "text": "out 2 @comment \"Bass R\""
                                                }
                                            }
                                        ],
                                        "lines": [
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
                                    }
                                }
                            },
                            {
                                "box": {
                                    "comment": "Left Source (Signal) wide bass, 55 Hz",
                                    "id": "src-o1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        15.0,
                                        130.0,
                                        30.0,
                                        30.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "maxclass": "outlet",
                                    "id": "src-o2",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "index": 2,
                                    "patching_rect": [
                                        200.0,
                                        130.0,
                                        30.0,
                                        30.0
                                    ],
                                    "comment": "Right Source (Signal) wide bass, 55.5 Hz"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "src-gen",
                                        0
                                    ],
                                    "destination": [
                                        "src-o1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "src-gen",
                                        1
                                    ],
                                    "destination": [
                                        "src-o2",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        630.0,
                        135.0,
                        90.0,
                        22.0
                    ],
                    "text": "p wide-bass"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-alabel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        630.0,
                        175.0,
                        220.0,
                        20.0
                    ],
                    "text": "A: br.utility.monobass.ui.2.0"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-a",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "br.utility.monobass.ui.2.0.maxpat",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        630.0,
                        205.0,
                        58.0,
                        108.0
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-blabel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        870.0,
                        175.0,
                        230.0,
                        20.0
                    ],
                    "text": "B: switches Bass Mono on and off (Hz)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "newobj",
                    "id": "obj-rateinit",
                    "text": "loadmess 0.5",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        870.0,
                        200.0,
                        85.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "flonum",
                    "id": "obj-rate",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "format": 6,
                    "minimum": 0.0,
                    "maximum": 10.0,
                    "parameter_enable": 0,
                    "patching_rect": [
                        870.0,
                        230.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "newobj",
                    "id": "obj-phasor",
                    "text": "phasor~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        870.0,
                        260.0,
                        60.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "newobj",
                    "id": "obj-sq",
                    "text": "<~ 0.5",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        870.0,
                        290.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-sqnote",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        930.0,
                        290.0,
                        170.0,
                        20.0
                    ],
                    "text": "square: 1 = mono, 0 = stereo"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "newobj",
                    "id": "obj-b",
                    "text": "br.utility.monobass.2.0",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        810.0,
                        340.0,
                        330.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-bnote",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        1145.0,
                        340.0,
                        40.0,
                        20.0
                    ],
                    "text": "core"
                }
            },
            {
                "box": {
                    "id": "obj-gaina",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        630.0,
                        420.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "A out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "A",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "A out"
                }
            },
            {
                "box": {
                    "id": "obj-gainb",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        870.0,
                        420.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "B out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "B",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "B out"
                }
            },
            {
                "box": {
                    "id": "obj-dactog",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        700.0,
                        420.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dacnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        730.0,
                        420.0,
                        75.0,
                        20.0
                    ],
                    "text": "audio on/off"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        630.0,
                        580.0,
                        72.0,
                        22.0
                    ],
                    "text": "dac~ 1 2"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-source",
                        0
                    ],
                    "destination": [
                        "obj-a",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-source",
                        1
                    ],
                    "destination": [
                        "obj-a",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-source",
                        0
                    ],
                    "destination": [
                        "obj-b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-source",
                        1
                    ],
                    "destination": [
                        "obj-b",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rateinit",
                        0
                    ],
                    "destination": [
                        "obj-rate",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rate",
                        0
                    ],
                    "destination": [
                        "obj-phasor",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-phasor",
                        0
                    ],
                    "destination": [
                        "obj-sq",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-sq",
                        0
                    ],
                    "destination": [
                        "obj-b",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-a",
                        0
                    ],
                    "destination": [
                        "obj-gaina",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-a",
                        1
                    ],
                    "destination": [
                        "obj-gaina",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-b",
                        0
                    ],
                    "destination": [
                        "obj-gainb",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-b",
                        1
                    ],
                    "destination": [
                        "obj-gainb",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gaina",
                        0
                    ],
                    "destination": [
                        "obj-dac",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gaina",
                        1
                    ],
                    "destination": [
                        "obj-dac",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gainb",
                        0
                    ],
                    "destination": [
                        "obj-dac",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gainb",
                        1
                    ],
                    "destination": [
                        "obj-dac",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-dactog",
                        0
                    ],
                    "destination": [
                        "obj-dac",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-a::obj-mono": [
                "Mono",
                "Mono",
                0
            ],
            "obj-a::obj-mix": [
                "Mix",
                "Mix",
                0
            ],
            "obj-gaina": [
                "A out",
                "A",
                0
            ],
            "obj-gainb": [
                "B out",
                "B",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ],
                    "buttons": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}