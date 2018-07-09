level_1={}

space = love.graphics.newImage("image/space.png")
sndlevel_1 = love.audio.newSource('sound_effects/level_1.mp3','static')

function level_1.update(dt)
    if sb_p1~=sb_win and sb_p2~=sb_win then     
        player_1.update(dt)
        player_2.update(dt)
        circle.update()  --PONTOS
        bustspeed.update()  --BUST SPEED
        love.audio.play(sndlevel_1)
    end
end

function level_1.draw()
    love.graphics.setColor(255,255,255)
    love.graphics.draw(space,0,0)
    player_1.draw()
    player_2.draw()
    circle.draw()
    bustspeed.draw()
    scoreboard.draw()
end
