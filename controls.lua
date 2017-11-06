-- Mike Sadusky
-- controls.lua

require "collision"

function controls(player, dt)
  checkColl(player)

  -- Hold LShift to sprint
  if love.keyboard.isDown('lshift') then
    player.moveSpd = 300
  else
    player.moveSpd = 200
  end

  -- W,A,S,D to move
  if love.keyboard.isDown('a') then
    player.x = player.x - player.moveSpd * dt
   end
  if love.keyboard.isDown('s') then
     player.y = player.y + player.moveSpd * dt
  end
  if love.keyboard.isDown('d') then
    player.x = player.x + player.moveSpd * dt
  end
  if love.keyboard.isDown('space') then
    if player.yVelocity == 0 then
      player.yVelocity = player.jumpHeight
    end
  end

  if player.y > player.ground then
    player.yVelocity = 0
    player.y = player.ground
  end

  if player.yVelocity ~= 0 then
    player.y = player.y + player.yVelocity * dt
    player.yVelocity = player.yVelocity - player.gravity * dt
  end
end
