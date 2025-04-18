// Lucia Bellingeri, Comision 3, dni 44110205

PImage imagen;
void setup(){
  size(800,400);
  imagen = loadImage("autoretrato.jpg");

}

void draw(){
  background(230, 209, 214);
  println(mouseX,mouseY);
  image(imagen,0, 0, 400, 400);
  
  noStroke();
  
  fill(68, 71, 52);
  ellipse(618, 170, 210, 300);  //pelo atras
  circle(538,195,90);
  circle(500,290,100);

  fill(214, 173, 167);
  
  rect(536, 193, 100,200);  //CUELLO
  
  fill(226, 193, 188);
  beginShape();             //ROSTRO
  vertex(586, 264);
  vertex(606, 264);
  vertex(633, 251);
  vertex(662, 218);
  vertex(678, 195);
  vertex(691, 154);
  vertex(697, 139);
  vertex(700, 103);
  vertex(681, 58);
  vertex(643, 45);
  vertex(543, 93);
  vertex(533, 132);
  vertex(527, 196);
  vertex(571, 254);

  endShape();
  
  quad(534,132, 518,114, 503,137, 530, 186);  //OREJA
  
  fill(105, 103, 88);
  
  quad(406, 341, 582, 271, 742, 289, 848, 399); //cuerpo
  
  triangle(407,340, 400,400, 2000, 400); //cuerpo
  
  fill(214, 173, 167);
  ellipse(591,286, 110, 34); //cuello
  
  fill(68, 71, 52);
  quad(516, 202, 469, 319, 514, 373, 543, 281);  //pelo adelante
 
  
  fill (240);
  quad(610,133,596,120,578,119,594,131); //ojos
  quad(649,145,667,146,679,157,658,155);
  
  fill (100);
  circle(594,125,11); //pupilas
  circle(662,150,11);
  
  fill(68, 71, 52);
  triangle(627,107,574,92,608,92);    //cejas
  triangle(660,117,691,136,686,123);
  
  fill(206,128,128);
  quad(581,205,607,203,622,208,633,221);   //labios
  fill(216,146,146);
  quad(581,205,633,221,612,229,596,222);
  
  fill(220,174,171);
  quad(601,178,632,158,636,189,619,190); //nariz
  
  fill(150,100,100);
  triangle(616,183,612,181,607,182);  //fosas nasales
  triangle(627,189,632,187,631,190);
  
  fill(230, 209, 214);
  circle(850,160,300);  //emprolijamiento pelo
  
  strokeWeight(2); 
  stroke(50);                   //delineado ojos
  
  line(609,132, 595, 120); 
  line(595,120,579,119);
  line(579,119,573,114);
  
  line(649,145,666,146);
  line(666,146,677,156);
  line(677,156,682,155);
  
  stroke(160,90,90);           //linea boca
  line(577,205,581,203);
  line(581,203,585,209);
  line(585,209,607,212);
  line(607,212,631,222);
  line(631,222,634,220);
  
  noStroke();
  fill(68, 71, 52);
  beginShape();        //mechones de pelo
  vertex(644,34);
  vertex(590,80);
  vertex(572,96);
  vertex(561,148);
  vertex(528,172);
  vertex(537,157);
  vertex(560,138);
  vertex(564,93);
  vertex(594,45);
  endShape();
}
