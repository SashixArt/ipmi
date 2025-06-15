// Ayala Sasha Micaela Comision 3
// https://youtu.be/BwnUi_x_h6I

PImage obrauwu; // Cargar imagen
int cant = 3; // Cantidad de bloques por fila/columna
int cantInicial = 3; // Poner el valor original para reinicio
int tam;  // Calcula el tamaño de cada cuadrado según la cantidad
boolean colorxd, coloruwu = false; // Variables para activar paletas de color


void setup() {
  size(800, 400);
  noStroke();
  obrauwu = loadImage("obrauwu.png");
  imageMode(CORNER);
}

void draw() {
  background(255);
  image(obrauwu, 0, 0, 400, 400);

  tam = 400 / cant; // Calcula el tamaño de cada cuadrado según la cantidad

  for (int i = 0; i < cant; i++) {
    for (int y = 0; y < cant; y++) {
      int estado = calculaelEstado(i, y); // Alterna entre 0 y 1 para crear patrón

      // Cambia el color según la paleta activa (tecla A o S)
      if (coloruwu) {
        if (estado == 0) {
          fill(122, 66, 255); // violeta claro
        } else {
          fill(255, 147, 233); // rosa pastel
        }
      } else if (colorxd) {
        if (estado == 0) {
          fill(255, 183, 3); // amarillo fuerte
        } else {
          fill(255, 94, 0);  // naranja fuerte
        }
      } else {
        if (estado == 0) {
          fill(36, 41, 184); // azul
        } else {
          fill(6, 13, 29);   // azul oscuro
        }
      }

      dibujarBloqueyCirculo(400 + i * tam, y * tam, tam, estado);
    }
  }
}

void keyPressed() {
  if (key == 'a') {
    colorxd = true;
    coloruwu = false;
  } else if (key == 's') {
    coloruwu = true;
    colorxd = false;
  } else if (key == 'r') {
    reiniciarTodo();
  } else if (key == '+') {
    aumentarCantidad();
  } else if (key == '-') {
    disminuirCantidad();
  }
}
