level_2={}

image_planets = love.graphics.newImage("image/planets.png")
sndlevel_2 = love.audio.newSource('sound_effects/level_2.mp3','static')

--PLANETA ROXO
planet_purple={
    x=247,
    y=176,
    width=59,
    height=56
}
--PLANETA VERDE
planet_green={
    x=158,
    y=398,
    width=87,
    height=83
}
--PLANETA VERMELHO
planet_red={
    x=563,
    y=151,
    width=31,
    height=31
}
--PLANETA TERRA
planet_earth={
    x=712,
    y=393,
    width=52,
    height=51
}

function level_2.load()
    world:add(planet_purple,planet_purple.x,planet_purple.y,planet_purple.width,planet_purple.height)
    world:add(planet_green,planet_green.x,planet_green.y,planet_green.width,planet_green.height)
    world:add(planet_red,planet_red.x,planet_red.y,planet_red.width,planet_red.height)
    world:add(planet_earth,planet_earth.x,planet_earth.y,planet_earth.width,planet_earth.height)
end

function level_2.update(dt)
    if sb_p1~=sb_win and sb_p2~=sb_win then
        player_1.update(dt)
        player_2.update(dt)
        circle.update()  --PONTOS
        bustspeed.update()  --BUST SPEED
        love.audio.play(sndlevel_2)
    end
end

function level_2.draw()
    love.graphics.setColor(255,255,255)
    love.graphics.draw(image_planets)
    player_1.draw()
    player_2.draw()
    circle.draw()
    bustspeed.draw()
    scoreboard.draw()
end