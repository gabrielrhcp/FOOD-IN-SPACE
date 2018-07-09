collectgarbage("step")
math.randomseed(os.time())
bump = require "bump"
require "player"
require "point"
require "scoreboard"
require "reset"
require "menu"
require "help"
require"bustspeed"
require "barrier"
require "level_1"
require "level_2"
require "level_3"
require "portal" 
status = "menu"

function love.load()
    font1 = love.graphics.newFont("fontbase.ttf",24)
    font2 = love.graphics.newFont("fontbase.ttf",36)
    font3 = love.graphics.newFont("fontbase.ttf",60)
    font4 = love.graphics.newFont("fontbase.ttf",72)
    world = bump.newWorld()
    barrier.load()
    player_1.load()
    player_2.load()
    sb_win = 30
    if status=="play_map_2" then  
        level_2.load()
    end
end

function love.update(dt)
    if status=="menu" then
        menu.update()
    end
    if status=="help" then
        help.update()
    end
    if status=="select_level" then
        menu.update()
    end
    if status=="play_map_1" then
        love.audio.pause(sndmenu)
        level_1.update(dt)
        reset.update()
    end
    if status=="play_map_2" then
        love.audio.pause(sndmenu)
        love.load()
        level_2.update(dt)
        reset.update()
    end
    if status=="play_map_3" then
        love.audio.pause(sndmenu)
        level_3.update(dt)
        reset.update()
    end
end

function love.draw()
    if status=="menu" then
        menu.draw()
    end
    if status=="help" then
        help.draw()
    end
    if status=="select_level" then
        menu.draw()
    end 
    if status=="play_map_1" then
        level_1.draw()
    end
    if status=="play_map_2" then
        level_2.draw()
    end
    if status=="play_map_3" then
        level_3.draw()       
    end
    --love.graphics.print(love.timer.getFPS())
end