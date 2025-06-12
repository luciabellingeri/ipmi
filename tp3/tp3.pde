//tp3 Lucia bellingeri com3
// https://youtu.be/wdk28ksA_Dw

PImage tunel;
color colorDeLinea = 0; // negro

void setup() {
  size(800, 400);
  tunel = loadImage("M_6.jpg");
}

void draw() {
  background(255);
  image(tunel, 0, 0, width / 2, height);
  dibujarCuadrados(600, 200); 
}
