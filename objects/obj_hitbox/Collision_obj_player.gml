if (other != owner) {
    other.hp -= dano;
    other.state = "hurt";
    other.sprite_index = spr_hurt;
    other.image_index = 0;
    other.image_speed = 0.5;
    instance_destroy();
}