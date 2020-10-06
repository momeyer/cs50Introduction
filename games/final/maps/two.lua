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
  nextlayerid = 13,
  nextobjectid = 48,
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
    }
  },
  layers = {
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
      data = "eJzt0jsOgkAUheE7a5CVqR1URktlB0CowE4bo0Z2hPJakMfkNjNm6jMY/+TLlPcUIzLvlrBSa/IWtz0cVEre4lZBrY7kLW4ZlCqHgrrG7goPdYM7d47VC0ZojEiHtyfteH7uG9Jxp4uxTQFta823IZBtIRdDwh7h6QRn9ghPC4jYIzxtYQeb////md7xORxA"
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
      data = "eJxjYBgFo4B+YBsjA8N0PHg748C57RwjdrwLiR5It+0igF9C1cpB3fkSp2n0B/KM+PmjYBSMglEwCoYPAAD7zRWP"
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
      visible = true,
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
          x = 179.938,
          y = 96,
          width = 9.875,
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
      id = 12,
      name = "grass",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 25,
          name = "1",
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
          name = "2",
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
          name = "3",
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
          name = "4",
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
          name = "5",
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
          name = "6",
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
          name = "7",
          type = "",
          shape = "rectangle",
          x = 114.909,
          y = 195.455,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 35,
          name = "8",
          type = "",
          shape = "rectangle",
          x = 98.9091,
          y = 211.455,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 36,
          name = "9",
          type = "",
          shape = "rectangle",
          x = 82.9091,
          y = 227.455,
          width = 72.7273,
          height = 44.3333,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 37,
          name = "10",
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
          name = "11",
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
          name = "12",
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
          name = "13",
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
          name = "14",
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
          name = "15",
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
          name = "16",
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
          name = "17",
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
          name = "18",
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
    }
  }
}
