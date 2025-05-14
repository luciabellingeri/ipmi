//tp2 Lucia Bellingeri Comisión 3

float tiempo;
PImage rain1;
PImage rain2;
PImage rain3;
PFont fuente;
int posy;
int posx2;
int posy3;
int posx3;

void setup() {
 size (640, 480);
 rain1= loadImage("rain1.png");
 rain2= loadImage("rain2.png");
 rain3= loadImage("rain3.png");
 fuente= loadFont("TuskerGrotesk-6700Bold-48.vlw");
 textFont(fuente, 30);
 textAlign(CENTER,CENTER);
 textSize(25);
 posy= 480;    //dividido por pantallas 1, 2 y 3
 posx2= 0;
 posx3= 0;
 posy3= 0;
}

void draw() {
  
   println("mouseX" + mouseX);  //para ubicar el boton
  println("mouseY" + mouseY);
  
 tiempo= tiempo + 1; //velocidad de movimiento
 
 //pantalla 1
 if (tiempo > 0 && tiempo < 400) {
   image(rain1, 0, 0, 640, 480);
   textSize(60);
   fill(255);
   text("Rain Room", 320, posy);
   posy = posy-1;
 }
 
 //pantalla 2
 if (tiempo > 400 && tiempo < 1000){
   textSize(29);
   image(rain2,0,0,640,480);
   fill(255);
   text("es una instalación \n interactiva del colectivo \n Random International donde \n los visitantes caminan \n bajo la lluvia sin mojarse, \n gracias a sensores que \n detienen el agua \n a su alrededor", posx2, 240 );
   posx2 = posx2 + 1;
 }
 
 //pantalla 3
 if (tiempo > 1000 && tiempo < 2000) {
   textSize(29);
   image(rain3,0,0,640,480);
   fill(255);
   text("Combina arte, tecnología \n y movimiento para crear una \n experiencia inmersiva que ha \n sido exhibida en museos \n de todo el mundo.", posx3, posy3 );
   posx3 = posx3 + 1;
   posy3 = posy3 + 1;
   
    //boton
    fill(255);
    rect(15, 420, 100, 40);
    fill(0);
    textSize(18);
    text("REINICIAR", 65, 440);
 }
 
}

void mousePressed(){
   
  //boton para reiniciar
   if (tiempo > 1000) {
   if(mouseX >15 && mouseX < 116 && mouseY > 420 && mouseY < 460){
   posy= 480;
   posx2= 0;
   posx3= 0;
   posy3= 0;
   tiempo = 0;
}
  
}

} 
