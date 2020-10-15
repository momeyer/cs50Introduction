return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "2020.01.22",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 39,
  height = 17,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 36,
  nextobjectid = 27,
  properties = {},
  tilesets = {
    {
      name = "test",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 27,
      image = "../tileset/Tilemap/test.png",
      imagewidth = 432,
      imageheight = 288,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 486,
      tiles = {}
    },
    {
      name = "functionsTextTiles",
      firstgid = 487,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 30,
      image = "../graphics/functionsTextTiles.png",
      imagewidth = 480,
      imageheight = 480,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 900,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 26,
      name = "info",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["blueTile"] = false,
        ["doorType"] = "house",
        ["face"] = "right",
        ["fruit"] = true,
        ["grass"] = true,
        ["greyTile"] = false,
        ["numCommands"] = 4,
        ["size"] = 5,
        ["title"] = "",
        ["yellowTile"] = true
      },
      encoding = "base64",
      compression = "zlib",
      data = "eJztwTEBAAAAwqD1T20JT6AAAOBjClwAAQ=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 1,
      name = "background",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJyTZWBgkB3Fo3gUD0nsSqTYQOLjDAwHYHig3YLLXaNuI899A+0OZDwU8sIoHsUjBQMA1iZeHg=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 21,
      name = "text",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzt0EcKwkAAheFJiG2lV7B3r2CJXa9g717CXm5qPYS/6EZcuHIcJA8+MgmB9xgh/j9eQwgf/AggiBDCiCCKGOJIIImUIWdbmp4MssjBRB4FFFFCGRVUUUNd0rYGPU200EYHXfTQxwBDjDDGBFMJ2w6aEEeccNYe32b0zrHAEiusscEWO+wlbLtor+9uXQiP/v3ef4mq92Vjkx0OOOF6bvTzDCi412RTXn8//yJJulMK3tE9NXbVFdt21T7/Y8WK6rkB0NAZqA=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 2,
      name = "path",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AU4AKuBPBAAnz2j7qNPPtH3Uae/QPptg2MDA2D1W2noW4bzOXIKBgFtAAAC8sKTw=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 22,
      name = "yellowTile1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIJRMApGAS3AE8aBdsEoGAX0BwCyUQDm"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 33,
      name = "buttonsSecondRow",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["blue"] = "blueTile",
        ["yellow"] = "yellowTile"
      },
      encoding = "base64",
      compression = "zlib",
      data = "eJztwTEBAAAAwqD1T20JT6AAAOBjClwAAQ=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 34,
      name = "buttonsThirdRow",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["paint"] = "paint grey"
      },
      encoding = "base64",
      compression = "zlib",
      data = "eJztwTEBAAAAwqD1T20JT6AAAOBjClwAAQ=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 23,
      name = "yellowTile2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIJRMApGAb3BE8aBdsEoGAW0AQCZRQDm"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 24,
      name = "yellowTile3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUkAOeMA60C0bBKBgFo2AUjILBBwBqVQDm"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 25,
      name = "yellowTile4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AU4AJPGAfaBaNgFIyCUTAKRsHQAgCDYQDm"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 8,
      name = "water",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUDFWwGojXoGGgWMNAugkGjgHxcTR8YkBdhACjbiMPDGa3PQTiR2j48YC6aBSMgpELAJXeHHs="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 9,
      name = "street",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztzsEJACAQA8Gk/wKsShG5guxh4fyYhTwDI7GWpW14bi42Vmys2FixsWJjxcb63TbMVg9s03yn2XYBWr4vPA=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 14,
      name = "parking",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzbxcjAsItMTGtArrtA+AKN3TeY3XaWkTy8kw5xOgpGwSgYBaNgFIyC4Q0AFN0ugA=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 10,
      name = "car",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIJRMAqGL6hkZGCoYhxoV2AHU4DumjpI3TYKRgG5AACmugIh"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 35,
      name = "close_door",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIJRMAqGN+hhHGgXYAeuQLx8kLptFIwCcgEAjp4Bew=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 15,
      name = "cars2",
      visible = true,
      opacity = 1,
      offsetx = 2.66667,
      offsety = -8.66667,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzt0LEJACAMRFHdP6BbCLqFe7iLILHwt0Kqe83nqkAsp2N6zVvRiR2h+a2V3z3QhR2B/zH86bZgR+B/+Mfbji0iIiLyawPCKhMx"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 13,
      name = "house",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 16,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzt0LERQEAUhOGrAW2gDZSADCWgDVRsg402vGQveP/Ml+9sSlFOMyy0mrdoJ1x0m7doJW974KXPvEWroKbGvEUbYKTJvEVroaPevEUr+bfYltcGOx3mLVHk7AfbxQ6F"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 16,
      name = "fruit1",
      visible = true,
      opacity = 1,
      offsetx = 0.5,
      offsety = -4,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIJRMApGAb3BZ5aBdsEoGAW0AQDMugD4"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 17,
      name = "fruit2",
      visible = true,
      opacity = 1,
      offsetx = 0.5,
      offsety = -4,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUkAM+swy0C0bBKBgFo2AUjILBBwDqkgD4"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 18,
      name = "fruit3",
      visible = true,
      opacity = 1,
      offsetx = 0.5,
      offsety = -4,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AU4AKfWQbaBaNgFIyCUTAKRsHQAgAFpQD4"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 20,
      name = "fruit4",
      visible = true,
      opacity = 1,
      offsetx = 0.5,
      offsety = -4,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIJRMApGwUCAzywD7YJRMAqoDwDI3gD4"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 12,
      name = "houseDetails",
      visible = true,
      opacity = 1,
      offsetx = -8,
      offsety = 5,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjALKQBAjAg820MmIwKOAeDCY4zSPEYEHGxhNb6NgFDAwAAB5DQZ8"
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 27,
      name = "grass",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["numObjects"] = 5
      },
      objects = {
        {
          id = 1,
          name = "grass1",
          type = "",
          shape = "rectangle",
          x = -3.63636,
          y = 0.727273,
          width = 77.6667,
          height = 271.333,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "grass2",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 256,
          height = 72.0909,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "grass3",
          type = "",
          shape = "rectangle",
          x = -0.753773,
          y = 212.886,
          width = 257.508,
          height = 59.1136,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "grass4",
          type = "",
          shape = "rectangle",
          x = 214.167,
          y = 0,
          width = 41.8333,
          height = 184.917,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "grass5",
          type = "",
          shape = "rectangle",
          x = 102.75,
          y = 102.167,
          width = 80.6667,
          height = 81.0833,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 28,
      name = "player",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 7,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 192,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 29,
      name = "yellowTile",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["numObjects"] = 4
      },
      objects = {
        {
          id = 9,
          name = "yellowTile1",
          type = "",
          shape = "rectangle",
          x = 84.4602,
          y = 203.168,
          width = 1.26705,
          height = 1.01364,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "yellowTile2",
          type = "",
          shape = "rectangle",
          x = 204.261,
          y = 199.443,
          width = 0.454545,
          height = 0.272727,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "yellowTile3",
          type = "",
          shape = "rectangle",
          x = 201.166,
          y = 83.2885,
          width = 0.363636,
          height = 0.272727,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "yellowTile4",
          type = "",
          shape = "rectangle",
          x = 83.2813,
          y = 89.4375,
          width = 0.5,
          height = 0.375,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 30,
      name = "fruit",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["numObjects"] = 4
      },
      objects = {
        {
          id = 16,
          name = "fruit1",
          type = "",
          shape = "rectangle",
          x = 204.326,
          y = 198.618,
          width = 0.377778,
          height = 0.266667,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "fruit2",
          type = "",
          shape = "rectangle",
          x = 199.52,
          y = 83.2052,
          width = 0.25,
          height = 0.25,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "fruit3",
          type = "",
          shape = "rectangle",
          x = 83.519,
          y = 85.4212,
          width = 0.26087,
          height = 0.26087,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "fruit4",
          type = "",
          shape = "rectangle",
          x = 215.688,
          y = 198,
          width = 0.875,
          height = 0.625,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 31,
      name = "end",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 20,
          name = "end",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 192,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 32,
      name = "answer",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["numObjects"] = 5
      },
      objects = {
        {
          id = 21,
          name = "F0",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 64,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "answer1",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 96,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "answer2",
          type = "",
          shape = "rectangle",
          x = 368,
          y = 128,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 24,
          name = "answer3",
          type = "",
          shape = "rectangle",
          x = 416,
          y = 128,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "answer4",
          type = "",
          shape = "rectangle",
          x = 304.182,
          y = 149.795,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "answer5",
          type = "",
          shape = "rectangle",
          x = 304.25,
          y = 171.875,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}