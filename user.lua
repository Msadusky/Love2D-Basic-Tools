-- Mike Sadusky
-- user.lua
-- Reusable class for creating players

-- create our player
Player = {}

-- Function assigning properties to our new player
function Player:new(x, y, ground, moveSpd, jumpHeight, yVelocity, gravity, sprite)
  newPlayer = {}
  self.x = x
  self.y = y
  self.ground = ground
  self.moveSpd = moveSpd
  self.jumpHeight = jumpHeight
  self.yVelocity = yVelocity
  self.gravity = gravity
  self.sprite = love.graphics.newImage(sprite)
  self.h = self.sprite:getHeight()
  self.w = self.sprite:getWidth()
  self.__index = self
  return setmetatable(newPlayer, self)
end

-- function passing parameters to draw the new player object
function Player:drawMe()
  love.graphics.draw(self.sprite, self.x, self.y)
end
