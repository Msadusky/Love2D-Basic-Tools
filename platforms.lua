-- Mike Sadusky
-- platforms.lua
-- Reusable class for instantiating platforms

-- Create our platform
Platform = {}

-- Function assigning properties to our new player
function Platform:new(x, y, sprite)
  newPlatform = {}
  self.x = x
  self.y = y
  self.sprite = love.graphics.newImage(sprite)
  self.h = self.sprite:getHeight()
  self.w = self.sprite:getWidth()
  self.__index = self
  return setmetatable(newPlatform, self)
end

-- function passing parameters to draw the new player object
function Platform:drawMe()
  love.graphics.draw(self.sprite, self.x, self.y)
end
