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
  nextlayerid = 35,
  nextobjectid = 113,
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
    },
    {
      name = "UIpackSheet_transparent",
      firstgid = 1387,
      tilewidth = 16,
      tileheight = 16,
      spacing = 2,
      margin = 0,
      columns = 30,
      image = "../tileset/Tilemap/UIpackSheet_transparent.png",
      imagewidth = 538,
      imageheight = 592,
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
      tilecount = 990,
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
      id = 23,
      name = "info",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["F0"] = 2,
        ["blueTile"] = false,
        ["door"] = true,
        ["face"] = "up",
        ["fruit"] = true,
        ["fruitsTotal"] = 1,
        ["grass"] = true,
        ["greyTile"] = false,
        ["numFunc"] = 1,
        ["totalSize"] = 2,
        ["yellowTile"] = false
      },
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIJRMApGwWADp5kG2gWjYBSQBwA7BADO"
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
      properties = {
        ["collidable"] = true
      },
      encoding = "base64",
      compression = "zlib",
      data = "eJyTZWBgkB3Fo3gUE4XlGCBAZhC4ZdRto24bdduo20bxKB6MGAAvy0o0"
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
      data = "eJxjZ2RgYB/FwworDWI8HIDrQDsADxh1G3lg1G3kgVG3kQcGs9tGwSigBgAAW/MLJg=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 3,
      name = "house",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztzrEJACAMRNGsEFwjE6mVuJAbm/JSWh3CPfj9N/tXzwY0uTuFZwdy7k4RWYOCu1OsbEOLuyMiIiKPLlpbBh4="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 4,
      name = "house_details",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFIw0EMzIwZDNC2CA6mHFg3YMMOoFuaYO6B0R3DiK3jYJRMApGwSgYBaOAMAAALA8Dow=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 24,
      name = "door2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2DwAXPGgXbBKBgFo2AUjIJRMArIAQC9SgA5"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 8,
      name = "close_door",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2DwARnGgXbBKBgFo2AUjIJRMArIAQDrjwAe"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 5,
      name = "path_details",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgewI9xoF0wCqgFVBlR6VEwCkbBKBgFo2AUDB0AAE2AAJw="
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "player",
      visible = false,
      opacity = 0.9,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 2,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 192,
          width = 16,
          height = 15.9091,
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
      name = "end",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 24,
          name = "end",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 64.0435,
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
      name = "grass",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["numObjects"] = 3
      },
      objects = {
        {
          id = 87,
          name = "grass3",
          type = "",
          shape = "rectangle",
          x = 59,
          y = 80,
          width = 97,
          height = 191,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 88,
          name = "grass2",
          type = "",
          shape = "rectangle",
          x = 179.818,
          y = 80.3636,
          width = 111.5,
          height = 189,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 89,
          name = "grass1",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 210.364,
          width = 16,
          height = 64,
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
      name = "fruit",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["numObjects"] = 1
      },
      objects = {
        {
          id = 112,
          name = "fruit1",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 102.25,
          width = 0.25,
          height = 0.5,
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
      id = 32,
      name = "fruit1",
      visible = true,
      opacity = 1,
      offsetx = 0.75,
      offsety = -4.25,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUDBfwmWWgXTAKRsEoGAWjYKQDAFvGAPg="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 22,
      name = "answerText",
      visible = true,
      opacity = 1,
      offsetx = -48,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzt0DsOQFAQRuHh2gY7txJhHx69Z+tN4hQahY7cW8xJvkz7Z0Q0Tfu70ReZMGPBig07DpwIjUhkbC91q9oTadCi82yvedazJw5sr3gvubel3MyhnQN/y9lToETl0DZN077pAoe8FPE="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 33,
      name = "answer2",
      visible = true,
      opacity = 1,
      offsetx = 1.49571,
      offsety = -1.55884,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjILBCb6zDLQLcANRVghtwTqw7kAHe4BhJg50k8Qgc9coGAWjYOQAAM0hAkw="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 34,
      name = "answer3",
      visible = false,
      opacity = 1,
      offsetx = -8.875,
      offsety = -1.5,
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
      id = 26,
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
      id = 27,
      name = "buttonsThirdRow",
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
      type = "objectgroup",
      draworder = "topdown",
      id = 21,
      name = "answer",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 94,
          name = "F0",
          type = "",
          shape = "rectangle",
          x = 383.916,
          y = 110.06,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 106,
          name = "answer1",
          type = "",
          shape = "rectangle",
          x = 353.459,
          y = 142.366,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 107,
          name = "answer2",
          type = "",
          shape = "rectangle",
          x = 377.447,
          y = 142.398,
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
      id = 28,
      name = "buttons",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztzjEOABAQAMHr7vt4CB6CN7lEdw3RUOwk268IAADvBRWJrqSvr5ZsH8VVedvi7U6zj+4an7ydmBdRGZk="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 29,
      name = "fruitBanner",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIJRQE0gwc7AIImGpdgH2lUQYAZ0hzkathgkbhsFo2AUDA8AAB6OAjU="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 30,
      name = "apple1",
      visible = true,
      opacity = 1,
      offsetx = 8.27273,
      offsety = -3.0303,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIJRMNLAZ5aBdsEoGAWjYLgCAEM0APg="
    }
  }
}
