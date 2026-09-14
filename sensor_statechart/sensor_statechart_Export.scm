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
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n    in event EV_BTN_PRESS\n    in event EV_BTN_RELEASE\n    var tick: integer = 0"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 122,
          "y": -96
        },
        "size": {
          "height": 60,
          "width": 126
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_TR_PRESS",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / tick += 1"
          }
        },
        "id": "468aaa77-72c0-44e6-97ff-714b3f08988a",
        "z": 3,
        "embeds": [
          "311b4a20-b76d-4305-9cef-7281d32844fe"
        ]
      },
      {
        "position": {
          "x": -222,
          "y": -174
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "4a4fe865-0121-47d4-b269-56a81ffde922",
        "z": 6,
        "embeds": [
          "86da460d-2bea-4946-a7a5-1019e01f487a"
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
          "x": -222,
          "y": -159
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "86da460d-2bea-4946-a7a5-1019e01f487a",
        "z": 7,
        "parent": "4a4fe865-0121-47d4-b269-56a81ffde922"
      },
      {
        "position": {
          "x": -264,
          "y": -95
        },
        "size": {
          "height": 61,
          "width": 99
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_NTPRESS",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / tick = 0"
          }
        },
        "id": "d7fbb6d6-8b5d-4c6b-8746-aa831d04e001",
        "z": 11
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "4a4fe865-0121-47d4-b269-56a81ffde922"
        },
        "target": {
          "id": "d7fbb6d6-8b5d-4c6b-8746-aa831d04e001",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50%",
              "dy": "6.667%",
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
        "id": "9efd7c90-f7bd-4d53-bba0-af0b92921c1e",
        "z": 12,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 145,
          "y": 82
        },
        "size": {
          "height": 60,
          "width": 103
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_PRESS",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / tick = 0"
          }
        },
        "id": "2f0af0a7-b7a8-485e-a803-2d3e113f06b0",
        "z": 16
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "468aaa77-72c0-44e6-97ff-714b3f08988a"
        },
        "target": {
          "id": "2f0af0a7-b7a8-485e-a803-2d3e113f06b0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50.485%",
              "dy": "5%",
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
                "text": "[tick == 5]"
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
        "id": "f47987e2-9365-4f9c-9e31-3b8da5398698",
        "z": 17,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -274,
          "y": 86
        },
        "size": {
          "height": 60,
          "width": 115
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_TR_NTPRESS",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / tick += 1"
          }
        },
        "id": "9274f798-7493-48e3-8efc-2453fb711299",
        "z": 19,
        "embeds": [
          "ed529e5c-4ce5-408d-8fb7-648e80acaff9"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "2f0af0a7-b7a8-485e-a803-2d3e113f06b0"
        },
        "target": {
          "id": "9274f798-7493-48e3-8efc-2453fb711299",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "99.13%",
              "dy": "70%",
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
                "text": "EV_BTN_RELEASE"
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
        "id": "3ee20103-cd04-44bb-bde7-215fd8de1229",
        "z": 20,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9274f798-7493-48e3-8efc-2453fb711299"
        },
        "target": {
          "id": "d7fbb6d6-8b5d-4c6b-8746-aa831d04e001",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "49.495%",
              "dy": "78.689%",
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
                "text": "[tick == 5]"
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
        "id": "b927dfd8-b313-4b6b-afe2-7a4fb3577d20",
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
          "id": "468aaa77-72c0-44e6-97ff-714b3f08988a"
        },
        "target": {
          "id": "468aaa77-72c0-44e6-97ff-714b3f08988a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "99.206%",
              "dy": "53.333%",
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
                "text": "EV_BTN_PRESS"
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
        "id": "311b4a20-b76d-4305-9cef-7281d32844fe",
        "z": 22,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "468aaa77-72c0-44e6-97ff-714b3f08988a"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9274f798-7493-48e3-8efc-2453fb711299"
        },
        "target": {
          "id": "9274f798-7493-48e3-8efc-2453fb711299",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "9.565%",
              "dy": "93.333%",
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
                "text": "EV_BTN_RELEASE"
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
        "id": "ed529e5c-4ce5-408d-8fb7-648e80acaff9",
        "z": 23,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -200,
            "y": 172
          }
        ],
        "parent": "9274f798-7493-48e3-8efc-2453fb711299"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "468aaa77-72c0-44e6-97ff-714b3f08988a"
        },
        "target": {
          "id": "d7fbb6d6-8b5d-4c6b-8746-aa831d04e001",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "96.97%",
              "dy": "14.754%",
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
                "text": "EV_BTN_RELEASE"
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
        "id": "2d46b213-483c-42c6-b256-2449122a79aa",
        "z": 24,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d7fbb6d6-8b5d-4c6b-8746-aa831d04e001",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "92.929%",
              "dy": "88.525%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "468aaa77-72c0-44e6-97ff-714b3f08988a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "29.365%",
              "dy": "91.667%",
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
                "text": "EV_BTN_PRESS"
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
        "id": "5d383dce-ea04-4e9e-9ee0-31c0ef4eece3",
        "z": 25,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9274f798-7493-48e3-8efc-2453fb711299"
        },
        "target": {
          "id": "2f0af0a7-b7a8-485e-a803-2d3e113f06b0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "19.417%",
              "dy": "21.667%",
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
                "text": "EV_BTN_PRESS"
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
        "id": "b520b268-39db-4038-aa49-a6f9d4988ed6",
        "z": 26,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
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
          "moduleName": "SensorStatechart",
          "statemachinePrefix": "sensorStatechart",
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