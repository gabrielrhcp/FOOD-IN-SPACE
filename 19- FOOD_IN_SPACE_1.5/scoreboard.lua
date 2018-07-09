scoreboard = {}

--sndwin = love.audio.newSource('sound_effects/win.mp3','static')

function scoreboard.draw()
    love.graphics.setColor(255,100, 255,100, 255,100)
	love.graphics.setFont(font2)
    love.graphics.print(sb_p1, 350, 5)
    love.graphics.print(sb_p2, 450, 5)

    if sb_p1 == sb_win then  
        --love.audio.play(sndwin)
        love.graphics.setFont(font3)
        love.graphics.print("VITÓRIA DO DONUT", 50,230)
        love.graphics.setFont(font1)
        love.graphics.print("Pressione 'R' para reiniciar", 189,350)
        love.graphics.print("Pressione 'M' para ir ao menu", 170,375)
    elseif sb_p2 == sb_win then  
       -- love.audio.play(sndwin)
        love.graphics.setFont(font3)
        love.graphics.print("VITÓRIA DO SUSHI", 50,230)
        love.graphics.setFont(font1)
        love.graphics.print("Pressione 'R' para reiniciar", 189,350)
        love.graphics.print("Pressione 'M' para ir ao menu", 170,375)
    end
end