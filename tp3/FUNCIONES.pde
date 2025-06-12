void dibujarCuadrados(int centroX, int centroY) {
  rectMode(CENTER);
  stroke(colorDeLinea);

  float grosorVariable = 15;
  
  if (mouseX > 400) { 
    grosorVariable = map(mouseX, 400, width, 5, 25);
  }
  
  strokeWeight(grosorVariable);
  noFill();

  int cantidad = 7;
  int espacio = calcularEspaciado(cantidad); 

  float dx = 0;
  float dy = 0; 

  if (mouseX > 400) { 
    dx = mouseX - centroX;      //calcular distancia del mouse x e y al centro de los cuadrados
    dy = mouseY - centroY; 
  }

  for (float i = 0; i < cantidad; i++) {       //float porque luego nos tiene que devolver con map numeros decimales

    float cantidadDeMovimiento = i / cantidad;                  // 0/7, 1/7, 2/7, 3/7, etc

    float movimientoX = centroX + dx * cantidadDeMovimiento ;
    float movimientoY = centroY + dy * cantidadDeMovimiento ;

    float tamaño = 400 - i * espacio;  //tamano de cada cuadrado)

    rect(movimientoX, movimientoY, tamaño, tamaño); // Dibuja el cuadrado
  }
}

int calcularEspaciado(int numCuadrados) {  //funcion que retorna un valor
  return (400 / numCuadrados) - numCuadrados;
}
