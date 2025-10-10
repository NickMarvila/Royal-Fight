// BARRA DE DANO JOGADOR 1 - FUNCIONANDO!
var tamanho_barra = (dano_total / 100) * 100;  // 100% máximo
if (tamanho_barra > 100) tamanho_barra = 100;

// Cor da barra
var cor_barra = c_green;
if (dano_total > 50) cor_barra = c_yellow;
if (dano_total > 80) cor_barra = c_red;

// Desenhar barra
draw_rectangle_color(20, 20, 20 + tamanho_barra, 35, cor_barra, cor_barra, cor_barra, cor_barra, false);
draw_text(130, 15, "Dano: " + string(round(dano_total)) + "%");

// VIDAS JOGADOR 1
var vida_x = 20;
repeat(vidas) {
    draw_sprite(spr_coracao, 0, vida_x, 50);
    vida_x = vida_x + 25;
}