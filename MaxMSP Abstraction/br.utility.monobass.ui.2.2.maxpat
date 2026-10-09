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
            960.0,
            500.0
        ],
        "bglocked": 0,
        "openinpresentation": 1,
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
        "devicewidth": 58.0,
        "description": "br.utility.monobass.ui.2.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
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
                        880.0,
                        15.0,
                        360.0,
                        33.0
                    ],
                    "text": "br.utility.monobass.ui.2.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/",
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
                    "comment": "Bass Mono (Int) 0 = off, bass stays stereo. 1 = on, bass below Freq is mono. Sets the button. Default 1"
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
                        295.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Freq (Float) crossover in Hz, 20 to 1000. Sets the dial. Default 120"
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
                        425.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Mix (Int) how the low L + R are combined. 0 = 0 dB (bass on one side only), 1 = -3 dB (stereo bass), 2 = -4.5 dB (full mix), 3 = -6 dB (centered bass, L = R, never clips). Sets the menu. Default 3"
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
                        280.0,
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
                        90.0,
                        280.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Right Out (Signal) mono bass + right highs when Bass Mono is on"
                }
            },
            {
                "box": {
                    "maxclass": "live.text",
                    "id": "obj-mono",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        60.0,
                        48.0,
                        20.0
                    ],
                    "parameter_enable": 1,
                    "presentation": 1,
                    "presentation_rect": [
                        5.0,
                        5.0,
                        48.0,
                        20.0
                    ],
                    "text": "Stereo",
                    "texton": "Mono",
                    "varname": "BassMono",
                    "annotation_name": "Bass Mono",
                    "annotation": "0/1. On = the bass below Freq is L + R on both sides; off = the bass stays stereo. Highs always stay stereo. 10 ms crossfade. Default on",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Bass Mono",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Bass Mono",
                            "parameter_type": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "annotation": "Hz. Bass below this goes mono, above it stays stereo. 20 to 1000 Hz. Default 120",
                    "annotation_name": "Freq",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-freq",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        295.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        7.0,
                        29.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                120.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Freq",
                            "parameter_mmax": 1000.0,
                            "parameter_mmin": 20.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Freq",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "Freq"
                }
            },
            {
                "box": {
                    "maxclass": "live.menu",
                    "id": "obj-mix",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        "float"
                    ],
                    "patching_rect": [
                        425.0,
                        60.0,
                        48.0,
                        17.0
                    ],
                    "parameter_enable": 1,
                    "presentation": 1,
                    "presentation_rect": [
                        5.0,
                        86.0,
                        48.0,
                        17.0
                    ],
                    "varname": "Mix",
                    "annotation_name": "Mix",
                    "annotation": "How the low L + R are combined: 0 dB = bass on one side only, -3 dB = stereo bass (L and R different), -4.5 dB = full mix (centered and wide parts), -6 dB = centered bass (L = R, most bass, never clips). Default -6 dB",
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "0 dB",
                                "-3 dB",
                                "-4.5 dB",
                                "-6 dB"
                            ],
                            "parameter_initial": [
                                3
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Mix",
                            "parameter_mmax": 3,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mix",
                            "parameter_type": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "newobj",
                    "id": "obj-core",
                    "text": "br.utility.monobass.2.2",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        170.0,
                        150.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-t1",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        580.0,
                        55.0,
                        280.0,
                        90.0
                    ],
                    "text": "Bass Mono button (live.text): lit = Mono, the bass below Freq is L + R on both sides; dark = Stereo. Freq dial (live.dial): the crossover. Mix menu (live.menu): how much the low sum is turned down. Initial values in the inspector: Bass Mono on, Freq 120 Hz, Mix -6 dB."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-t2",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        580.0,
                        155.0,
                        280.0,
                        75.0
                    ],
                    "text": "[br.utility.monobass.2.2] is the real object: open it to see the gen~ inside. This file only adds the controls, so you can also patch the core directly and drive Bass Mono or Freq with a signal (Freq up to 20 kHz there)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-t3",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        330.0,
                        655.0,
                        90.0
                    ],
                    "text": "Why mono bass: low notes carry most of the energy and you can barely hear where they come from. Stereo or out-of-phase bass can thin out or vanish in mono (club systems, phones, vinyl). Mix: centered bass (the same on both sides, most bass) doubles in L + R = +6 dB, so -6 dB gives it back unchanged. Stereo bass adds up to about +3 dB, so -3 dB; a full mix is both, so -4.5 dB; bass on one side only adds nothing, so 0 dB. When in doubt use -6 dB: it can never clip."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "comment",
                    "id": "obj-t4",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        430.0,
                        655.0,
                        60.0
                    ],
                    "text": "Off is not exactly the dry signal: the crossover still runs, so the bass keeps a small phase shift around Freq at the same level. That is what keeps the on/off fade free of comb filtering. Numbers into the right inlets move the controls and drive the core, so the screen always shows what you hear."
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "annotation": "br.utility.monobass.ui.2.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "hint": "br.utility.monobass.ui.2.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "id": "obj-panel",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        880.0,
                        60.0,
                        80.0,
                        110.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        80.0,
                        115.0
                    ],
                    "proportion": 0.5,
                    "rounded": 7
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
                        165.0,
                        280.0,
                        30.0,
                        30.0
                    ],
                    "comment": "State (Message): mono 0/1, freq <Hz> and mix 0-3, sent the moment a control changes. Pick them out by name: [route mono freq mix]"
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-2",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        500.0,
                        565.0,
                        47.0
                    ],
                    "text": "The last outlet (State) reports the controls as mono 0/1, freq <Hz> and mix 0-3 the moment they change. Each control is tapped on its way into the core, so moving it, numbers into the inlets and preset recalls all show up. Only the UI has one: whatever drives the core directly already knows the values. Pick them out by name with [route mono freq mix].",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-3",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        125.0,
                        51.0,
                        22.0
                    ],
                    "text": "t i i",
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
                        165.0,
                        200.0,
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
                    "id": "obj-5",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        230.0,
                        110.0,
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
                    "id": "obj-6",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        295.0,
                        125.0,
                        51.0,
                        22.0
                    ],
                    "text": "t f f",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-7",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        295.0,
                        200.0,
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
                    "id": "obj-8",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        295.0,
                        230.0,
                        110.0,
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
                    "id": "obj-9",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        425.0,
                        125.0,
                        51.0,
                        22.0
                    ],
                    "text": "t i i",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-10",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        425.0,
                        200.0,
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
                    "id": "obj-11",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        425.0,
                        230.0,
                        110.0,
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
                        "obj-core",
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
                        "obj-core",
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
                        "obj-mono",
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
                        "obj-freq",
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
                        "obj-mix",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
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
                        "obj-core",
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
                        "obj-mono",
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
                        1
                    ],
                    "destination": [
                        "obj-core",
                        2
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
                        "obj-freq",
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
                        1
                    ],
                    "destination": [
                        "obj-core",
                        3
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
                        "obj-8",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-8",
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
                        "obj-mix",
                        0
                    ],
                    "destination": [
                        "obj-9",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-9",
                        1
                    ],
                    "destination": [
                        "obj-core",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-9",
                        0
                    ],
                    "destination": [
                        "obj-10",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-10",
                        0
                    ],
                    "destination": [
                        "obj-11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-11",
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
        "autosave": 0,
        "openrect": [
            85.0,
            104.0,
            58.0,
            108.0
        ],
        "parameters": {
            "obj-mono": [
                "Bass Mono",
                "Bass Mono",
                0
            ],
            "obj-freq": [
                "Freq",
                "Freq",
                0
            ],
            "obj-mix": [
                "Mix",
                "Mix",
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
        }
    }
}