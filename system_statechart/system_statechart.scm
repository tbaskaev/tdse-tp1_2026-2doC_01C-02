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
            "text": "system_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninternal:\n    var timer : integer\n\ninterface:\n    in event EV_SYS_UP\n    in event EV_SYS_DOWN\n    out event EV_ACT_OPEN\n    out event EV_ACT_CLOSE"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -427,
          "y": -171
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "a6577aa4-97b2-4e4f-9274-aba7a4e7be9f",
        "z": 2,
        "embeds": [
          "58351b52-35c9-4d48-ade5-bb4783d6b2c1"
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
          "x": -427,
          "y": -156
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "58351b52-35c9-4d48-ade5-bb4783d6b2c1",
        "z": 3,
        "parent": "a6577aa4-97b2-4e4f-9274-aba7a4e7be9f"
      },
      {
        "position": {
          "x": -431,
          "y": -44
        },
        "size": {
          "height": 78,
          "width": 139
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SLEEP",
            "fontSize": 11
          }
        },
        "id": "b5fea460-5c67-46b5-97b7-fefcd85b1e92",
        "z": 6,
        "embeds": [
          "f82df488-66ba-4b25-bad3-700034fae486"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a6577aa4-97b2-4e4f-9274-aba7a4e7be9f"
        },
        "target": {
          "id": "b5fea460-5c67-46b5-97b7-fefcd85b1e92",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "9.353%",
              "dy": "48.718%",
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
        "id": "92bfe611-3c82-49bc-ba75-40a5591a5a42",
        "z": 7,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b5fea460-5c67-46b5-97b7-fefcd85b1e92"
        },
        "target": {
          "id": "b5fea460-5c67-46b5-97b7-fefcd85b1e92",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "26.619%",
              "dy": "6.41%",
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
                "text": "EV_SYS_UP "
              }
            },
            "position": {
              "distance": 0.4568146830039316,
              "offset": 8,
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
        "id": "f82df488-66ba-4b25-bad3-700034fae486",
        "z": 11,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "b5fea460-5c67-46b5-97b7-fefcd85b1e92"
      },
      {
        "position": {
          "x": 20,
          "y": -44
        },
        "size": {
          "height": 78,
          "width": 139
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_AWAKE",
            "fontSize": 11
          }
        },
        "id": "de913ccb-fd41-4617-9681-9e47b55314de",
        "z": 12,
        "embeds": [
          "062ecc2f-a1ee-4937-9b64-32b6e7e05ed8",
          "4051b601-325c-4102-adcc-3cf3062a5710"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b5fea460-5c67-46b5-97b7-fefcd85b1e92"
        },
        "target": {
          "id": "de913ccb-fd41-4617-9681-9e47b55314de",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "5.755%",
              "dy": "16.667%",
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
                "text": "EV_SYS_DOWN / raise EV_ACT_OPEN ; timer = 5000"
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
        "id": "9447c497-65af-4107-b0f5-eab4ebf93e31",
        "z": 13,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "de913ccb-fd41-4617-9681-9e47b55314de"
        },
        "target": {
          "id": "b5fea460-5c67-46b5-97b7-fefcd85b1e92",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "97.122%",
              "dy": "85.897%",
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
                "text": "EV_SYS_UP [timer == 0] / raise EV_ACT_CLOSE"
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
        "id": "a289cd1e-2e9d-4587-b427-480459fa1b96",
        "z": 13,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "de913ccb-fd41-4617-9681-9e47b55314de"
        },
        "target": {
          "id": "de913ccb-fd41-4617-9681-9e47b55314de",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "29.496%",
              "dy": "5.128%",
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
                "text": "every 1 ms [timer > 0] / timer = timer - 1"
              }
            },
            "position": {
              "distance": 0.484725447959061,
              "offset": 9,
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
        "id": "4051b601-325c-4102-adcc-3cf3062a5710",
        "z": 14,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 89.5,
            "y": -66
          }
        ],
        "parent": "de913ccb-fd41-4617-9681-9e47b55314de"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "de913ccb-fd41-4617-9681-9e47b55314de"
        },
        "target": {
          "id": "de913ccb-fd41-4617-9681-9e47b55314de",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "78.417%",
              "dy": "98.718%",
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
                "text": "EV_SYS_DOWN / timer = 5000"
              }
            },
            "position": {
              "distance": 0.5795008874521003,
              "offset": 8,
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
        "id": "062ecc2f-a1ee-4937-9b64-32b6e7e05ed8",
        "z": 15,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "de913ccb-fd41-4617-9681-9e47b55314de"
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
          "moduleName": "SystemStatechart",
          "statemachinePrefix": "systemStatechart",
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