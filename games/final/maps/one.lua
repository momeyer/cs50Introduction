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
  nextlayerid = 19,
  nextobjectid = 90,
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
      name = "new",
      firstgid = 487,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "../tileset/new.png",
      imagewidth = 64,
      imageheight = 32,
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
      tilecount = 8,
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
      id = 8,
      name = "door",
      visible = true,
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
      properties = {},
      objects = {
        {
          id = 87,
          name = "3",
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
          name = "2",
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
          name = "1",
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
    }
  }
}
