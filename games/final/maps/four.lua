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
  nextlayerid = 33,
  nextobjectid = 34,
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
      id = 32,
      name = "info",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["blueTile"] = false,
        ["doorType"] = "park",
        ["face"] = "left",
        ["fruit"] = false,
        ["grass"] = true,
        ["greyTile"] = false,
        ["numCommands"] = 6,
        ["size"] = 9,
        ["title"] = "Help Tonny on the way to the mall",
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
      id = 17,
      name = "background",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjALqAG2mgXbB0ASj4TYKBhIsYCZNfBSMAkIAANueAaE="
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
      data = "eJyTZWBgkCURy6HxZcgwA4aZmXBjcswbdRuqXcTaMeq2oeE2hkHsNhBtDsQWaJgYt1GCiXUbNjBYwo0RiJnQ8GBxG8gONizxio4tB8htxKSlgcqnQ8Vt2NIfCDPT0W2KUDuV0NyGy86BqusHs9uIwfRyGwCm7j8d"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 2,
      name = "street",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYCAPnGNkYDgPxBcYyTSAhmDUbeSBUbeRB0bdRh7YDHTTFiDeOgjdNpjDbdRtmGAb0L7pBPCVAXIbKEx2APFZPHjnALqNkJ0DFaejbiMPbCaiTKWH2wDouzv8"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 4,
      name = "path",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFwxVoMw20C3AD14F2AB4w6jbywGB2GygvgNyHjgcDGCzuwAZwuW0wlC0wtw0Gt6CDwRyngzG8RsHwAwBTKwRj"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 9,
      name = "house",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztkEEKQFAURZ8tYBtYhcIqFFZhK9iFYkzMMWYr7uANPpkp76t/6nSnp9sSUQdb3p70oYK1YiObc2GBq+Imm2P4CBs6rCvccseDPhsIt6iEFlGEjdlEuEcl1bitRFuGzdlCuOcvDPhttKQrntnRdXDbhJ017TQY3nICRmMVmg=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 10,
      name = "house_details",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzLZWRgyAViEMhFYo8C/CCAEYJlGBHsUTAKRsEoGAWjYBSMgpEOAFwRAxo="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 5,
      name = "trees",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYMAE7Iy4MQcjFg10BEqMuLHyALttFIxsMGsQpr/ZjAwNIPrAwDoDKzjAAHHbKBgFo2DgwWCuUxWA7qgDYiMorTBI3AUCyWhu8RhEbhtIAADchAgF"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 11,
      name = "extra",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYCANcDKSqIGG4B0Ug9wEw4MFsDJCMAsUDya3oQOWQey2UTAKRsEoGAW0BYqMEIwMXg2MU0bBMAEAZ+UDWA=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 12,
      name = "benches",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYCAdaKPxBcgwg1YA3W3o/IEEg8ltUUAcDcUxWNwykG6bAMQToXgSFrcMpNuyGVHxYHJbGyMqHkxuC2BExYPJbbpArAfF+ljcMtDhNheI5w1wuPEAsTMBrDFAbiPHnoFw22sgfoMFv8Wjh5YA2Z6XQPwKi5qXePTQEiDbw8kIoddB6VhGVHFsemgJkO1hYcSuBl18oOIUG6BXnAIAFc0fQQ=="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 3,
      name = "cars",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYCAP3GWE0P2MZBpAB7BqELqtZxC6CQaWD2K3TRjEbls9iN02CigDRwdx3D4YBG7rArqhexC4AxtYCnTXskHqtlFAGAyXMn/iIPbHGhq6DQAOowsT"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 20,
      name = "blue1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIKRB84wD7QLRsEoGAWjYHgCAGM1ANA="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 23,
      name = "yellow1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjILhDU4xD7QLRsEoGAWjYOQAAGh5AM4="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 21,
      name = "blue2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIJRMApGwUgAZ5gH2gWjYCQAAPyAANA="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 22,
      name = "blue3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFwxWcYR5oF4yCUTAKRsEoGAWjYKQBAOozANA="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 24,
      name = "fruit1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIJRMApGwUgAf5gG2gWjYCQAAG2oAP8="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 25,
      name = "fruit2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFwxWIMw+0C0bBKBgFo2AUjIJRMNIAAOdZABs="
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 13,
      name = "end",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 1,
          name = "end",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 32,
          width = 16,
          height = 20.0114,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 19,
      name = "collectable",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["numObjects"] = 2
      },
      objects = {
        {
          id = 20,
          name = "fruit1",
          type = "",
          shape = "point",
          x = 39.6818,
          y = 219.83,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "fruit2",
          type = "",
          shape = "point",
          x = 39.875,
          y = 61.25,
          width = 0,
          height = 0,
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
      name = "yellowTile",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["numObjects"] = 1
      },
      objects = {
        {
          id = 17,
          name = "yellow1",
          type = "",
          shape = "rectangle",
          x = 34,
          y = 133.545,
          width = 2.90909,
          height = 3.90909,
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
      name = "blueTile",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["numObjects"] = 3
      },
      objects = {
        {
          id = 12,
          name = "blue1",
          type = "",
          shape = "point",
          x = 117,
          y = 134.333,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "blue2",
          type = "",
          shape = "point",
          x = 39.875,
          y = 220.807,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "blue3",
          type = "",
          shape = "point",
          x = 39.6875,
          y = 55.7898,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
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
        ["numObjects"] = 4
      },
      objects = {
        {
          id = 2,
          name = "1",
          type = "",
          shape = "rectangle",
          x = 1.19697,
          y = 3.66667,
          width = 26.5,
          height = 266.5,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "2",
          type = "",
          shape = "rectangle",
          x = 51.8182,
          y = 0.181818,
          width = 234.5,
          height = 122.5,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "3",
          type = "",
          shape = "rectangle",
          x = 51.4848,
          y = 148,
          width = 235,
          height = 122,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0.5,
          y = 227.5,
          width = 254,
          height = 43.5,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "4",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 0,
          width = 160,
          height = 256,
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
      name = "player",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 19,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 128,
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
      id = 26,
      name = "text",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AU0AqcZWZgOAfE54H4AvNAuwYVXERzz1cg/9sgc+NgBqPhNQpGwSigBAizMDCIsAy0K1DBJSqVaQCuaAkB"
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 29,
      name = "text2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIJRMFzAa2YGhjdA/BaI3wHxe2aIOCcLAwMXy8C6DRv4CnTfNyD+zozKHgxAGBheIkAsyoLKHgzAEOgOIyA2ZkFlj4JRMBgAAOI/DHY="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 30,
      name = "text3",
      visible = true,
      opacity = 1,
      offsetx = -0.5,
      offsety = 6,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIJRMApoD14zMzC8AeK3QPwOiN8zQ8Q5WRgYuFgG1m2jYBSMAuoBAK8PBMw="
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 39,
      height = 17,
      id = 31,
      name = "text4",
      visible = true,
      opacity = 1,
      offsetx = -0.5,
      offsety = 11.5,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFo2AUjIJRMApGNnjNzMDwBojfAvE7IH7PDBHnZGFg4GIZWLcNdqAPDB+D0TAaBUgAAJhxBTM="
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 28,
      name = "answer",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["size"] = 9
      },
      objects = {
        {
          id = 23,
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
          id = 24,
          name = "F0",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 80,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "answer1",
          type = "",
          shape = "rectangle",
          x = 368.083,
          y = 111.875,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 27,
          name = "answer2",
          type = "",
          shape = "rectangle",
          x = 432,
          y = 144,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "answer4",
          type = "",
          shape = "rectangle",
          x = 431.875,
          y = 165.875,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "answer5",
          type = "",
          shape = "rectangle",
          x = 480.125,
          y = 165.75,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 30,
          name = "answer6",
          type = "",
          shape = "rectangle",
          x = 432.167,
          y = 187.958,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 31,
          name = "answer7",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 188.063,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 32,
          name = "answer8",
          type = "",
          shape = "rectangle",
          x = 367.561,
          y = 205.348,
          width = 17,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 33,
          name = "answer9",
          type = "",
          shape = "rectangle",
          x = 367.955,
          y = 230.045,
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
