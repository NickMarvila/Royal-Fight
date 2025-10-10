// BARRA DE DANO JOGADOR 2 - FUNCIONANDO!
var tamanho_barra = (dano_total / 100) * 100;
if (tamanho_barra > 100) tamanho_barra = 100;

// Cor da barra
var cor_barra = c_green;
if (dano_total > 50) cor_barra = c_yellow;
if (dano_total > 80) cor_barra = c_red;

// Desenhar barra (lado direito)
var barra_start = room_width - 120;
draw_rectangle_color(barra_start, 20, barra_start + tamanho_barra, 35, cor_barra, cor_barra, cor_barra, cor_barra, false);
draw_text(room_width - 150, 15, "Dano: " + string(round(dano_total)) + "%");

// VIDAS JOGADOR 2
var vida_x = room_width - 100;
repeat(vidas) {
    draw_sprite(spr_coracao, 0, vida_x, 50);
    vida_x = vida_x + 25;
}
