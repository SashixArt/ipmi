//Ayala Sasha Micaela (Comision 3) 

//Declaro variables

PImage img1, img2, img3; // Creo una variable para las imagenes
PFont tipografia; // Creo una variable para la tipografia 
int numPantalla; // Guarda el número de la pantalla actual (0, 1 o 2)
int contadorTiempo; // Cuenta el tiempo para cambiar automáticamente de pantalla
float tamTextoPantalla1; // tamaño del texto en pantalla 1
boolean animacionActiva = true; // Si es true, la animación automática avanza; si es false, se detiene
boolean textoCompleto = false; // Para saber si el texto llegó a opacidad 255

void setup() {
  size(640, 480);
 
  //Cargar imagenes 
 
  img1 = loadImage("uturunku1.png");
  img2 = loadImage("uturunku2.png");
  img3 = loadImage("uturunku3.png");
  
  //Cargo la tipografia con la variable de arriba 

  tipografia = loadFont("ISOCPEURItalic-35.vlw"); 
  textFont(tipografia, 35);

  numPantalla = 0; // Comienza en la pantalla 0
  contadorTiempo = 0; // Inicia el contador en 0
  tamTextoPantalla1 = 20; // empieza con tamaño
  frameRate(30);// El programa se actualiza 30 veces por segundo
}

