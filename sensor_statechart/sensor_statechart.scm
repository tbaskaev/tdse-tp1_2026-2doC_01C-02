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
            "text": "sensor_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\ninternal:\n    var tick : integer\n    \ninterface:\n    in event EV_BTN_UP\n    in event EV_BTN_DOWN\n    out event EV_SYS_DOWN\n    out event EV_SYS_UP"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -1269,
          "y": -444
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "82eb22bb-9e10-4992-bd59-e143e8cd7c5f",
        "z": 3,
        "embeds": [
          "39a26915-0f2b-4a19-ba0f-50c54f978e4a"
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
          "x": -1269,
          "y": -429
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "39a26915-0f2b-4a19-ba0f-50c54f978e4a",
        "z": 4,
        "parent": "82eb22bb-9e10-4992-bd59-e143e8cd7c5f"
      },
      {
        "position": {
          "x": -1276,
          "y": -337
        },
        "size": {
          "height": 72,
          "width": 178
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_UP",
            "fontSize": 11
          }
        },
        "id": "5fa741fb-fb93-49a9-9f9b-76ab3b2193e0",
        "z": 11,
        "embeds": [
          "b3807693-d890-42e6-b97f-d23d4002aa19"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "82eb22bb-9e10-4992-bd59-e143e8cd7c5f"
        },
        "target": {
          "id": "5fa741fb-fb93-49a9-9f9b-76ab3b2193e0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "9.551%",
              "dy": "23.611%",
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
        "id": "25c396de-4ced-4986-a3ec-aed67c4841ec",
        "z": 12,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -980,
          "y": -339
        },
        "size": {
          "height": 74,
          "width": 154
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_FALLING",
            "fontSize": 11
          }
        },
        "id": "50d4b083-7452-4bae-81ce-6bc844742ec2",
        "z": 25,
        "embeds": [
          "31856ff8-8d75-45ef-a423-fbd7b703a45e"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "5fa741fb-fb93-49a9-9f9b-76ab3b2193e0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "100%",
              "dy": "86.111%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "50d4b083-7452-4bae-81ce-6bc844742ec2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "4.054%",
              "dy": "86.667%",
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
                "text": "EV_BTN_DOWN / tick = 50"
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
        "id": "d0ec2f09-ae6d-477d-b048-3fd16bddae45",
        "z": 26,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "50d4b083-7452-4bae-81ce-6bc844742ec2"
        },
        "target": {
          "id": "5fa741fb-fb93-49a9-9f9b-76ab3b2193e0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "94.382%",
              "dy": "18.056%",
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
                "text": "EV_BTN_UP [tick == 0] "
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
        "id": "cbbac658-90cf-47a4-85fd-04fb02dd46b4",
        "z": 26,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "50d4b083-7452-4bae-81ce-6bc844742ec2"
        },
        "target": {
          "id": "50d4b083-7452-4bae-81ce-6bc844742ec2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "35.065%",
              "dy": "9.459%",
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
                "text": " every 1 ms [tick > 0]\n / tick = tick - 1"
              }
            },
            "position": {
              "distance": 0.38388652193451817,
              "offset": 34.50082048111117,
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
        "id": "31856ff8-8d75-45ef-a423-fbd7b703a45e",
        "z": 30,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "50d4b083-7452-4bae-81ce-6bc844742ec2"
      },
      {
        "position": {
          "x": -602,
          "y": -339
        },
        "size": {
          "height": 74,
          "width": 159
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_DOWN",
            "fontSize": 11
          }
        },
        "id": "1ff26924-96cc-4a6c-9d50-a00ffb153aac",
        "z": 35,
        "embeds": [
          "9995e6ce-7719-4f37-9a65-87099ce58003"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "50d4b083-7452-4bae-81ce-6bc844742ec2"
        },
        "target": {
          "id": "1ff26924-96cc-4a6c-9d50-a00ffb153aac",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "8.176%",
              "dy": "48.649%",
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
                "text": "EV_BTN_DOWN [tick == 0]\n/ raise EV_SYS_DOWN"
              }
            },
            "position": {}
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
        "id": "6e8124b3-87b1-4a36-848f-9695f7ccbc20",
        "z": 36,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -596,
          "y": -197
        },
        "size": {
          "height": 76,
          "width": 159
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_RISING",
            "fontSize": 11
          }
        },
        "id": "82a7c4c3-aef3-4cea-a5e2-28e176dbb14f",
        "z": 37,
        "embeds": [
          "b86acd30-2d5f-4581-912a-3f1359bd917c"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1ff26924-96cc-4a6c-9d50-a00ffb153aac"
        },
        "target": {
          "id": "82a7c4c3-aef3-4cea-a5e2-28e176dbb14f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "81.761%",
              "dy": "5.263%",
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
                "text": "EV_BTN_UP / tick = 50"
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
        "id": "95a75d28-c243-4e49-aab1-cace60949848",
        "z": 38,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "82a7c4c3-aef3-4cea-a5e2-28e176dbb14f"
        },
        "target": {
          "id": "5fa741fb-fb93-49a9-9f9b-76ab3b2193e0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "9.551%",
              "dy": "97.222%",
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
                "text": "EV_BTN_UP [tick == 0] / raise EV_SYS_UP"
              }
            },
            "position": {}
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
        "id": "760de406-3b0c-46f3-a136-91ed1162b93f",
        "z": 38,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "82a7c4c3-aef3-4cea-a5e2-28e176dbb14f"
        },
        "target": {
          "id": "1ff26924-96cc-4a6c-9d50-a00ffb153aac",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "18.868%",
              "dy": "98.649%",
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
                "text": "EV_BTN_DOWN [tick == 0]"
              }
            },
            "position": {
              "distance": 0.7058823529411765,
              "offset": -80,
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
        "id": "de55930a-9cb2-413e-957c-0fc1aad33538",
        "z": 38,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "82a7c4c3-aef3-4cea-a5e2-28e176dbb14f"
        },
        "target": {
          "id": "82a7c4c3-aef3-4cea-a5e2-28e176dbb14f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "74.843%",
              "dy": "98.684%",
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
                "text": "every 1 ms [tick > 0] / tick = tick - 1"
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
        "id": "b86acd30-2d5f-4581-912a-3f1359bd917c",
        "z": 39,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "82a7c4c3-aef3-4cea-a5e2-28e176dbb14f"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1ff26924-96cc-4a6c-9d50-a00ffb153aac"
        },
        "target": {
          "id": "1ff26924-96cc-4a6c-9d50-a00ffb153aac",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "26.415%",
              "dy": "1.351%",
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
                "text": "EV_BTN_DOWN"
              }
            },
            "position": {
              "distance": 0.5537119765250422,
              "offset": 14,
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
        "id": "9995e6ce-7719-4f37-9a65-87099ce58003",
        "z": 40,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "1ff26924-96cc-4a6c-9d50-a00ffb153aac"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "5fa741fb-fb93-49a9-9f9b-76ab3b2193e0"
        },
        "target": {
          "id": "5fa741fb-fb93-49a9-9f9b-76ab3b2193e0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "29.213%",
              "dy": "1.389%",
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
                "text": "EV_BTN_UP"
              }
            },
            "position": {}
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
        "id": "b3807693-d890-42e6-b97f-d23d4002aa19",
        "z": 41,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "5fa741fb-fb93-49a9-9f9b-76ab3b2193e0"
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
          "moduleName": "SensorStatechartExport",
          "statemachinePrefix": "sensorStatechartExport",
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