barrier = {
    --BARREIRA DA DIREITA
    right = {
        x = -3;
        y = 0;
        width = 3,
        height = 600
    };
    --BARREIRA DA ESQUERDA
    left = {
        x = 799;
        y = 0;
        width = 3,
        height = 600
    };
    --BARREIRA DE CIMA
    up = {
        x = 0;
        y = 0;
        width = 800,
        height = 40
    };
    --BARREIRA DE BAIXO
    down = {
        x = 0;
        y = 600;
        width = 800,
        height = 3
    }
}

function barrier.load()
    world:add(barrier.right,barrier.right.x,barrier.right.y,barrier.right.width,barrier.right.height)
    world:add(barrier.left,barrier.left.x,barrier.left.y,barrier.left.width,barrier.down.height)
    world:add(barrier.up,barrier.up.x,barrier.up.y,barrier.up.width,barrier.up.height)
    world:add(barrier.down,barrier.down.x,barrier.down.y,barrier.down.width,barrier.down.height)
end
  