portal={}

sndportal = love.audio.newSource('sound_effects/portal.mp3','static')

function portal.update(dt)
    --ENTRANDO NA ESQUERDA E SAINDO NA DIREITA
    if player_1.x <= 13 then
        if player_1.y >= 19 and player_1.y + player_1.height <= 97 then
            love.audio.play(sndportal)
            player_1.x = 707
            player_1.y = 379
        elseif player_1.y >= 141 and player_1.y + player_1.height <= 219 then
            love.audio.play(sndportal)
            player_1.x = 707
            player_1.y = 255
        elseif player_1.y >= 262 and player_1.y + player_1.height <= 340 then
            love.audio.play(sndportal)
            player_1.x = 707
            player_1.y = 498
        elseif player_1.y >= 379 and player_1.y + player_1.height <= 457 then
            love.audio.play(sndportal)
            player_1.x = 707
            player_1.y = 141
        elseif player_1.y >= 495 and player_1.y + player_1.height <= 573 then
            love.audio.play(sndportal)
            player_1.x = 707
            player_1.y = 50
        end
    end
    if player_2.x <= 13 then
        if player_2.y >= 19 and player_2.y + player_2.height <= 97 then
            love.audio.play(sndportal)
            player_2.x = 707
            player_2.y = 379
        elseif player_2.y >= 141 and player_2.y + player_2.height <= 219 then
            love.audio.play(sndportal)
            player_2.x = 707
            player_2.y = 255
        elseif player_2.y >= 262 and player_2.y + player_2.height <= 340 then
            love.audio.play(sndportal)
            player_2.x = 707
            player_2.y = 498
        elseif player_2.y >= 379 and player_2.y + player_2.height <= 457 then
            love.audio.play(sndportal)
            player_2.x = 707
            player_2.y = 141
        elseif player_2.y >= 495 and player_2.y + player_2.height <= 573 then
            love.audio.play(sndportal)
            player_2.x = 707
            player_2.y = 50
        end
    end
    --ENTRANDO NA DIREITA E SAINDO NA ESQUERDA
    if player_1.x + player_1.width >= 787 then
        if player_1.y >= 24 and player_1.y + player_1.height <= 102 then
            love.audio.play(sndportal)
            player_1.x = 43
            player_1.y = 141
        elseif player_1.y >= 139 and player_1.y + player_1.height <= 217 then
            love.audio.play(sndportal)
            player_1.x = 43
            player_1.y = 379
        elseif player_1.y >= 255 and player_1.y + player_1.height <= 333 then
            love.audio.play(sndportal)
            player_1.x = 43
            player_1.y = 50
        elseif player_1.y >= 374 and player_1.y + player_1.height <= 452 then
            love.audio.play(sndportal)
            player_1.x = 43
            player_1.y = 262
        elseif player_1.y >= 498 and player_1.y + player_1.height <= 576 then
            love.audio.play(sndportal)
            player_1.x = 43
            player_1.y = 495
        end
    end
    if player_2.x + player_2.width >= 787 then
        if player_2.y >= 24 and player_2.y + player_2.height <= 102 then
            love.audio.play(sndportal)
            player_2.x = 43
            player_2.y = 141
        elseif player_2.y >= 139 and player_2.y + player_2.height <= 217 then
            love.audio.play(sndportal)
            player_2.x = 43
            player_2.y = 379
        elseif player_2.y >= 255 and player_2.y + player_2.height <= 333 then
            love.audio.play(sndportal)
            player_2.x = 43
            player_2.y = 50
        elseif player_2.y >= 374 and player_2.y + player_2.height <= 452 then
            love.audio.play(sndportal)
            player_2.x = 43
            player_2.y = 262
        elseif player_2.y >= 498 and player_2.y + player_2.height <= 576 then
            love.audio.play(sndportal)
            player_2.x = 43
            player_2.y = 495
        end
    end
end   
