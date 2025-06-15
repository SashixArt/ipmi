void dibujarBloqueyCirculo(int x, int y, int tam, int estado) {
  rect(x, y, tam, tam); // Cuadrado de fondo


 // Color del círculo, depende del estado y los modos activados
  if (colorxd) {
    if (estado == 0) {
      fill(255, 94, 0);    // naranja
    } else {
      fill(255, 183, 3);   // amarillo
    }
  } else if (coloruwu) {
    if (estado == 0) {
      fill(255, 147, 233); // rosa
    } else {
      fill(122, 66, 255);  // violeta
    }
  } else {
    if (estado == 0) {
      fill(6, 13, 29);     // azul oscuro
    } else {
      fill(36, 41, 184);   // azul claro
    }
  }

  // Efecto de color aleatorio al pasar el mouse
  if (dist(x + 67, y + tam / 2, mouseX, mouseY) < tam / 2) {
    fill(random(255), random(255), random(255)); // color puro, sin opacidad
  }

  ellipseMode(CORNER); // Elipse desde la esquina
  ellipse(x, y, tam, tam); // Círculo dentro del cuadrado
}

int calculaelEstado(int i, int j) {
  return (i + j) % 2; // Alternancia ajedrezada
}

void reiniciarTodo() {
  colorxd = false;
  coloruwu = false;
  cant = cantInicial; // Vuelve al valor inicial de bloques
}

void aumentarCantidad() {
  if (cant < 10) {
    cant++; // Límite de máximo 10 bloques
  }
}

void disminuirCantidad() {
  if (cant > 1) {
    cant--; // Límite mínimo 1 bloque
  }
}
