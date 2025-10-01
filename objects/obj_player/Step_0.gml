// atualizar direcao olhando
if (keyboard_check(vk_right)) direcao = 1;
if (keyboard_check(vk_left))  direcao = -1;


// movimento (só se não estiver atacando)
if (estado == "parado") {
    hvel = (keyboard_check(vk_right) - keyboard_check(vk_left)) * vel;
} else {
    hvel = 0;
}


// gravidade
vvel += grav;

// pulo
if (keyboard_check_pressed(vk_up)) {
    if (place_meeting(x, y+1, obj_chao)) {
        vvel = pulo;
    }
}

// colisões 
// horizontal 
if (place_meeting(x + hvel, y, obj_chao)) {
    while (!place_meeting(x + sign(hvel), y, obj_chao)) {
        x += sign(vel);
    }
    hvel = 0;
}
x += hvel;

// Vertical
if (place_meeting(x, y + vvel, obj_chao)) {
    while (!place_meeting(x, y + sign(vvel), obj_chao)) {
        y += sign(vvel);
    }
    vvel = 0;
}
y += vvel;

// soco (tecla Z)
if (keyboard_check_pressed(ord("Z"))) {
    show_debug_message("SOCO DAAAA MACONHAAAAAA!");
}

// chute (tecla X)
if (keyboard_check_pressed(ord("X"))) {
    show_debug_message("CHUTE METEORO DE DISGRAÇAAAAAAA!");
}


// ataques
if (estado == "parado") {
    // Soco
    if (keyboard_check_pressed(ord("Z"))) {
        estado = "soco";
        sprite_index = spr_soco;
        image_index = 0;
        image_speed = 0.5;
		ataque_timer = 10; // dura 10 steps (~1/6 de segundo)
		 
        var hit = instance_create_layer(x + (direcao * 20), y, "Instances", obj_hitbox);
        hit.damage = 10;
        hit.owner = id;
    }

    // Chute
    if (keyboard_check_pressed(ord("X"))) {
        estado = "chute";
        sprite_index = spr_chute;
        image_index = 0;
        image_speed = 0.5;
		ataque_timer = 15; // dura 15 steps
		
        var hit = instance_create_layer(x + (direcao * 25), y, "Instances", obj_hitbox);
        hit.damage = 15;
        hit.owner = id;
    }
}

// 4. Voltar para idle quando animação de ataque acabar
if (estado == "soco" || estado == "chute") {
    ataque_timer--;
    if (ataque_timer <= 0) {
        estado = "parado";
        sprite_index = spr_player_parado;
    }
}