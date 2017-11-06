-- Mike Sadusky
-- collision.lua
-- Basic collision detection class

-- Assume objOne has X properties and  y Properties to use as parameters
function checkColl(objOne)

-- Check horizontal border values
  if objOne.x < 0 then
    objOne.x = 0
  end
  if (objOne.x + objOne.w) >= love.graphics.getWidth() then
    objOne.x = love.graphics.getWidth() - objOne.w
  end

-- Checking vertical border values
  if objOne.y < 0 then
    objOne.y = 0
  end
  if (objOne.y + objOne.h) >= love.graphics.getHeight() then
    objOne.yVel = 0
    objOne.y = love.graphics.getHeight() - objOne.h
  end

end
