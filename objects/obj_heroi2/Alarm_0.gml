// RENASCER - só se ainda tiver vidas
if (vidas > 0) {
    x = room_width / 2;  // Centro da tela
    y = 100;             // Lá em cima
    dano_total = 0;      // Resetar dano - IMPORTANTE!
    morto = false;
    velocidade_y = 0;    // Parar de cair
    
    show_debug_message("Jogador renasceu! Vidas: " + string(vidas));
} else {
    // GAME OVER - ficar morto para sempre
    show_debug_message("Jogador eliminado! 🏁");
}