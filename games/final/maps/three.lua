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
  nextlayerid = 25,
  nextobjectid = 77,
  properties = {},
  tilesets = {
    {
      name = "tilemap_packed",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 27,
      image = "../tileset/Tilemap/tilemap_packed.png",
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
      name = "test",
      firstgid = 487,
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
      firstgid = 973,
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
      id = 24,
      name = "info",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["numCommands"] = 5
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
      id = 5,
      name = "background",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFgwnkQfFgAwPlJmYm/PLI4UVPNxLrLnrH51B2F4wedRd2d4HEkMWR3UMvtxEKLxhAz5e0dh8x7kJXg54XaOFGYsMLG6BlGFLiLhigRdlLDXfBADXDjJruggFquI0W7qIWAAB3lhHv"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 1,
      name = "water",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJw7zsDAcHwAMT4wkO4aCLdtgNIbB8Bta5kGPrxxuWswum3UXUPLXdaMg9NdIByGxW2DwV2gMEN322BwF7YwGyzuGozxOOou6rlrsLltMLoJhgF8c+3r"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 2,
      name = "land",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFowAV7GJE4MECkN002N02WMCou0gHg9VdIDBU3DbY3DeYyw4YGHUf+WAwui0KiKORcBkaH4RjBshtpVD34MPlVLAHAFucKps="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 3,
      name = "path",
      visible = true,
      opacity = 1,
      offsetx = -80,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo4A44ArE2kwD7QpM4ArFgw2Muos0MFjdBQKD1V0gMNjdNuo+8sGo+ygDg9ltwx0AALhjBZI="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 4,
      name = "different_path",
      visible = true,
      opacity = 1,
      offsetx = -80,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIJRgAucYh5oF+AGg9lto2AUjIKRCwDpgwGb"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 7,
      name = "park",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztzrENgDAMRNFPmMOwBvvPwxBwZQQKSQG+gi9dY7l4AcS/17dPsFFvKTCX+hZc/0Y36lpPw1e5unptGa4eW5bryZbpatmyXdyYXFzK1aVcXcrVpVxdytWlXF3uHewwJK0="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 8,
      name = "park_details",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFtACSjOTps6CuM0gGG4D4MRJ/DdNAuQQVoLtrItBdmwaB29DdtRqIzwyQW5DBqLtIByeQ2IPJXSCA7LaHQLxxoByCBZwG4rVI/FH3kQaGmvuODZRDcABk9w02t41kAAACiCC/"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 9,
      name = "trees",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYMAECsyYYtZYxHCJE6MfmxpsAF0dLncQC4jRT6wdxKoj1q8DASgNT1IBrrAYDGFEShofaDAYwgsXGA0v0sBgDK9RMPzAaB4YBfQEAOf8BIU="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 10,
      name = "people",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYCAdzCdDD7XB1YF2wCigGKxjHGgXjILhDqQH2gGjYBSMArqBFQPtACTQj1a/HQbio1CxiQNc963CYv8DqNgaKrkNAJNBB8s="
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 14,
      name = "grass",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["numObjects"] = 17
      },
      objects = {
        {
          id = 1,
          name = "1",
          type = "",
          shape = "rectangle",
          x = 311.583,
          y = 48.3333,
          width = 59.0833,
          height = 192,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "2",
          type = "",
          shape = "rectangle",
          x = 279.417,
          y = 86.5833,
          width = 90.25,
          height = 113.417,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "3",
          type = "",
          shape = "rectangle",
          x = 261.667,
          y = 103.167,
          width = 107,
          height = 81.5,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "4",
          type = "",
          shape = "rectangle",
          x = 246.098,
          y = 117.902,
          width = 123.75,
          height = 48.9167,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "5",
          type = "",
          shape = "rectangle",
          x = 230.667,
          y = 133.333,
          width = 140,
          height = 22.25,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "6",
          type = "",
          shape = "rectangle",
          x = 243.364,
          y = 42.3333,
          width = 18.2424,
          height = 14.3636,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "7",
          type = "",
          shape = "rectangle",
          x = 229.939,
          y = 44.6667,
          width = 20.0909,
          height = 28.3636,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "8",
          type = "",
          shape = "rectangle",
          x = 214.727,
          y = 42.6667,
          width = 17.9394,
          height = 44.1818,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "9",
          type = "",
          shape = "rectangle",
          x = 191.818,
          y = 45,
          width = 24.8788,
          height = 58.9091,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "10",
          type = "",
          shape = "rectangle",
          x = 182,
          y = 61.3333,
          width = 18.3333,
          height = 59.0909,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "11",
          type = "",
          shape = "rectangle",
          x = 170.667,
          y = 79.6667,
          width = 16,
          height = 144,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "12",
          type = "",
          shape = "rectangle",
          x = 169,
          y = 167.667,
          width = 32.3333,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "13",
          type = "",
          shape = "rectangle",
          x = 185.667,
          y = 183.667,
          width = 31.6667,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "14",
          type = "",
          shape = "rectangle",
          x = 191.333,
          y = 198,
          width = 41.6667,
          height = 42,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "15",
          type = "",
          shape = "rectangle",
          x = 185,
          y = 215,
          width = 63.6667,
          height = 26,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "16",
          type = "",
          shape = "rectangle",
          x = 185,
          y = 230,
          width = 80,
          height = 10.6667,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "17",
          type = "",
          shape = "rectangle",
          x = 207.333,
          y = 243.333,
          width = 160,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "18",
          type = "",
          shape = "rectangle",
          x = 296.167,
          y = 70.0833,
          width = 61.9359,
          height = 169.583,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 15,
      name = "end",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 21,
          name = "end",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 32,
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
      id = 16,
      name = "player",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 22,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 224,
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
      id = 17,
      name = "yellowTile",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["numObjects"] = 2
      },
      objects = {
        {
          id = 24,
          name = "yellow1",
          type = "",
          shape = "rectangle",
          x = 192.04,
          y = 144.023,
          width = 5.75568,
          height = 5.79545,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "yellow2",
          type = "",
          shape = "rectangle",
          x = 192.205,
          y = 128.148,
          width = 5.83523,
          height = 5.65909,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 18,
      name = "greyTile",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["numObjects"] = 21
      },
      objects = {
        {
          id = 48,
          name = "grey1",
          type = "",
          shape = "point",
          x = 279.875,
          y = 228.625,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 49,
          name = "grey2",
          type = "",
          shape = "point",
          x = 279.875,
          y = 212.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 50,
          name = "grey3",
          type = "",
          shape = "point",
          x = 263.75,
          y = 212.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 51,
          name = "grey4",
          type = "",
          shape = "point",
          x = 263.875,
          y = 196.375,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 52,
          name = "grey5",
          type = "",
          shape = "point",
          x = 247.875,
          y = 196.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 53,
          name = "grey6",
          type = "",
          shape = "point",
          x = 247.875,
          y = 180.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 54,
          name = "grey7",
          type = "",
          shape = "point",
          x = 231.75,
          y = 180.875,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 55,
          name = "grey8",
          type = "",
          shape = "point",
          x = 231.5,
          y = 165,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 56,
          name = "grey9",
          type = "",
          shape = "point",
          x = 216,
          y = 164.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 57,
          name = "grey10",
          type = "",
          shape = "point",
          x = 215.375,
          y = 148.5,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 58,
          name = "grey11",
          type = "",
          shape = "point",
          x = 216.75,
          y = 133.375,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 59,
          name = "grey12",
          type = "",
          shape = "point",
          x = 216.125,
          y = 116.25,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 60,
          name = "grey13",
          type = "",
          shape = "point",
          x = 232.25,
          y = 116.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 61,
          name = "grey14",
          type = "",
          shape = "point",
          x = 232.75,
          y = 100.875,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 62,
          name = "grey15",
          type = "",
          shape = "point",
          x = 247.875,
          y = 100.75,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 63,
          name = "grey16",
          type = "",
          shape = "point",
          x = 247.875,
          y = 85,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 64,
          name = "grey17",
          type = "",
          shape = "point",
          x = 263.75,
          y = 85,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 65,
          name = "grey18",
          type = "",
          shape = "point",
          x = 263.875,
          y = 68.625,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 66,
          name = "grey19",
          type = "",
          shape = "point",
          x = 279.455,
          y = 68.7273,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 67,
          name = "grey20",
          type = "",
          shape = "point",
          x = 279.091,
          y = 53.6364,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 68,
          name = "grey21",
          type = "",
          shape = "point",
          x = 296,
          y = 52.1818,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 20,
      name = "text",
      visible = true,
      opacity = 1,
      offsetx = -48,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AU0AOcZWZgOAfE54H4AvNAuwYVXERzjyYLA4MWy8C4ZSiCr8Dw+zbI4hQEXgPd9AaI3wLxOyB+D3UjJzBuuYD4OpB/YxC5GzkcB1uYCgPDS4QFkz0KUMFgizdkMBjj7dIgDStKAQBvFBQc"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 22,
      name = "text2",
      visible = true,
      opacity = 1,
      offsetx = -48,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AU0AuEskDwKBgFIx28ZmZgeAPEb4H4HRC/Z4aIcwLzB9doHhkFo2BIAwBEggV+"
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 23,
      name = "answer",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["size"] = 7
      },
      objects = {
        {
          id = 69,
          name = "answer2",
          type = "",
          shape = "rectangle",
          x = 432.157,
          y = 144.182,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 70,
          name = "answer4",
          type = "",
          shape = "rectangle",
          x = 432.006,
          y = 166.057,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 71,
          name = "answer3",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 144,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 72,
          name = "answer5",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 165.813,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 73,
          name = "answer6",
          type = "",
          shape = "rectangle",
          x = 368.087,
          y = 192.123,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 74,
          name = "answer7",
          type = "",
          shape = "rectangle",
          x = 368,
          y = 214.197,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 75,
          name = "F0",
          type = "",
          shape = "rectangle",
          x = 400.091,
          y = 80,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 76,
          name = "answer1",
          type = "",
          shape = "rectangle",
          x = 368.091,
          y = 111.955,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
