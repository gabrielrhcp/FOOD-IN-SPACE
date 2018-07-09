bustspeed={}

thunder={
    x = math.random(30,770),
    y = math.random(70,570)
}

mult_speed = 25
image_thunder = love.graphics.newImage("image/thunder.png")
sndbustspeed1 = love.audio.newSource('sound_effects/bustspeed.mp3','static')
sndbustspeed2 = love.audio.newSource('sound_effects/bustspeed.mp3','static')

function bustspeed.update(dt)
    if sb_p1~=sb_win and sb_p2~=sb_win then
        if status~="play_map_2" then
            --COLISÃO DOS BUST NOS MAPAS 1 E 3
            --COLISÃO DO PLAYER 1
            if player_1.x < thunder.x and player_1.x + player_1.width > thunder.x then  
                if player_1.y < thunder.y and player_1.y + player_1.height > thunder.y then  
                    love.audio.play(sndbustspeed1)
                    player_1.speed = player_1.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                elseif player_1.y < thunder.y + 30 and player_1.y + player_1.height > thunder.y + 30 then
                    love.audio.play(sndbustspeed2)
                    player_1.speed = player_1.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                end
            elseif player_1.x < thunder.x + 30 and player_1.x + player_1.width > thunder.x + 30 then  
                if player_1.y < thunder.y and player_1.y + player_1.height > thunder.y then
                    love.audio.play(sndbustspeed2)
                    player_1.speed = player_1.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                elseif player_1.y < thunder.y + 30 and player_1.y + player_1.height > thunder.y + 30 then
                    love.audio.play(sndbustspeed1)
                    player_1.speed = player_1.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                end
            end
            --COLISÃO DO PLAYER 2
            if player_2.x < thunder.x and player_2.x + player_2.width > thunder.x then  
                if player_2.y < thunder.y and player_2.y + player_2.height > thunder.y then  
                    love.audio.play(sndbustspeed1)
                    player_2.speed = player_2.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                elseif player_2.y < thunder.y + 30 and player_2.y + player_2.height > thunder.y + 30 then
                    love.audio.play(sndbustspeed2)
                    player_2.speed = player_2.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                end
            elseif player_2.x < thunder.x + 30 and player_2.x + player_2.width > thunder.x + 30 then  
                if player_2.y < thunder.y and player_2.y + player_2.height > thunder.y then
                    love.audio.play(sndbustspeed2)
                    player_2.speed = player_2.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                elseif player_2.y < thunder.y + 30 and player_2.y + player_2.height > thunder.y + 30 then
                    love.audio.play(sndbustspeed1)
                    player_2.speed = player_2.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                end
            end
        elseif status=="play_map_2" then
            --COLISÃO DOS BUST NO MAPA 2
            --COLISÃO DO PLAYER 1
            if player_1.x < thunder.x and player_1.x + player_1.width > thunder.x then  
                if player_1.y < thunder.y and player_1.y + player_1.height > thunder.y then  
                    love.audio.play(sndbustspeed1)
                    player_1.speed = player_1.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                    if (thunder.x >= 217 and thunder.x <= 247+59) and (thunder.y >= 146 and thunder.y <= 176+56) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 128 or thunder.x <= 158+87) and (thunder.y >= 368 and thunder.y <= 398+83) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 533 or thunder.x <= 563+31) and (thunder.y >= 121 and thunder.y <= 151+31) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 682 or thunder.x <= 712+52) and (thunder.y >= 363 and thunder.y <= 393+51) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    end
                elseif player_1.y < thunder.y + 30 and player_1.y + player_1.height > thunder.y + 30 then
                    love.audio.play(sndbustspeed2)
                    player_1.speed = player_1.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                    if (thunder.x >= 217 and thunder.x <= 247+59) and (thunder.y >= 146 and thunder.y <= 176+56) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 128 or thunder.x <= 158+87) and (thunder.y >= 368 and thunder.y <= 398+83) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 533 or thunder.x <= 563+31) and (thunder.y >= 121 and thunder.y <= 151+31) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 682 or thunder.x <= 712+52) and (thunder.y >= 363 and thunder.y <= 393+51) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    end
                end
            elseif player_1.x < thunder.x + 30 and player_1.x + player_1.width > thunder.x + 30 then  
                if player_1.y < thunder.y and player_1.y + player_1.height > thunder.y then
                    love.audio.play(sndbustspeed2)
                    player_1.speed = player_1.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                    if (thunder.x >= 217 and thunder.x <= 247+59) and (thunder.y >= 146 and thunder.y <= 176+56) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 128 or thunder.x <= 158+87) and (thunder.y >= 368 and thunder.y <= 398+83) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 533 or thunder.x <= 563+31) and (thunder.y >= 121 and thunder.y <= 151+31) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 682 or thunder.x <= 712+52) and (thunder.y >= 363 and thunder.y <= 393+51) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    end
                elseif player_1.y < thunder.y + 30 and player_1.y + player_1.height > thunder.y + 30 then
                    love.audio.play(sndbustspeed1)
                    player_1.speed = player_1.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                    if (thunder.x >= 217 and thunder.x <= 247+59) and (thunder.y >= 146 and thunder.y <= 176+56) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 128 or thunder.x <= 158+87) and (thunder.y >= 368 and thunder.y <= 398+83) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 533 or thunder.x <= 563+31) and (thunder.y >= 121 and thunder.y <= 151+31) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 682 or thunder.x <= 712+52) and (thunder.y >= 363 and thunder.y <= 393+51) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    end
                end
            end
            --COLISÃO DO PLAYER 2
            if player_2.x < thunder.x and player_2.x + player_2.width > thunder.x then  
                if player_2.y < thunder.y and player_2.y + player_2.height > thunder.y then  
                    love.audio.play(sndbustspeed1)
                    player_2.speed = player_2.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                    if (thunder.x >= 217 and thunder.x <= 247+59) and (thunder.y >= 146 and thunder.y <= 176+56) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 128 or thunder.x <= 158+87) and (thunder.y >= 368 and thunder.y <= 398+83) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 533 or thunder.x <= 563+31) and (thunder.y >= 121 and thunder.y <= 151+31) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 682 or thunder.x <= 712+52) and (thunder.y >= 363 and thunder.y <= 393+51) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    end
                elseif player_2.y < thunder.y + 30 and player_2.y + player_2.height > thunder.y + 30 then
                    love.audio.play(sndbustspeed2)
                    player_2.speed = player_2.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                    if (thunder.x >= 217 and thunder.x <= 247+59) and (thunder.y >= 146 and thunder.y <= 176+56) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 128 or thunder.x <= 158+87) and (thunder.y >= 368 and thunder.y <= 398+83) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 533 or thunder.x <= 563+31) and (thunder.y >= 121 and thunder.y <= 151+31) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 682 or thunder.x <= 712+52) and (thunder.y >= 363 and thunder.y <= 393+51) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    end
                end
            elseif player_2.x < thunder.x + 30 and player_2.x + player_2.width > thunder.x + 30 then  
                if player_2.y < thunder.y and player_2.y + player_2.height > thunder.y then
                    love.audio.play(sndbustspeed2)
                    player_2.speed = player_2.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                    if (thunder.x >= 217 and thunder.x <= 247+59) and (thunder.y >= 146 and thunder.y <= 176+56) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 128 or thunder.x <= 158+87) and (thunder.y >= 368 and thunder.y <= 398+83) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 533 or thunder.x <= 563+31) and (thunder.y >= 121 and thunder.y <= 151+31) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 682 or thunder.x <= 712+52) and (thunder.y >= 363 and thunder.y <= 393+51) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    end
                elseif player_2.y < thunder.y + 30 and player_2.y + player_2.height > thunder.y + 30 then
                    love.audio.play(sndbustspeed1)
                    player_2.speed = player_2.speed + mult_speed
                    thunder.x = math.random(30,770)
                    thunder.y = math.random(70,570)
                    if (thunder.x >= 217 and thunder.x <= 247+59) and (thunder.y >= 146 and thunder.y <= 176+56) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 128 or thunder.x <= 158+87) and (thunder.y >= 368 and thunder.y <= 398+83) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 533 or thunder.x <= 563+31) and (thunder.y >= 121 and thunder.y <= 151+31) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    elseif (thunder.x >= 682 or thunder.x <= 712+52) and (thunder.y >= 363 and thunder.y <= 393+51) then
                        thunder.x = math.random(275,680)
                        thunder.y = math.random(275,570)
                    end
                end
            end
        end
    end
end

function bustspeed.draw()
    love.graphics.draw(image_thunder,thunder.x,thunder.y)
end