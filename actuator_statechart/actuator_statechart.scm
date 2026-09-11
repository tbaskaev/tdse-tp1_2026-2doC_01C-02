{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "attrs": {
          "name": {
            "text": "actuator_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninternal:\n    var led_tick : integer\n\ninterface:\n    in event EV_ACT_OPEN\n    in event EV_ACT_CLOSE\n    out event ACT_LED_ON\n    out event ACT_LED_OFF\n    out event ACT_LED_FBLINK\n    out event ACT_LED_SBLINK"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -468,
          "y": -164
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "856cc2b5-29bf-48b9-bf7a-1b1d6302c8d3",
        "z": 2,
        "embeds": [
          "0baff1ce-e165-4722-8c55-1aeeebd5a143"
        ]
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -468,
          "y": -149
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "0baff1ce-e165-4722-8c55-1aeeebd5a143",
        "z": 3,
        "parent": "856cc2b5-29bf-48b9-bf7a-1b1d6302c8d3"
      },
      {
        "position": {
          "x": -468,
          "y": -98
        },
        "size": {
          "height": 75,
          "width": 126
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_CLOSED",
            "fontSize": 11
          }
        },
        "id": "8f188bcb-624a-456f-885b-a25a8828f56a",
        "z": 12,
        "embeds": [
          "7acb4661-4fa6-4157-8805-3499f9b2731c"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "856cc2b5-29bf-48b9-bf7a-1b1d6302c8d3"
        },
        "target": {
          "id": "8f188bcb-624a-456f-885b-a25a8828f56a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "5.556%",
              "dy": "29.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "60525dcf-e3c1-4905-b79f-d403053ee182",
        "z": 13,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 66,
          "y": -98
        },
        "size": {
          "height": 75,
          "width": 137
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_OPENING",
            "fontSize": 11
          }
        },
        "id": "8a813716-1347-4bde-9496-19b9b6ff4d91",
        "z": 16,
        "embeds": [
          "f58885fa-de63-4bb5-b51e-86305ca68edf"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "8f188bcb-624a-456f-885b-a25a8828f56a"
        },
        "target": {
          "id": "8a813716-1347-4bde-9496-19b9b6ff4d91",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "5.109%",
              "dy": "8%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_OPEN / raise ACT_LED_FBLINK ; led_tick = 1000"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f47775c5-5f89-44e7-8494-d8fae0488567",
        "z": 17,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 66,
          "y": 123
        },
        "size": {
          "height": 75,
          "width": 137
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_OPEN",
            "fontSize": 11
          }
        },
        "id": "c44963bc-ccfb-49f7-b6c7-c9c23bcfbd5c",
        "z": 18,
        "embeds": [
          "06a8f469-891f-4e78-bb7c-913bc1008e64"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "8a813716-1347-4bde-9496-19b9b6ff4d91"
        },
        "target": {
          "id": "c44963bc-ccfb-49f7-b6c7-c9c23bcfbd5c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "94.891%",
              "dy": "8%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[led_tick == 0] / raise ACT_LED_ON"
              }
            },
            "position": {
              "distance": 0.4383561643835616,
              "offset": -132,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d1fe0a87-7050-4370-9907-55f78cfe9da9",
        "z": 19,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -468,
          "y": 123
        },
        "size": {
          "height": 75,
          "width": 126
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_CLOSING",
            "fontSize": 11
          }
        },
        "id": "e7681eaa-28a6-4643-adaa-2c9e3ae8b228",
        "z": 20,
        "embeds": [
          "e709c1ea-1164-4100-8d2f-2de43a09a4f2"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "c44963bc-ccfb-49f7-b6c7-c9c23bcfbd5c"
        },
        "target": {
          "id": "e7681eaa-28a6-4643-adaa-2c9e3ae8b228",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "96.032%",
              "dy": "8%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_CLOSE / raise ACT_LED_SBLINK ; led_tick = 1000"
              }
            },
            "position": {
              "offset": 11,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1f1858a0-e97b-442f-bf6e-914c671c6817",
        "z": 21,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "8f188bcb-624a-456f-885b-a25a8828f56a"
        },
        "target": {
          "id": "8f188bcb-624a-456f-885b-a25a8828f56a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "25.397%",
              "dy": "10.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_CLOSE "
              }
            },
            "position": {
              "distance": 0.3961945312925288,
              "offset": 11.089980798665842,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "7acb4661-4fa6-4157-8805-3499f9b2731c",
        "z": 22,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "8f188bcb-624a-456f-885b-a25a8828f56a"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "8a813716-1347-4bde-9496-19b9b6ff4d91"
        },
        "target": {
          "id": "8a813716-1347-4bde-9496-19b9b6ff4d91",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "26.277%",
              "dy": "1.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "every 1 ms [led_tick > 0] / led_tick = led_tick - 1"
              }
            },
            "position": {
              "distance": 0.4856054608127388,
              "offset": 20,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f58885fa-de63-4bb5-b51e-86305ca68edf",
        "z": 23,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "8a813716-1347-4bde-9496-19b9b6ff4d91"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "8a813716-1347-4bde-9496-19b9b6ff4d91",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "10.949%",
              "dy": "100%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "e7681eaa-28a6-4643-adaa-2c9e3ae8b228",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "84.921%",
              "dy": "20%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_CLOSE / led_tick = 1000 - led_tick ; raise ACT_LED_SBLINK"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e8b2198e-becb-4ff7-b953-33bf404069c9",
        "z": 24,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -112,
            "y": 48
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "c44963bc-ccfb-49f7-b6c7-c9c23bcfbd5c"
        },
        "target": {
          "id": "c44963bc-ccfb-49f7-b6c7-c9c23bcfbd5c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "80.292%",
              "dy": "94.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_OPEN"
              }
            },
            "position": {
              "distance": 0.49999995491148513,
              "offset": 10,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "06a8f469-891f-4e78-bb7c-913bc1008e64",
        "z": 25,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "c44963bc-ccfb-49f7-b6c7-c9c23bcfbd5c"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e7681eaa-28a6-4643-adaa-2c9e3ae8b228"
        },
        "target": {
          "id": "e7681eaa-28a6-4643-adaa-2c9e3ae8b228",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "82.54%",
              "dy": "96%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "every 1 ms [led_tick > 0] / led_tick = led_tick - 1"
              }
            },
            "position": {
              "distance": 0.6032774460856931,
              "offset": 13,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e709c1ea-1164-4100-8d2f-2de43a09a4f2",
        "z": 26,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "e7681eaa-28a6-4643-adaa-2c9e3ae8b228"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e7681eaa-28a6-4643-adaa-2c9e3ae8b228"
        },
        "target": {
          "id": "8f188bcb-624a-456f-885b-a25a8828f56a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "22.222%",
              "dy": "94.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[led_tick == 0] / raise ACT_LED_OFF"
              }
            },
            "position": {
              "distance": 0.5342465753424658,
              "offset": -101,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "5cc4b759-a8a6-4999-9712-82d22f510a47",
        "z": 27,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e7681eaa-28a6-4643-adaa-2c9e3ae8b228"
        },
        "target": {
          "id": "8a813716-1347-4bde-9496-19b9b6ff4d91",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "0.73%",
              "dy": "61.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_OPEN / led_tick = 1000 - led_tick ; raise ACT_LED_FBLINK"
              }
            },
            "position": {
              "distance": 0.5173312418055296,
              "offset": 15,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1276bf88-c173-44a0-96b2-f8bc7d083e2f",
        "z": 28,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -149,
            "y": -6
          }
        ]
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "ActuatorStatechart",
          "statemachinePrefix": "actuatorStatechart",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": false,
          "exitState": false,
          "generic": false
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}