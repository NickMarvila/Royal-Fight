
// ANDAR PARA OS LADOS
if (keyboard_check(vk_left)) {
    x = x - 4;
    facing = -1;  // Olha para ESQUERDA
}
if (keyboard_check(vk_right)) {
    x = x + 4; 
    facing = 1;   // Olha para DIREITA
}

// VERIFICAR SE ESTÁ NO CHÃO
var no_chao = place_meeting(x, y + 1, obj_chao);

// PULAR - se apertar CIMA e estiver no chão
if (keyboard_check_pressed(vk_up) && no_chao) {
    velocidade_y = forca_pulo;  // Começa o pulo!
}

// APLICAR GRAVIDADE (só se não estiver no chão)
if (!no_chao) {
    velocidade_y = velocidade_y + gravidade;
}

// MOVER NA VERTICAL
y = y + velocidade_y;

// PARAR NO CHÃO
if (place_meeting(x, y, obj_chao)) {
    // Se bateu no chão, para de cair
    while (place_meeting(x, y, obj_chao)) {
        y = y - 0.1;
    }
    velocidade_y = 0;  // Zera a velocidade quando toca o chão
}
// SOCAR - Tecla Z
if (keyboard_check_pressed(ord("Z"))) {
    // Criar soco na frente do personagem (na direção que está olhando)
    var soco = instance_create_layer(x + facing * 20, y, "Instances", obj_soco);
    soco.dano = 10;
    soco.dono = id;  // IMPORTANTE: Dizer que este soco é MEU
}