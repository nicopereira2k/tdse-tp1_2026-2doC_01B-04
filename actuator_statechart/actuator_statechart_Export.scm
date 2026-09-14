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
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n    var tick: integer = 5\n    var LED_ON: boolean = false\n    in event EV_BARRIER_OPN\n    in event EV_BARRIER_CLS\n    in event EV_BARRIER_STOP\n    in event EV_TICK_CHNG\n    "
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -246,
          "y": -86
        },
        "size": {
          "height": 60,
          "width": 114
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BARRIER_CLOSE",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / tick = 5"
          }
        },
        "id": "9608fa82-4dcb-4b87-9f81-386cae1939da",
        "z": 2
      },
      {
        "position": {
          "x": 73,
          "y": -86
        },
        "size": {
          "height": 60,
          "width": 105
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BARRIER_LIFT",
            "fontSize": 11
          }
        },
        "id": "b366c135-9b89-4782-b3fb-d805a5f54e12",
        "z": 3,
        "embeds": [
          "963d6756-8ebf-48c5-8ac7-19576641b74b",
          "14205bee-1c5c-46de-9599-0d9372b801fb"
        ]
      },
      {
        "position": {
          "x": 73,
          "y": 87
        },
        "size": {
          "height": 60,
          "width": 138
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BARRIER_OPEN",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / tick = 5\nentry / LED_ON = true"
          }
        },
        "id": "f5095d81-8a42-4f58-a580-3786a99d4455",
        "z": 4
      },
      {
        "position": {
          "x": -246,
          "y": 87
        },
        "size": {
          "height": 60,
          "width": 104
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BARRIER_LOW",
            "fontSize": 11
          }
        },
        "id": "38acd894-c1a2-48fb-8aea-1035dba84759",
        "z": 5,
        "embeds": [
          "61911d51-8fc6-48c0-bde7-84b57625476a",
          "318a7f12-c0b1-4886-9c9d-788243d23c02"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9608fa82-4dcb-4b87-9f81-386cae1939da"
        },
        "target": {
          "id": "b366c135-9b89-4782-b3fb-d805a5f54e12",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "28.571%",
              "dy": "63.333%",
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
                "text": "EV_BARRIER_OPN"
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
        "id": "953f70f3-b8a5-49b1-a355-fd00b79d99d9",
        "z": 6,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b366c135-9b89-4782-b3fb-d805a5f54e12"
        },
        "target": {
          "id": "f5095d81-8a42-4f58-a580-3786a99d4455",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "54.31%",
              "dy": "51.667%",
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
                "text": "EV_BARRIER_STOP"
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
        "id": "4d36a098-efa2-438b-aed0-d8d22f8d6adc",
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
          "id": "f5095d81-8a42-4f58-a580-3786a99d4455"
        },
        "target": {
          "id": "38acd894-c1a2-48fb-8aea-1035dba84759",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "92.308%",
              "dy": "58.333%",
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
                "text": "EV_BARRIER_CLS"
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
        "id": "adf6ba4b-b8cc-43b3-bbcc-3698608e6c7d",
        "z": 8,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "38acd894-c1a2-48fb-8aea-1035dba84759"
        },
        "target": {
          "id": "9608fa82-4dcb-4b87-9f81-386cae1939da",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "45.614%",
              "dy": "76.667%",
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
                "text": "EV_BARRIER_STOP / LED_ON = false"
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
        "id": "059181cf-e008-4252-93df-b9bf53dedb62",
        "z": 9,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -198,
          "y": -177
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "a7b49b2e-5ba3-412d-8071-e35ab33d237e",
        "z": 10,
        "embeds": [
          "2701c503-d7ea-4815-8ac4-87717b9df747"
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
          "x": -198,
          "y": -162
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "2701c503-d7ea-4815-8ac4-87717b9df747",
        "z": 11,
        "parent": "a7b49b2e-5ba3-412d-8071-e35ab33d237e"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a7b49b2e-5ba3-412d-8071-e35ab33d237e"
        },
        "target": {
          "id": "9608fa82-4dcb-4b87-9f81-386cae1939da",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50.877%",
              "dy": "31.667%",
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
        "id": "7729a3c1-9eee-425f-9f7a-91b021450558",
        "z": 12,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b366c135-9b89-4782-b3fb-d805a5f54e12",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "34.286%",
              "dy": "81.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "b366c135-9b89-4782-b3fb-d805a5f54e12",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "94.286%",
              "dy": "25%",
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
                "text": "EV_TICK_CHNG [tick > 0] / tick --"
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
        "id": "14205bee-1c5c-46de-9599-0d9372b801fb",
        "z": 13,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 192,
            "y": -114
          }
        ],
        "parent": "b366c135-9b89-4782-b3fb-d805a5f54e12"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "38acd894-c1a2-48fb-8aea-1035dba84759"
        },
        "target": {
          "id": "38acd894-c1a2-48fb-8aea-1035dba84759",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "11.538%",
              "dy": "63.333%",
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
                "text": "EV_TICK_CHNG [tick == 0] / LED_ON = !LED_ON ; tick = 5"
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
        "id": "318a7f12-c0b1-4886-9c9d-788243d23c02",
        "z": 14,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "38acd894-c1a2-48fb-8aea-1035dba84759"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b366c135-9b89-4782-b3fb-d805a5f54e12"
        },
        "target": {
          "id": "b366c135-9b89-4782-b3fb-d805a5f54e12",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "91.429%",
              "dy": "63.333%",
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
                "text": "EV_TICK_CHNG [tick == 0] / LED_ON = !LED_ON ; tick = 5"
              }
            },
            "position": {
              "distance": 0.5000000217981833,
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
        "id": "963d6756-8ebf-48c5-8ac7-19576641b74b",
        "z": 15,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "b366c135-9b89-4782-b3fb-d805a5f54e12"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "38acd894-c1a2-48fb-8aea-1035dba84759",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "88.462%",
              "dy": "96.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "38acd894-c1a2-48fb-8aea-1035dba84759",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "13.462%",
              "dy": "80%",
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
                "text": "EV_TICK_CHNG [tick > 0] / tick --"
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
        "id": "61911d51-8fc6-48c0-bde7-84b57625476a",
        "z": 16,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "38acd894-c1a2-48fb-8aea-1035dba84759"
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