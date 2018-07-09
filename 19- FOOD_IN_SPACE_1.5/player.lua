player_1={
    x=60,
    y=275,
    speed=250,
    width=50,
    height=50
}

player_2={
    x=690,
    y=275,
    speed=250,
    width=50,
    height=50
}

function player_1.load()
    world:add(player_1, player_1.x, player_1.y, player_1.width, player_1.height)
end

function player_2.load()
    world:add(player_2, player_2.x, player_2.y, player_2.width, player_2.height)
end

function player_1.update(dt)
    local dx, dy = 0, 0

    if player_1.x > 0 and love.keyboard.isDown("a") then
        dx = - player_1.speed * dt
        --player_1.x = player_1.x - player_1.speed * dt
    elseif player_1.x + player_1.width < 800 and love.keyboard.isDown("d") then   
        dx = player_1.speed * dt
        --player_1.x = player_1.x + player_1.speed * dt
    end
    if player_1.y > 42 and love.keyboard.isDown("w") then
        dy = - player_1.speed * dt
        --player_1.y = player_1.y - player_1.speed * dt
    elseif player_1.y + player_1.height < 600 and love.keyboard.isDown("s") then   
        dy = player_1.speed * dt
        --player_1.y = player_1.y + player_1.speed * dt
    end

    player_1.x, player_1.y, cols, len = world:move(player_1, player_1.x + dx, player_1.y + dy)
end

function player_2.update(dt)
    local dx, dy = 0, 0

    if player_2.x > 0 and love.keyboard.isDown("left") then
        dx = - player_2.speed * dt
        --player_2.x = player_2.x - player_2.speed * dt
    elseif player_2.x + player_2.width < 800 and love.keyboard.isDown("right") then   
        dx = player_2.speed * dt
        --player_2.x = player_2.x + player_2.speed * dt
    end
    if player_2.y > 42 and love.keyboard.isDown("up") then
        dy = - player_2.speed * dt
        --player_2.y = player_2.y - player_2.speed * dt
    elseif player_2.y + player_2.height < 600 and love.keyboard.isDown("down") then   
        dy = player_2.speed * dt
        --player_2.y = player_2.y + player_2.speed * dt
    end

    player_2.x, player_2.y, cols, len = world:move(player_2, player_2.x + dx, player_2.y + dy)
end

image_donut = love.graphics.newImage("image/donut.png")
function player_1.draw()
    love.graphics.setColor(255,255,255) 
    love.graphics.draw(image_donut, player_1.x, player_1.y)
end

image_sushi = love.graphics.newImage("image/sushi.png")
function player_2.draw() 
    love.graphics.setColor(255,255,255)      
    love.graphics.draw(image_sushi, player_2.x, player_2.y)
end
