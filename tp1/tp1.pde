// Lucia Bellingeri, Comision 4, dni 44110205

PImage imagen;
void setup(){
  size(800,400);
  imagen = loadImage("molotov.jpeg");

}

void draw(){
  background(230);
  println(mouseX,mouseY);
  image(imagen,0, 0, 400, 400);
  smooth();
  
  noStroke();
  
  fill(95, 95, 95);
  beginShape();
  vertex(630, 28);
  vertex(651, 74);
  vertex(653, 84);
  vertex(654, 99);
  vertex(656, 115);
  vertex(656, 130);
  vertex(650, 152);
  vertex(647, 163);
  vertex(646, 179);
  vertex(643, 185);
  vertex(641, 193);
  vertex(647, 198);
  vertex(657, 203);
  vertex(660, 254);
  vertex(674, 233);
  vertex(684, 227);
  vertex(695, 212);
  vertex(711, 206);
  vertex(716, 201);
  vertex(720, 197);
  vertex(720, 191);
  vertex(703, 141);
  vertex(699, 122);
  vertex(693, 99);
  vertex(692, 58);
  vertex(677, 34);
  endShape();
  
  fill(57, 51, 39);
  beginShape();
  vertex(538, 166);
  vertex(461, 334);
  vertex(471, 355);
  vertex(517, 374);
  vertex(541, 372);
  vertex(620, 202);
  vertex(619, 173);
  vertex(650, 74);
  vertex(654, 73);
  vertex(661, 48);
  vertex(621, 33);
  vertex(613, 53);
  vertex(613, 58);
  vertex(561, 144);
  endShape();
  
  //tapa
  fill(23, 28, 108);
  beginShape();
  vertex(618, 39);
  vertex(630, 33);
  vertex(648, 31);
  vertex(666, 32);
  vertex(664, 24);
  vertex(650, 20);
  vertex(633, 23);
  vertex(617, 31);
  endShape();
  
  fill(193, 193, 193, 100);
  ellipse(542, 260, 85, 85);
  
  fill(255, 100);
  triangle(626, 59, 586, 151, 572, 148);
  triangle(563,170,555,175,566,181);
  
  fill(250,204,18);
  beginShape();
  vertex(680,117);
  vertex(674,172);
  vertex(677,159);
  vertex(671,153);
  vertex(680,149);
  vertex(695,132);
  vertex(691,130);
  vertex(698,125);
  vertex(690,98);
  vertex(702,101);
  vertex(726,100);
  vertex(728,93);
  vertex(721,89);
  vertex(732,81);
  vertex(751,84);
  vertex(757,76);
  vertex(762,87);
  vertex(757,88);
  vertex(745,108);
  vertex(751,125);
  vertex(740,129);
  vertex(746,150);
  vertex(758,138);
  vertex(769,138);
  vertex(760, 141);
  vertex(743,161);
  vertex(729,162);
  vertex(715,184);
  vertex(701,152);
  vertex(689,162);
  vertex(698,168);
  vertex(704,161);
  vertex(699,173);
  vertex(691,173);
  vertex(687,181);
  endShape();
  
  triangle(685,195,693,220,706,192);
  
  strokeWeight(5); 
  stroke(255, 100);
  point(630, 42);
  
  
}
