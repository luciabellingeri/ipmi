void dibujarCuadrados(float centroXCuadrados, float centroYCuadrados, float dx, float dy) {
  rectMode(CENTER);
  stroke(colorDeLinea);

  float grosorVariable = 7; 
  if (mouseX > 400) {
    grosorVariable = map(mouseX, 400, 600, 2, 12);
  }

  strokeWeight(grosorVariable);
  fill(255); 

  int cantCuadrados = 7; 
  int espacioCuadrados = calcularEspaciado(cantCuadrados, maxCuadrado); 

  //ciclo for de cuadrado superpuestos que luego se repiten 4 veces)
  for (float i = 0; i < cantCuadrados; i++) { 
    float cantidadDeMovimiento = i / cantCuadrados; 

    float movimientoX = centroXCuadrados + dx * cantidadDeMovimiento; 
    float movimientoY = centroYCuadrados + dy * cantidadDeMovimiento; 

    float tamañoCuadrado = maxCuadrado - i * espacioCuadrados; 

    rect(movimientoX, movimientoY, tamañoCuadrado, tamañoCuadrado); 
  }
}

int calcularEspaciado(int numCuadrados, float tamañoMaximo) { 
  return (int)(tamañoMaximo / (numCuadrados + 1));
}
