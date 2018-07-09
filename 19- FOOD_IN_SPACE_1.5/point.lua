require "player"
require "scoreboard"

circle={
    x=400,
    y=300,
    rad=10
}

sb_p1=0
sb_p2=0
sndpoint1 = love.audio.newSource('sound_effects/point.mp3','static')
sndpoint2 = love.audio.newSource('sound_effects/point.mp3','static')

function circle.update()
	if sb_p1~=sb_win and sb_p2~=sb_win then
        if status ~= "play_map_2" then
            --COLISÃO DOS PONTOS NOS MAPAS 1 E 3
			--COLISÃO ENTRE O PLAYER1 E O CIRCULO
			if player_1.x < circle.x - circle.rad and player_1.width + player_1.x > circle.x - circle.rad then
				if player_1.y < circle.y - circle.rad and player_1.height + player_1.y > circle.y - circle.rad then
					love.audio.play(sndpoint1)        
					circle.x = math.random(10, 790)
					circle.y = math.random(52, 590) 
					sb_p1 = sb_p1 + 1
				elseif player_1.y < circle.y + circle.rad and player_1.height + player_1.y > circle.y + circle.rad then
					love.audio.play(sndpoint2)              
					circle.x = math.random(10, 790)
					circle.y = math.random(52, 590) 
					sb_p1 = sb_p1 + 1                   
				end
			elseif player_1.x < circle.x +  circle.rad and player_1.width + player_1.x > circle.x - circle.rad then
				if player_1.y < circle.y - circle.rad and player_1.height + player_1.y > circle.y - circle.rad then
                	love.audio.play(sndpoint2)
					circle.x = math.random(10, 790)
                   	circle.y = math.random(52, 590) 
                    sb_p1 = sb_p1 + 1
                elseif player_1.y < circle.y + circle.rad and player_1.height + player_1.y > circle.y + circle.rad then
                    love.audio.play(sndpoint1)
                    circle.x = math.random(10, 790)
                    circle.y = math.random(52, 590)
                    sb_p1 = sb_p1 + 1
                end
            end     
            --COLISÃO ENTRE O PLAYER2 E O CIRCULO
            if player_2.x < circle.x - circle.rad and player_2.width + player_2.x > circle.x - circle.rad then
               	if player_2.y < circle.y - circle.rad and player_2.height + player_2.y > circle.y - circle.rad then
                    love.audio.play(sndpoint1)      
                    circle.x = math.random(10, 790)
                   	circle.y = math.random(52, 590) 
                    sb_p2 = sb_p2 + 1
                elseif player_2.y < circle.y + circle.rad and player_2.height + player_2.y > circle.y + circle.rad then
                    love.audio.play(sndpoint2)
                    circle.x = math.random(10, 790)
                   	circle.y = math.random(52, 590) 
                    sb_p2 = sb_p2 + 1
                end
           	elseif player_2.x < circle.x +  circle.rad and player_2.width + player_2.x > circle.x - circle.rad then
                if player_2.y < circle.y - circle.rad and player_2.height + player_2.y > circle.y - circle.rad then
                   	love.audio.play(sndpoint2)
                    circle.x = math.random(10, 790)
                    circle.y = math.random(52, 590) 
                    sb_p2 = sb_p2 + 1
             	elseif player_2.y < circle.y + circle.rad and player_2.height + player_2.y > circle.y + circle.rad then
                    love.audio.play(sndpoint1)
                    circle.x = math.random(10, 790)
                    circle.y = math.random(52, 590) 
                    sb_p2 = sb_p2+ 1
                end
            end   
        elseif status=="play_map_2" then
            --COLISÃO DOS PONTOS NO MAPA 2
            --COLISÃO ENTRE O PLAYER1 E O CIRCULO
            if player_1.x < circle.x - circle.rad and player_1.width + player_1.x > circle.x - circle.rad then
               	if player_1.y < circle.y - circle.rad and player_1.height + player_1.y > circle.y - circle.rad then
                    love.audio.play(sndpoint1)        
                    circle.x = math.random(10, 790)
                    circle.y = math.random(52, 590) 
                    sb_p1 = sb_p1 + 1
                    if (circle.x >= 217 and circle.x <= 247+59) and (circle.y >= 146 and circle.y <= 176+56) then
                        circle.x = math.random(275,680)
                      	circle.y = math.random(275,570)
                    elseif (circle.x >= 128 or circle.x <= 158+87) and (circle.y >= 368 and circle.y <= 398+83) then
                        circle.x = math.random(275,680)
                       	circle.y = math.random(275,570)
                    elseif (circle.x >= 533 or circle.x <= 563+31) and (circle.y >= 121 and circle.y <= 151+31) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 682 or circle.x <= 712+52) and (circle.y >= 363 and circle.y <= 393+51) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                   	end                                           
                elseif player_1.y < circle.y + circle.rad and player_1.height + player_1.y > circle.y + circle.rad then
                    love.audio.play(sndpoint2)              
                   	circle.x = math.random(10, 790)
                    circle.y = math.random(52, 590) 
                    sb_p1 = sb_p1 + 1  
                   	if (circle.x >= 217 and circle.x <= 247+59) and (circle.y >= 146 and circle.y <= 176+56) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                 	elseif (circle.x >= 128 or circle.x <= 158+87) and (circle.y >= 368 and circle.y <= 398+83) then
                      	circle.x = math.random(275,680)
                       	circle.y = math.random(275,570)
                    elseif (circle.x >= 533 or circle.x <= 563+31) and (circle.y >= 121 and circle.y <= 151+31) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                  	elseif (circle.x >= 682 or circle.x <= 712+52) and (circle.y >= 363 and circle.y <= 393+51) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
               		end	          
                end
           	elseif player_1.x < circle.x +  circle.rad and player_1.width + player_1.x > circle.x - circle.rad then
               	if player_1.y < circle.y - circle.rad and player_1.height + player_1.y > circle.y - circle.rad then
                   	love.audio.play(sndpoint2)
                    circle.x = math.random(10, 790)
                   	circle.y = math.random(52, 590) 
                   	sb_p1 = sb_p1 + 1
                    if (circle.x >= 217 and circle.x <= 247+59) and (circle.y >= 146 and circle.y <= 176+56) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 128 or circle.x <= 158+87) and (circle.y >= 368 and circle.y <= 398+83) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 533 or circle.x <= 563+31) and (circle.y >= 121 and circle.y <= 151+31) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 682 or circle.x <= 712+52) and (circle.y >= 363 and circle.y <= 393+51) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    end
                elseif player_1.y < circle.y + circle.rad and player_1.height + player_1.y > circle.y + circle.rad then
                    love.audio.play(sndpoint1)
                    circle.x = math.random(10, 790)
                    circle.y = math.random(52, 590)
                    sb_p1 = sb_p1 + 1
                    if (circle.x >= 217 and circle.x <= 247+59) and (circle.y >= 146 and circle.y <= 176+56) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 128 or circle.x <= 158+87) and (circle.y >= 368 and circle.y <= 398+83) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 533 or circle.x <= 563+31) and (circle.y >= 121 and circle.y <= 151+31) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 682 or circle.x <= 712+52) and (circle.y >= 363 and circle.y <= 393+51) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    end
                end
            end     
            --COLISÃO ENTRE O PLAYER2 E O CIRCULO
            if player_2.x < circle.x - circle.rad and player_2.width + player_2.x > circle.x - circle.rad then
                if player_2.y < circle.y - circle.rad and player_2.height + player_2.y > circle.y - circle.rad then
                    love.audio.play(sndpoint1)      
                    circle.x = math.random(10, 790)
                    circle.y = math.random(52, 590) 
                    sb_p2 = sb_p2 + 1
                    if (circle.x >= 217 and circle.x <= 247+59) and (circle.y >= 146 and circle.y <= 176+56) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 128 or circle.x <= 158+87) and (circle.y >= 368 and circle.y <= 398+83) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 533 or circle.x <= 563+31) and (circle.y >= 121 and circle.y <= 151+31) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 682 or circle.x <= 712+52) and (circle.y >= 363 and circle.y <= 393+51) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    end
                elseif player_2.y < circle.y + circle.rad and player_2.height + player_2.y > circle.y + circle.rad then
                    love.audio.play(sndpoint2)
                    circle.x = math.random(10, 790)
                    circle.y = math.random(52, 590) 
                    sb_p2 = sb_p2 + 1
                    if (circle.x >= 217 and circle.x <= 247+59) and (circle.y >= 146 and circle.y <= 176+56) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 128 or circle.x <= 158+87) and (circle.y >= 368 and circle.y <= 398+83) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 533 or circle.x <= 563+31) and (circle.y >= 121 and circle.y <= 151+31) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 682 or circle.x <= 712+52) and (circle.y >= 363 and circle.y <= 393+51) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    end
                end
            elseif player_2.x < circle.x +  circle.rad and player_2.width + player_2.x > circle.x - circle.rad then
                if player_2.y < circle.y - circle.rad and player_2.height + player_2.y > circle.y - circle.rad then
                    love.audio.play(sndpoint2)
                    circle.x = math.random(10, 790)
                    circle.y = math.random(52, 590) 
                    sb_p2 = sb_p2 + 1
                    if (circle.x >= 217 and circle.x <= 247+59) and (circle.y >= 146 and circle.y <= 176+56) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 128 or circle.x <= 158+87) and (circle.y >= 368 and circle.y <= 398+83) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 533 or circle.x <= 563+31) and (circle.y >= 121 and circle.y <= 151+31) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 682 or circle.x <= 712+52) and (circle.y >= 363 and circle.y <= 393+51) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    end
                elseif player_2.y < circle.y + circle.rad and player_2.height + player_2.y > circle.y + circle.rad then
                    love.audio.play(sndpoint1)
                    circle.x = math.random(10, 790)
                    circle.y = math.random(52, 590) 
                    sb_p2 = sb_p2+ 1
                    if (circle.x >= 217 and circle.x <= 247+59) and (circle.y >= 146 and circle.y <= 176+56) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 128 or circle.x <= 158+87) and (circle.y >= 368 and circle.y <= 398+83) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 533 or circle.x <= 563+31) and (circle.y >= 121 and circle.y <= 151+31) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    elseif (circle.x >= 682 or circle.x <= 712+52) and (circle.y >= 363 and circle.y <= 393+51) then
                        circle.x = math.random(275,680)
                        circle.y = math.random(275,570)
                    end
                end
             end   
        end
    end
end

image_point = love.graphics.newImage("image/point.png")
function circle.draw()
    if sb_p1~=sb_win and sb_p2~=sb_win then
        love.graphics.setColor(255, 255, 255) 
        love.graphics.draw(image_point, circle.x - circle.rad , circle.y - circle.rad)
    end
end
