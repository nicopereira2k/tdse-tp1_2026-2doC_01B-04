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
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "attrs": {
          "name": {
            "text": "system_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event EV_CAR_ARRIVES\n    in event EV_BUTTON_PRESSED\n    in event EV_BARRIER_OPN\n    in event EV_BARRIER_CLS\n    in event EV_CAR_SENSOR\n\n "
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 339,
          "y": -50
        },
        "size": {
          "width": 143,
          "height": 78
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_IDLE",
            "fontSize": 11
          }
        },
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 35
      },
      {
        "position": {
          "x": 407,
          "y": -132
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "z": 62,
        "embeds": [
          "f70f632c-e54d-4002-9ec5-7baec620de10"
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
          "x": 407,
          "y": -117
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "f70f632c-e54d-4002-9ec5-7baec620de10",
        "z": 63,
        "parent": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
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
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "id": "9b5ce41b-0116-46a8-a603-ea4119c6e5d7",
        "z": 64
      },
      {
        "position": {
          "x": 602,
          "y": -40
        },
        "size": {
          "height": 60,
          "width": 146
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_WAIT_BUTTON",
            "fontSize": 11
          }
        },
        "id": "db372094-acc6-467b-b44d-495606208445",
        "z": 65
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "51.37%",
              "dy": "41.667%",
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
                "text": "EV_CAR_ARRIVES"
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
        "id": "b8b92be1-62f4-401a-8e6e-9eac90041584",
        "z": 66,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 1029,
          "y": -41
        },
        "size": {
          "height": 62,
          "width": 128
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_OPEN_BARRIER",
            "fontSize": 11
          }
        },
        "id": "6bd9fa66-e867-4053-8c68-72516e0caceb",
        "z": 67,
        "embeds": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "target": {
          "id": "6bd9fa66-e867-4053-8c68-72516e0caceb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50%",
              "dy": "33.333%",
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
                "text": "EV_BUTTON_PRESSED / raise EV_BARRIER_OPN"
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
        "id": "afe91206-3e2e-418b-a349-859d3dc2d685",
        "z": 68,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 1312,
          "y": -56
        },
        "size": {
          "height": 74,
          "width": 195
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_WAIT_CAR_LEAVES",
            "fontSize": 11
          }
        },
        "id": "a9137f77-c970-488d-ae24-c84836f87abb",
        "z": 69
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "6bd9fa66-e867-4053-8c68-72516e0caceb"
        },
        "target": {
          "id": "a9137f77-c970-488d-ae24-c84836f87abb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "48.718%",
              "dy": "58.108%",
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
                "text": "EV_CAR_SENSOR"
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
        "id": "10eec6c8-ab2a-496a-b719-69844f42f57f",
        "z": 70,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a9137f77-c970-488d-ae24-c84836f87abb"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "58.741%",
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
                "text": "EV_CAR_SENSOR / raise EV_BARRIER_CLS"
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
        "id": "1c065034-9ec1-4780-8f14-bd6d8569d0c3",
        "z": 70,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 1049,
            "y": 143
          },
          {
            "x": 483,
            "y": 143
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