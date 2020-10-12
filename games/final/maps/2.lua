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
  nextlayerid = 20,
  nextobjectid = 54,
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
      name = "tilemap",
      firstgid = 487,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 28,
      image = "../tileset/Tilemap/tilemap.png",
      imagewidth = 458,
      imageheight = 305,
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
      tilecount = 532,
      tiles = {}
    },
    {
      name = "functionsTextTiles",
      firstgid = 1019,
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
      id = 15,
      name = "info",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["blueTile"] = false,
        ["doorType"] = "house",
        ["face"] = "right",
        ["fruit"] = false,
        ["grass"] = true,
        ["greyTile"] = false,
        ["numCommands"] = 5,
        ["size"] = 5,
        ["title"] = "Help Tonny on the way to School",
        ["yellowTile"] = false
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
      name = "grass",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJyTZWBgkB3Fo3gUj+JRPIpH8SgeQOw6CNwwiqmDAQUmS0Q="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 6,
      name = "trees",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJx7w8DA8GYAMTvjKKY2VhrEeBSMglEwCkbBKBgFwxsAAO5eJX4="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 2,
      name = "house",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzt0jEOgjAYxfH2DHAyccPJyIjcAAiTuOFigHAkQcQD+YZvaUnnVwz/5Jd0+95QpbbdASJxJG+xS+EqMvIWuxvU4k7eYpdDJQooqWvMWhhEBz13jtEEi7zfMJN2jBr3Nem41VObvh5te+m1jyfbfC6GE3uEowYe7BGOAgjZIxxdIIHz/v//ph/ihhuh"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 7,
      name = "parking",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo4B+YBsjA8N0PHg748C57RwjdrwLiR5It+0igF9C1V6A0i9xGTYAQJ4RP38UjIJRMApGwfABAIAhFkA="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 3,
      name = "house_details",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBg+IBiIQwbaEThAHhDnD7QjcIBOIO4aaEdAgSsjhN7DiMADAVZiEauGuuU6IwIPBDhChJoVNHcF6cAVig8PtEPQAMxdgw2Mugs7+A7Ed7GID7S7cIHB4q5sRgiGgcHiLhBoY4RgEBhM7hoF5AMAvvcS+w=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 8,
      name = "cars",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo4C+YCIjA0M/I4INAkcZB849yGAN0B2rGBFsEHgwCNyWAnRDKhSnMWIXHwWjYBSMgqEI3kDx24F2CBbAzgjBHIOwjFVihGDlQeg2AHZTC3I="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 9,
      name = "details",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
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
      id = 16,
      name = "door_open",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUDCdgyTjQLhgFo2AUjIJRMJIBAIU6ADs="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 17,
      name = "close_door",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUDCcgxzjQLhgFo2AUjIJRMJIBANTTACA="
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 10,
      name = "player",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 2,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 48,
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
      id = 11,
      name = "end",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 3,
          name = "end",
          type = "",
          shape = "rectangle",
          x = 177.938,
          y = 96,
          width = 14.0568,
          height = 15.8182,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 12,
      name = "grass",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["numObjects"] = 18
      },
      objects = {
        {
          id = 25,
          name = "grass1",
          type = "",
          shape = "rectangle",
          x = -0.363636,
          y = 243.636,
          width = 240,
          height = 27.3333,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "grass2",
          type = "",
          shape = "rectangle",
          x = 194.909,
          y = 115.455,
          width = 48,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 27,
          name = "grass3",
          type = "",
          shape = "rectangle",
          x = 178.909,
          y = 131.455,
          width = 16,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "grass4",
          type = "",
          shape = "rectangle",
          x = 162.909,
          y = 147.455,
          width = 16,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "grass5",
          type = "",
          shape = "rectangle",
          x = 146.909,
          y = 163.455,
          width = 16,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 30,
          name = "grass6",
          type = "",
          shape = "rectangle",
          x = 130.909,
          y = 179.455,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 31,
          name = "grass7",
          type = "",
          shape = "rectangle",
          x = 114.909,
          y = 195.455,
          width = 102,
          height = 76,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 35,
          name = "grass8",
          type = "",
          shape = "rectangle",
          x = 98.9091,
          y = 211.455,
          width = 73,
          height = 59.3333,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 36,
          name = "grass9",
          type = "",
          shape = "rectangle",
          x = 82.5455,
          y = 226.727,
          width = 160.394,
          height = 44.3333,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 37,
          name = "grass10",
          type = "",
          shape = "rectangle",
          x = 1,
          y = 48.3333,
          width = 43.6667,
          height = 192,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 38,
          name = "grass11",
          type = "",
          shape = "rectangle",
          x = 48.6667,
          y = 44.6667,
          width = 128,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 40,
          name = "grass12",
          type = "",
          shape = "rectangle",
          x = 44.3333,
          y = 109.333,
          width = 112,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 41,
          name = "grass13",
          type = "",
          shape = "rectangle",
          x = 44.3333,
          y = 125.333,
          width = 96,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 42,
          name = "grass14",
          type = "",
          shape = "rectangle",
          x = 44.3333,
          y = 141.333,
          width = 80,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 44,
          name = "grass15",
          type = "",
          shape = "rectangle",
          x = 44.3333,
          y = 157.333,
          width = 64,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 45,
          name = "grass16",
          type = "",
          shape = "rectangle",
          x = 44.3333,
          y = 173.333,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 46,
          name = "grass17",
          type = "",
          shape = "rectangle",
          x = 44.3333,
          y = 189.333,
          width = 32,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 47,
          name = "grass18",
          type = "",
          shape = "rectangle",
          x = 44.3333,
          y = 205.333,
          width = 16,
          height = 16,
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
      id = 13,
      name = "text",
      visible = true,
      opacity = 1,
      offsetx = -48,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztzssNgkAYReE/mRkTn6BgAaCNaCPQiDYijWBr+OAkZBbuSbgx3OQs7u4zmzfvf7YMZita04a2tKOEUtrTgTLK6RimFmusc2YvetOHnDfzfmrVsK/7/QWuUsQWF/AsxExxJ1xnUdsF11XUVuGqRW03XHdR2wNXI2prcT3VbGqekdYDOA4L1A=="
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 14,
      name = "answer",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["size"] = 5
      },
      objects = {
        {
          id = 48,
          name = "answer1",
          type = "",
          shape = "rectangle",
          x = 368.031,
          y = 128.105,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 49,
          name = "answer2",
          type = "",
          shape = "rectangle",
          x = 368.092,
          y = 150.135,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 50,
          name = "answer3",
          type = "",
          shape = "rectangle",
          x = 368.062,
          y = 171.863,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 51,
          name = "answer4",
          type = "",
          shape = "rectangle",
          x = 368.031,
          y = 193.378,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 52,
          name = "answer5",
          type = "",
          shape = "rectangle",
          x = 368.062,
          y = 215.711,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 53,
          name = "F0",
          type = "",
          shape = "rectangle",
          x = 400.156,
          y = 93.7642,
          width = 17,
          height = 17,
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
      id = 18,
      name = "buttonsSecondRow",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
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
      id = 19,
      name = "buttonsThirdRow",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztwTEBAAAAwqD1T20JT6AAAOBjClwAAQ=="
    }
  }
}
