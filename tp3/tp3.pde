//tp3 Lucia bellingeri com3
// https://youtu.be/wdk28ksA_Dw

PImage tunel;
color colorDeLinea = 0; 
float maxCuadrado = 200; 
void setup() {
  size(800, 400);
  tunel = loadImage("M_6.jpg");
}

void draw() {
  background(255);
  image(tunel, 0, 0, width / 2, height); 

  float dx = 0; 
  float dy = 0; 
  
  float areaX = width / 2;   
  float areaY = 0;       
  
  float areaAncho = width / 2; 
  float areaAlto = height;     

  float anchoCuadrados = areaAncho / 2; 
  float altoCuadrados = areaAlto / 2; 

  float centroX = areaX + (anchoCuadrados / 2); 
  float centroY = areaY + (altoCuadrados / 2); 

  if (mouseX > 400) { 
    dx = mouseX - centroX;
    dy = mouseY - centroY;
  }

  int numFilasCuadrados = 2;    
  int numColumnasCuadrados = 2; 

  // ciclo for anidado (void dibujarCuadrados se muestra 4 veces, 2 x fila y 2 x columna, manteniendo el efecto en todos)
  for (int fila = 0; fila < numFilasCuadrados; fila++) { 
    for (int columna = 0; columna < numColumnasCuadrados; columna++) { 
      float centroXCuadrados = areaX + (columna * anchoCuadrados) + (anchoCuadrados / 2); 
      float centroYCuadrados = areaY + (fila * altoCuadrados) + (altoCuadrados / 2);    
       
      dibujarCuadrados(centroXCuadrados, centroYCuadrados, dx, dy);
    }
  }
}
