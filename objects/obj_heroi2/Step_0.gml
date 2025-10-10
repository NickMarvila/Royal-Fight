
// ANDAR PARA OS LADOS - JOGADOR 2
if (keyboard_check(ord("A"))) {
    x = x - 4;
    facing = -1;  // Olha para ESQUERDA
}
if (keyboard_check(ord("D"))) {
    x = x + 4;
    facing = 1;   // Olha para DIREITA
}

// VERIFICAR SE ESTÁ NO CHÃO
var no_chao = place_meeting(x, y + 1, obj_chao);

// PULAR - se apertar W e estiver no chão
if (keyboard_check_pressed(ord("W")) && no_chao) {
    velocidade_y = forca_pulo;
}

// APLICAR GRAVIDADE
if (!no_chao) {
    velocidade_y = velocidade_y + gravidade;
}

// MOVER NA VERTICAL
y = y + velocidade_y;

// PARAR NO CHÃO
if (place_meeting(x, y, obj_chao)) {
    while (place_meeting(x, y, obj_chao)) {
        y = y - 0.1;
    }
    velocidade_y = 0;
}
// SOCAR - Tecla T  
if (keyboard_check_pressed(ord("T"))) {
    var soco = instance_create_layer(x + facing * 20, y, "Instances", obj_soco);
    soco.dano = 10;
    soco.dono = id;  // IMPORTANTE: Dizer que este soco é MEU
}