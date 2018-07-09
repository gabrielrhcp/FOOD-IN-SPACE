menu={}

universe = love.graphics.newImage("image/universe.png")
image_select_level = love.graphics.newImage("image/select_level.png")
button = love.graphics.newImage("image/button.png")
logo = love.graphics.newImage("image/logo.png")
sndclick = love.audio.newSource('sound_effects/click.mp3','static')
sndmenu = love.audio.newSource('sound_effects/menu.mp3','static')

function menu.update()
    love.audio.play(sndmenu)
end

function love.mousepressed(x,y,button,istouch)
    if status=="menu" then
        if button ==1 and (x>=275 and x<=534) and (y>=278 and y<=327) then
            love.audio.play(sndclick)
            status="select_level"  --BOTÃO PARA SELECIONAR O MAPA
        end
        if button==1 and (x>=275 and x<=534) and (y>=353 and y<=402) then
            love.audio.play(sndclick) 
            status="help"  --BOTÃO PARA AJUDA
        end
        if button==1 and (x>=275 and x<=534) and (y>=428 and y<=477) then
            love.event.quit()   --BOTÃO PARA SAIR
        end
    elseif status=="help" then
        if button==1 and (x>=5 and x<=110) and (y>=575 and y<=590) then
            love.audio.play(sndclick) 
            status="menu"  --BOTÃO DE VOLTAR DO AJUDA
        end
    elseif status=="select_level" then
        if button ==1 and (x>=31 and x<=234) and (y>=313 and y<=468) then
            love.audio.play(sndclick)
            status="play_map_1"  --SELECIONA O MAPA 1(ESPAÇO)
        end
        if button ==1 and (x>=302 and x<=505) and (y>=313 and y<=468) then
            love.audio.play(sndclick)
            status="play_map_2"  ---SELECIONAR O MAPA 2(PLANETA)
        end
        if button ==1 and (x>=572 and x<=776) and (y>=313 and y<=468) then
            love.audio.play(sndclick)
            status="play_map_3"  --SELECIONAR O MAPA 3(PORTAL)
        end
        if button==1 and (x>=5 and x<=110) and (y>=575 and y<=590) then 
            love.audio.play(sndclick) 
            status="menu"   --BOTÃO DE VOLTAR DO SELECIONAR MAPA
        end
    end
end

function menu.draw()
    if status=="menu" then
        love.graphics.setColor(255,255,255)
        love.graphics.draw(universe)
        love.graphics.draw(logo,187,16)
        love.graphics.setFont(font4)
        love.graphics.print("food in",245,25)
        love.graphics.print("space",275,65)
        love.graphics.draw(button,275,278)
        love.graphics.setFont(font3)
        love.graphics.print("Jogar",280,275)
        love.graphics.draw(button,275,353)
        love.graphics.print("aJuda",282,350)
        love.graphics.draw(button,275,428)
        love.graphics.print("sair",322,425)
    end
    if status=="select_level" then
        love.graphics.draw(image_select_level)
        love.graphics.draw(logo,187,16)
        love.graphics.setFont(font4)
        love.graphics.print("food in",245,25)
        love.graphics.print("space",275,65)
        love.graphics.setFont(font2)
        love.graphics.print("universo",28,518)
        love.graphics.print("planetas",305,518)
        love.graphics.print("portal",598,518)
        love.graphics.setFont(font3)
        love.graphics.print("escolha o mapa",100,193)
        love.graphics.setFont(font1)
        love.graphics.print("voltar",5,572)
    end
end