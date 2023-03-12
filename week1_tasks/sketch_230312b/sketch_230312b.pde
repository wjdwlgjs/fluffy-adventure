float x = 540, y = 360;
float s = 100;

void setup() {
    size(1080, 720);
    goodGun();
}

void goodGun() {
    face();
    hair();
    eyes();
    mouth();
}

void face() {
    beginShape();
    fill(251, 207, 187);
    vertex(x - 0.75 * s, y - s);
    vertex(x - s, y + 0.4 * s);
    bezierVertex(x - s, y + 0.4 * s, x, y + 2.5 * s, x + s, y + 0.4 * s);
    vertex(x + s, y + 0.4 * s);
    vertex(x + 0.75 * s, y - s);
    endShape(CLOSE);
}

void hair() {
    beginShape();
    fill(0);
    vertex(x - s + 0.25 / 6 * s, y - s + 1.4 * 5 / 6 * s);
    vertex(x - 0.9 * s, y - 1.1 * s);
    vertex(x + 0.9 * s, y - 1.1 * s);
    vertex(x + s - 0.25 / 6 * s, y - s + 1.4 * 5 / 6 * s);
    vertex(x + 0.75 * s, y - s);
    vertex(x - 0.75 * s, y - s);
    endShape(CLOSE);

    for (int i=0; i<10; i++) {
        triangle(x - 0.9 * s + 1.8 * s / 10 * i, y - 1.1 * s, x - 0.9 * s + 1.8 * s / 10 * (i + 0.5), y - 1.5 * s, x - 0.9 * s + 1.8 * s / 10 * (i + 1), y - 1.1 * s);
    }
}

void eyes() {
    fill(255, 0, 0);
    ellipse(x - 0.4 * s, y - 0.2 * s, s * 0.2, s * 0.2);
    ellipse(x + 0.4 * s, y - 0.2 * s, s * 0.2, s * 0.2);
}

void mouth() {
    beginShape();
    fill(255, 0, 0);
    vertex(x - 0.7 * s, y + 0.2 * s);
    bezierVertex(x - 0.7 * s, y + 0.2 * s, x, y + 2.5 * s, x + 0.7 * s, y + 0.2 * s);
    vertex(x + 0.7 * s, y + 0.2 * s);
    
    endShape(CLOSE);

    fill(255);
    rect(x - 0.6 * s, y + 0.2 * s, 1.2 * s, 0.1 * s);
}