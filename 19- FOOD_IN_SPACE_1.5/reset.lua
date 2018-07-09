reset={}

function reset.update()
    function love.keypressed(key)
        if key == "r" then  
            --RESETE PLACAR
            sb_p1 = 0
            sb_p2 = 0
            --RESETE PLAYER 1
            player_1.x = 60
            player_1.y = 275
            player_1.speed=250
            player_1.width=50
            player_1.height=50
            --RESETE PLAYER 2
            player_2.x = 690
            player_2.y = 275
            player_2.speed=250
            player_2.width=50
            player_2.height=50
            -- RESETE CIRCLE
            circle.x = 400
            circle.y = 300
            --RESETE THUNDER
            thunder.x = math.random(20,780)
            thunder.y = math.random(60,580)
        end
        if key == "m" then  
            if status=="play_map_1" then
                love.audio.stop(sndlevel_1)
            elseif status=="play_map_2" then
                world:remove(planet_purple)
                world:remove(planet_green)
                world:remove(planet_red)
                world:remove(planet_earth)
                love.audio.stop(sndlevel_2)
            elseif status=="play_map_3" then
                love.audio.stop(sndlevel_3)
            end 
            status = "menu"
             --RESETE PLACAR
             sb_p1 = 0
             sb_p2 = 0
             --RESETE PLAYER 1
             player_1.x = 60
             player_1.y = 275
             player_1.speed=250
             player_1.width=50
             player_1.height=50
             --RESETE PLAYER 2
             player_2.x = 690
             player_2.y = 275
             player_2.speed=250
             player_2.width=50
             player_2.height=50
             -- RESETE CIRCLE
             circle.x = 400
             circle.y = 300
            --RESETE THUNDER
            thunder.x = math.random(20,780)
            thunder.y = math.random(60,580)
        end
    end
end