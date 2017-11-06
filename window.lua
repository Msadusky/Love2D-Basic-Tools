-- Mike Sadusky
-- Window settings module
-- window.lua
-- Reusable class file for creating windows in Love2D
-- Assumes you want to render window in the center of the user's screen


Window = {}

function Window:new(x, y, title)
  newWindow = {}
  self.x = x
  self.y = y
  self.title = title
  self.__index = self
  Window:centerWin()
  Window:drawWin()
  return setmetatable(newWindow, self)
end

-- Called in constructor as it is assumed you want the screen rendered to the
-- center of the screen
function Window:centerWin()
  -- Obtaining User Display Resolution
  displayX, displayY = love.window.getDesktopDimensions('1')

  -- Setup game to run in the center of the screen
  posWindowX = ((displayX/2) - (self.x/2))
  posWindowY = ((displayY/2) - (self.y/2))

  love.window.setPosition(posWindowX, posWindowY, '1')
end

-- Function to draw window to be called in constructor as well
function Window:drawWin()
  love.window.setTitle(self.title)
  love.window.setDisplaySleepEnabled(false)
  love.window.setMode(self.x, self.y)
end
