Classes = Class{}

function Classes:init(map, world, game)
    self.mapProperties = map.layers.info.properties
    self.door = Door(map, world, self.mapProperties.doorType)
    self.player = Player(map, self.mapProperties.face, world, game.stages)

    if self.mapProperties.grass then
        Tile(map, world, 'grass')
    end
    if self.mapProperties.yellowTile then
        Tile(map, world, 'yellowTile')
    end
    if self.mapProperties.blueTile then
        Tile(map, world, 'blueTile')
    end
     if self.mapProperties.greyTile then
        Tile(map, world, 'greyTile')
    end
    if self.mapProperties.fruit then
        Tile(map, world, 'fruit')
    end
end