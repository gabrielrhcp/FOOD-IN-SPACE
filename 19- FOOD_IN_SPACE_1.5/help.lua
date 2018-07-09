--TELA DE AJUDA
help={}

function help.update()
    love.audio.play(sndmenu)
end

image_help = love.graphics.newImage("image/help.png")
wasd = love.graphics.newImage("image/wasd.png")
sets = love.graphics.newImage("image/sets.png")
image_planet = love.graphics.newImage("image/planet.png")
image_portal = love.graphics.newImage("image/portal.png")

function help.draw()
    love.graphics.draw(image_help,0,0)
    love.graphics.setFont(font1)
    love.graphics.setColor(255,255,255)
    love.graphics.print("controla o",140,40) 
    love.graphics.draw(wasd,10,10)
    love.graphics.draw(image_donut,346,25)
    love.graphics.print("controla o",140,128)
    love.graphics.draw(sets,10,98)
    love.graphics.draw(image_sushi,346,113)
    love.graphics.print("pegue as",450,40)
    love.graphics.print(",ganhará",630,40)
    love.graphics.print("se pegar 30 delas",450,60)
    love.graphics.draw(image_point,605,40)
    love.graphics.print("+ velocidade",500,128)
    love.graphics.draw(image_thunder,720,125)
    love.graphics.print("você não pode se aproximar dos",10,198)
    love.graphics.draw(image_planet,555,185)
    love.graphics.print("se não entrará na órbita deles",10,223)
    love.graphics.print("caso entre em um",10,330)
    love.graphics.draw(image_portal,323,281)
    love.graphics.print("da esquerda sairá em um da direita",10,390)
    love.graphics.print("e vice-versa",10,415)
    love.graphics.print("voltar",5,572)
end