void draw() {
  background(225);

  float botonX = width - 60;
  float botonY = height - 60;

  //PANTALLA 0
  if (numPantalla == 0) {
    image(img1, 0, 0, width, height); // Fondo pantalla 0
    fill(255);
    textAlign(CENTER, TOP);
    textSize(20);
    float y = map(contadorTiempo, 0, 185, 0, 500); // Mapea el contador a una posición vertical para hacer animación
    text("UTURUNKU\n\n (que significa “jaguar” en quechua)\nes una instalación que explora la tensión\nentre rituales precolombinos\ny las deidades modernas,\nrepresentando un ritual simbólico\nentre estos dos mundos \n\n La obra reflexiona sobre el vacío ritual\ncontemporáneo y cómo el exceso de opciones\ndificulta enfrentar la muerte y lo trascendental,\nusando tótems inflables y arte\npara expresar esta tensión.", width / 2, y);

    
  //PANTALLA 1 
  } else if (numPantalla == 1) {
    image(img2, 0, 0, width, height); // Fondo pantalla 1
    textAlign(CENTER, CENTER);
    fill(255);
    textSize(tamTextoPantalla1); // Usa el tamaño que va creciendo
    text("Presentaciones:\n\n" +
     "Fecha: Julio/2019\n" +
     "Lugar: Muestra \"La Serpiente y el Jaguar\"\n" +
     "Centro Cultural Recoleta (CCRecoleta)\n" +
     "Evento: —\n\n" +
     "Fecha: Noviembre/2017\n" +
     "Lugar: Centro Cultural General San Martín (CCGSM)\n" +
     "Evento: —", 
     width / 2, height / 2);
    tamTextoPantalla1 += 0.2; // Aumenta el tamaño cada frame
  
  //PANTALLA 2
  } else if (numPantalla == 2) {
    image(img3, 0, 0, width, height); // Fondo pantalla 2
    
    textAlign(CENTER, CENTER);
    textSize(17);

// Si el texto NO está completo (textoCompleto es false)
// el operador "!" invierte el valor de textoCompleto
    if (! textoCompleto) { 
      // Incrementamos opacidad según contadorTiempo
      float opacidad = map(contadorTiempo, 0, 150, 0, 255);
       // Cuando la opacidad alcanza el valor máximo (255), 
  // se asegura que no pase de ese valor y se marca que el texto ya está completo
      if (opacidad >= 255) {
        opacidad = 255;
        textoCompleto = true;  // Ya completó la opacidad
      }
      fill(255, opacidad);
      text("Autores:\n" +
"Dirección Artística y General: Emiliano Causa y Matías Romero Costas\n" +
"Coordinación general: Matías Jauregui Lorda\n" +
"Ilustraciones: Martín Barzola\n" +
"Música y diseño sonoro: Matías Romero Costas\n" +
"Programación: Daniel Loaiza, Emiliano Causa, Matías Romero Costas, Matías Sánchez Rivas\n" +
"Diseño y producción de esculturas: David Bedoian\n" +
"Asistencia en producción de esculturas: Hernán González Moreno, Catalina Rocca, Ignacio Rios\n" +
"Sensores y control de luces: Matías Jauregui Lorda\n" +
"Pintado del Mural: Eloy Mengarelli, Larisa Mengarelli, Muriel Barcos Lanuti\n" +
"Realización de sensores: Gabriel Orona\n" +
"Asistencia en realización musical: Ezequiel Causa\n" +
"Asistencia en Montaje: Ramiro Plano, Anabella Muñoz Candia, Ignacio Rios", width / 2, height / 2);
    } else {
      // Texto fijo, opacidad total
      fill(255);
      text("Autores:\n" +
"Dirección Artística y General: Emiliano Causa y Matías Romero Costas\n" +
"Coordinación general: Matías Jauregui Lorda\n" +
"Ilustraciones: Martín Barzola\n" +
"Música y diseño sonoro: Matías Romero Costas\n" +
"Programación: Daniel Loaiza, Emiliano Causa, Matías Romero Costas, Matías Sánchez Rivas\n" +
"Diseño y producción de esculturas: David Bedoian\n" +
"Asistencia en producción de esculturas: Hernán González Moreno, Catalina Rocca, Ignacio Rios\n" +
"Sensores y control de luces: Matías Jauregui Lorda\n" +
"Pintado del Mural: Eloy Mengarelli, Larisa Mengarelli, Muriel Barcos Lanuti\n" +
"Realización de sensores: Gabriel Orona\n" +
"Asistencia en realización musical: Ezequiel Causa\n" +
"Asistencia en Montaje: Ramiro Plano, Anabella Muñoz Candia, Ignacio Rios", width / 2, height / 2);

      // Dibujo del botón SOLO después que el texto esté completo
      float distancia = dist(botonX, botonY, mouseX, mouseY);
      if (distancia < 40) {
        fill(0, 0, 255);
      } else {
        fill(200);
      }
      ellipse(botonX, botonY, 80, 80);
      fill(0);
      textSize(14);
      text("Reiniciar", botonX, botonY);
    }
  }

// Solo avanza el contador si la animación está activa y el texto final NO está completo (pantalla 2)
if (animacionActiva && !textoCompleto) { 
  contadorTiempo++; // Aumenta el contador de frames
  if (contadorTiempo > 150) { // Cuando llega a 150 frames (5 segundos)
    contadorTiempo = 150; // Se mantiene en 150 para que no siga aumentando
    // No avanzamos más la pantalla para que el texto final quede visible y fijo
  }
} 
// Si la animación está activa pero el texto final ya completó su aparición
else if (animacionActiva && textoCompleto) {
  animacionActiva = false; // Detenemos la animación para que quede estático (pantalla 2)
}

// Para pantallas 0 y 1: avanza automáticamente cuando se completa el tiempo
if (animacionActiva && numPantalla < 2 && contadorTiempo >= 150) {
  contadorTiempo = 0; // Reinicia contador para la siguiente pantalla
  numPantalla++;      // Cambia a la siguiente pantalla
  if (numPantalla == 1) {
    tamTextoPantalla1 = 20; // Reinicia el tamaño del texto para pantalla 1
  }
}

}

void mousePressed() {
  // Solo actúa si estamos en la última pantalla y el texto está completo
  if (numPantalla == 2 && textoCompleto) {
    float botonX = width - 60;
    float botonY = height - 60;
    float distancia = dist(botonX, botonY, mouseX, mouseY);

    if (distancia < 40) {
      // Reiniciar animación
      numPantalla = 0; // Vuelve a la pantalla 0
      contadorTiempo = 0; // Reinicia el tiempo
      tamTextoPantalla1 = 20; // Reinicia tamaño de texto
      animacionActiva = true; // Vuelve a arrancar la animación
      textoCompleto = false; // Reinicia estado del texto final
    }
  }
}
