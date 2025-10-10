// Contar tempo e desaparecer
tempo_vida = tempo_vida - 1;
if (tempo_vida <= 0) {
    instance_destroy();  // Some o soco
}