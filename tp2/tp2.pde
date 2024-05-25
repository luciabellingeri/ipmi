String estado = "pantallauno";
PImage imagen1, imagen2, imagen3, imagen4;
String texto1 = "Banana Fish combina acción y drama en una historia de crimen y conspiración que mantiene al espectador al borde de su asiento.";
String texto2 = "Los personajes están muy bien desarrollados, especialmente los protagonistas Ash Lynx y Eiji Okumura, cuya relación es el corazón emocional de la serie.";
String texto3 = "Ambientado en la ciudad de Nueva York, el anime refleja de manera vívida y detallada el entorno urbano y los desafíos que conlleva.";
String texto4 = "La serie aborda temas complejos y actuales como la violencia, el abuso y la corrupción, añadiendo profundidad y relevancia a la narrativa.";

float unoX = 0, unoY = 0, velX = 0.2, velY = 0.2;
float dosX = 640, dosY = 240, veldosX = -1.44 * 1.1, veldosY = 0; 
float tresSize = 10, tresX = 0, tresY = 480, veltresSize = 5, veltresX = 0, veltresY = -1;
float cuatroX = 100, cuatroY = 100, velcuatroX = -1.2 * 0.7, velcuatroY = -1.2 * 0.7; 

int tiempoInicio, tiempoPantalla = 550;

boolean reiniciar = false;
boolean botonPresionado = false; 
boolean mouseEncimaBoton = false; 

PFont fuentenueva;

void setup() {
  size(640, 480);
  fuentenueva = loadFont("fuentenueva.vlw"); 
  textFont(fuentenueva);
  textSize(35);
  
  imagen1 = loadImage("bf1.jpg");
  imagen2 = loadImage("bf2.jpg");
  imagen3 = loadImage("bf3.jpg");
  imagen4 = loadImage("bf4.png");
  tiempoInicio = frameCount;
}

void draw() {

  if (estado.equals("pantallauno")) {
    displayImage(imagen1);
    textAlign(LEFT);
    fill(255);
    unoX += velX;
    unoY += velY;
    if (unoX >= width || unoX <= 0) {
      velX = -velX;
    }
    if (unoY >= height || unoY <= 0) {
      velY = -velY;
    }
    
    int lineHeight1 = int(textAscent() + textDescent());
    int textHeight1 = lineHeight1 * 8;
    text(texto1, unoX, unoY, 500, textHeight1);
  } else if (estado.equals("pantallados")) {
    displayImage(imagen2);
    textAlign(LEFT);
    fill(255);
    dosX += veldosX;
    dosY += veldosY;
    if (dosX >= width || dosX <= 0) {
      veldosX = -veldosX;
    }
   
    int lineHeight2 = int(textAscent() + textDescent());
    int textHeight2 = lineHeight2 * 8;
    text(texto2, dosX, dosY, 500, textHeight2);
  } else if (estado.equals("pantallatres")) {
    displayImage(imagen3);
    textAlign(LEFT);
    fill(255);
    
    tresX += veltresX;
    tresY += veltresY;
    tresSize += veltresSize;
    if (tresSize >= 25) {
      veltresSize = 0;
    }
   
    int lineHeight3 = int(textAscent() + textDescent());
    int textHeight3 = lineHeight3 * 8;
    text(texto3, tresX, tresY, 500, textHeight3);
  } else if (estado.equals("pantallacuatro")) {
    displayImage(imagen4);
    fill(255);
    cuatroX += velcuatroX;
    cuatroY += velcuatroY;

    // Rebotar en los bordes
    if (cuatroX + 500 >= width || cuatroX <= 0) {
      velcuatroX = -velcuatroX;
    }
    if (cuatroY + 200 >= height || cuatroY <= 0) {
      velcuatroY = -velcuatroY;
    }
   
    int lineHeight4 = int(textAscent() + textDescent());
    int textHeight4 = lineHeight4 * 8;
    text(texto4, cuatroX, cuatroY, 500, textHeight4);
    
    // Botón para reiniciar la presentación
    if (mouseEncimaBoton) { 
      fill(255);
    } else {
      fill(50);
    }
    rect(20, height - 70, 140, 50, 10);
    if (mouseEncimaBoton) { 
      fill(0);
    } else {
      fill(255);
    }
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Reiniciar", 90, height - 45);
    textSize(35);

    if (mouseX > 20 && mouseX < 160 && mouseY > height - 70 && mouseY < height - 20) {
      mouseEncimaBoton = true;
    } else {
      mouseEncimaBoton = false;
    }

    if (mouseEncimaBoton && mousePressed) {
      botonPresionado = true;
    } else {
      if (botonPresionado) {
        reiniciarPresentacion();
      }
      botonPresionado = false;
    }
  }

  // Cambio de PANTALLAS
  if (frameCount - tiempoInicio > tiempoPantalla && estado != "pantallacuatro") {
    siguientePantalla();
  }
}

void siguientePantalla() {
  if (estado.equals("pantallauno")) {
    estado = "pantallados";
  } else if (estado.equals("pantallados")) {
    estado = "pantallatres";
  } else if (estado.equals("pantallatres")) {
    estado = "pantallacuatro";
  }
  tiempoInicio = frameCount;
}

void reiniciarPresentacion() {
  estado = "pantallauno";
  unoX = 0;
  unoY = 0;
  velX = 0.2;
  velY = 0.2;
  dosX = 640;
  dosY = 240;
  veldosX = -1.44 * 1.1;
  veldosY = 0;
  tresSize = 10;
  tresX = 0;
  tresY = 480;
  veltresSize = 5;
  veltresX = 0;
  veltresY = -1;
  cuatroX = 100;
  cuatroY = 100;
  velcuatroX = -1.2 * 0.7;
  velcuatroY = -1.2 * 0.7;
  botonPresionado = false;
  tiempoInicio = frameCount;
}

void displayImage(PImage img) {
  float imgRatio = img.width / (float)img.height;
  float screenRatio = width / (float)height;
  int newWidth, newHeight;

  if (imgRatio > screenRatio) {
    newWidth = width;
    newHeight = (int)(width / imgRatio);
  } else {
    newHeight = height;
    newWidth = (int)(height * imgRatio);
  }

  image(img, 0, 0, newWidth, newHeight);
}
