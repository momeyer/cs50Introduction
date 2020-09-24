return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "2020.01.22",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 32,
  height = 17,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 11,
  nextobjectid = 7,
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
      tiles = {
        {
          id = 27,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 9.96294,
                y = 7.59081,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 29,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 6.10823,
                y = 7.11638,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 52,
          animation = {
            {
              tileid = 52,
              duration = 300
            },
            {
              tileid = 79,
              duration = 300
            }
          }
        },
        {
          id = 53,
          animation = {
            {
              tileid = 53,
              duration = 200
            },
            {
              tileid = 26,
              duration = 285
            },
            {
              tileid = 80,
              duration = 190
            }
          }
        }
      }
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
      width = 32,
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
      data = "eJyTZWBgkB3Fo3gUj+JRPIpH8SimIwYAexo9oQ=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 32,
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
      data = "eJxjZ2RgYB/FA4aVBhgPVuA6av+o/aP2j1j7R8HIAADYkwmJ"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 32,
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
      data = "eJxjYBhcIAqIo5FwDJ3tFwTiiUhYkM726wCxMBLWobP9SUCcgoST6Gz/KBgFo2AUjIKRAQD8vQYe"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 32,
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
      data = "eJxjYBgFgwkEMzIwZDNC2CA6mJG+9ncC7WsDYlko3Uln+0fBKBgFo2AUjAwAAM/fA8E="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 32,
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
      data = "eJxjYBi8wI9xoF0wMoEqIyo9CkbBKBgFo2AUUBsAAF71AJw="
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 10,
      name = "player",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 6,
          name = "Player",
          type = "",
          shape = "rectangle",
          x = 103.667,
          y = 199.667,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}