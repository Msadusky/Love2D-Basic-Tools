-- Mike Sadusky
-- main.lua
-- Craftie

-- Statements linking code from other accompanying files
require('user')
require('controls')
require('platforms')

-- One time load of resources to use. Needs refactoring for any multiplayer
function love.load()
  floor = Platform:new(0, 600, 'resources/sprites/2.png')
  p1 = Player:new(0, 0, 0, 50, -300, 0, -500, 'resources/sprites/1.png')

  -- Next two lines are to too ensure that player falls without being able to
  -- jump until coming across a platform.
  p1.yVelocity = p1.jumpHeight
  p1.ground = floor.y - p1.h
end

-- Check for any changes of any values
function love.update(dt)
  controls(p1, dt)
end

-- Draw new objects onto the screen
function love.draw()
  p1:drawMe()
  floor:drawMe()
end

-- Standard callback checking for spacebar key being pressed
function love.keypressed(key)
  if key == 'space' then
    jumping = true;
  end
end

-- Standard callback checking for game quitting conditions
function love.quit()
end
