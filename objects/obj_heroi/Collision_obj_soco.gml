// LEVAR DANO DO SOCO - VERSÃO SIMPLES E FUNCIONAL
if (other.dono != id && !morto) {
    
    // AUMENTAR DANO TOTAL (100% funciona!)
    dano_total = dano_total + 25;  // Cada soco dá 25% de dano
    
    // MOSTRAR NO CONSOLE PARA DEBUG
    show_debug_message("Dano recebido! Total: " + string(dano_total) + "%");
    
    // CALCULAR FORÇAS MEGA FORTES
    var forca_horizontal = 10 + (dano_total * 0.5);
    var forca_vertical = -8 - (dano_total * 0.3);
    
    // EMPURRÃO SUPER FORTE
    if (x < other.x) {
        // Soco veio da direita - voar para ESQUERDA
        x = x - forca_horizontal;
    } else {
        // Soco veio da esquerda - voar para DIREITA  
        x = x + forca_horizontal;
    }
    
    // VOAR PARA CIMA
    velocidade_y = forca_vertical;
    
    // DESTRUIR O SOCO
    instance_destroy(other);
    
    // DEBUG EXTRA
    show_debug_message("Knockback aplicado! Horizontal: " + string(forca_horizontal) + " Vertical: " + string(forca_vertical));
}