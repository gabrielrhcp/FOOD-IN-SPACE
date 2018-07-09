level_3={}

galaxy = love.graphics.newImage("image/galaxy.png")
sndlevel_3 = love.audio.newSource('sound_effects/level_3.mp3','static')

function level_3.update(dt)
    if sb_p1~=sb_win and sb_p2~=sb_win then
        player_1.update(dt)
        player_2.update(dt)
        circle.update()
        bustspeed.update()
        portal.update(dt)
        love.audio.play(sndlevel_3)
    end
end

function level_3.draw()
    love.graphics.setColor(255,255,255)
    love.graphics.draw(galaxy)
    player_1.draw()
    player_2.draw()
    circle.draw()
    bustspeed.draw()
    scoreboard.draw()
end