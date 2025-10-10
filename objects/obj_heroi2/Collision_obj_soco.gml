// LEVAR DANO DO SOCo
if (other.dono != id) {  // Não se bater
    // Empurrar para trás
    if (x < other.x) {
        x = x - 20;
    } else {
        x = x + 20;
    }
    
    // Pular para cima (knockback)
    velocidade_y = -5;
    
    // Destruir o soco
    instance_destroy(other);
}