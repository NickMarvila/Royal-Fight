// QUANDO BATER NO JOGADOR 2
if (x < other.x) {
    x = x - 3;
    other.x = other.x + 3;
} else {
    x = x + 3;
    other.x = other.x - 3;
}