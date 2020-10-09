Classes = Class{}

function Classes:init(map, world, game)
    self.mapProperties = map.layers.info.properties
    self.door = Door(map, world, self.mapProperties.doorType)
    self.player = Player(map, self.mapProperties.face, world, game.stages)

    if self.mapProperties.grass then
        grass = Grass(map, world)
    end
    if self.mapProperties.yellowTile then
        yellowTile = YellowTile(map, world)
    end
    if self.mapProperties.blueTile then
        blueTile = BlueTile(map, world)
    end
     if self.mapProperties.greyTile then
        blueTile = GreyTile(map, world)
    end
    if self.mapProperties.fruit then
        fruit = Collectables(map, world)
    end
end