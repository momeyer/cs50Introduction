Tiles = Class{}

function Tiles:init(map, world, game)
    self.mapProperties = map.layers.info.properties
    self.door = Door(map, world, self.mapProperties.doorType)
    self.player = Player(map, self.mapProperties.face, world, game)

    local elements = {GRASS, YELLOW_TILE, BLUE_TILE, GREY_TILE, FRUIT}
    for i = 0, #elements do
        if self.mapProperties[elements[i]] then
            print(elements[i])
            Tile(map, world, elements[i])
        end
    end
end

-- CHANGE NAME