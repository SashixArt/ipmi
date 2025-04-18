
PImage img;

void setup() {
  size(800,400); // Tamaño de el programa ejecutado
  background (0); // Color de fondo
  img = loadImage("sashi.jpg"); // Para poner la imagen en el programa
}

void draw() {
  background(134, 126, 123); // Color del fondo en draw denuevo para que no se vea pixelado
   image(img, 0, 0, width/2, height/1); // Para poner la imagen en una ubicacion y siempre despues del background pq si no lo pinta por encima
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY); // Usarlo para ayudarme a saber los numeros 
  
// -------------------------------------------------------------- Fondo

  noStroke();
  fill(0, 35);
  quad (400,0,490,0,449,350,400,400);  // Color de fondo para contraste 
  
  stroke(104, 95, 88); // Color de las lineas del fondo 
  strokeWeight(1);
  line (490,0,449,339);
  line (610,0,590,141); 
  line (720,0,696,150);
  line (399,58,486,59);
  line (484,59,800,95);
  line (400,117,474,109);
  line (473,109,800,149);
  line (431,0,400,295);
  line (399,230,465,210);
  line (800,56,762,450); // Las lineas del fondo 
  
// -------------------------------------------------------------- Piel (Cuello)
 
  noStroke(); // Sacar el contorno
  fill (200, 178, 166); // Poner color del cuello piel
  triangle (591,313,556,209,627,214); // Usar el triangulo en el cuello
  fill (47, 52, 58, 90); //Poner color del cuello de sombra, si pones otro numero al rgb es trasparencia. 
  quad (614,255,564,247,557,207,624,227); // Poner sombra del cuello
  
// -------------------------------------------------------------- Buzo
  
  fill (108, 114, 106); // color de relleno del buzo
  stroke(108, 114, 106); // contorno del buzo
  strokeWeight(2); //grosor del contorno
  rect (399,275,350,200,70,70,70,70); //el buzo ubicacion y redondeo
   
  stroke(177, 186, 165); // color del arito del dije
  line (584,333,584,341); //coso del arito del dije 
    
  pushMatrix();  // Guardar la configuracion de las transformaciones 
  translate(width, 0); // Mueve el punto de origen al extremo derecho del lienzo
  scale(-1, 1); // Invierte horizontalmente
  
  textSize(105); //tamaño de borde de letra
  fill(138, 138, 112); //color relleno de letra
  text("PEACE", 94, 402);  // letras del buzo borde
 
  fill(177, 186, 165); // Color del texto
  textSize(99); // tamaño de la letra
  text("PEACE", 100, 399); // Coordenadas originales
   popMatrix(); // restaura el estado de la matriz 

  pushMatrix(); // Guardar la configuracion de las transformaciones 
  translate(width, 0); // Mueve el punto de origen al extremo derecho del lienzo
  scale(-1, 1); // invertir las palabras 
  fill (78, 84, 72); // Color del dije
  textSize(36); // Tamaño de dije
  text("s", 208,358); // Dije "S"
  popMatrix(); // restaura el estado de la matriz 
  
  stroke(41, 41, 41); // Color del borde del cordon
  strokeWeight(15); // Tamaño del cordon del buzo 
  line (517,272,500,400); // Cordon del buzo 
  line (646,282,645,400); // Otro cordon del buzo
  strokeWeight(6); // Tamaño de collar de la linea
  
  stroke(41, 41, 41); // Color del collar 
  line (559,288,585,339); // Collar
  line (612,286,585,339); // Collar
  
  pushStyle (); // Guardar configuracion de estilo
  strokeWeight(5); // Tamaño de borde del cosito del Dije
  stroke(78, 84, 72); // color del dije
  line (585,330,585,340); // parte del dije 
  popStyle (); //restaura al punto guardado 
 
 // -------------------------------------------------------------- Parte atras del pelo
 
  fill (47, 52, 58); // Poner color en el pelo
  noStroke(); // Dejar sin borde pelo
  ellipse (650,89,125,100); //parte del pelo de atras de la cabeza
  quad (710,96,693,292,596,295,617,198); // """"
  quad (483,133,472,290,584,289,553,158); // parte del pelo de la parte de adelante que se ve para atras
  
  // -------------------------------------------------------------- Piel (Cara forma)
  
  fill (200, 178, 166); // el relleno de la cara
  noStroke(); // No tener borde en la cara
  ellipse (601,132,170,170); //la ubicacion de la cara
  circle (525,156,50);  // Cabeza 
  noStroke(); // No linea del color de piel
  fill (200,178, 166); // Color de relleno de piel
  quad (643,225,682,153,681,194,658,225); // Parte de la cara
  quad (658,228,602,228,557,214,527,176); // Otra parte de la cara
  quad (618,213,658,228,684,157,618,213); // Otra parte de la cara
  
    // -------------------------------------------------------------- Piel (Cara rostro)
    
  fill (255); // Color de el ojo adentro
  arc (604,155,72,50,radians (200),radians (350)); // el ojo
  fill (72, 67, 72); // color del iris del ojo 
  circle (624,145,18); // El iris del ojo
  fill (0); // la parte de adentro del iris color
  circle (624,145,9);  // la parte de adentro del ojo
  fill (200, 178, 166); // color de parpado 
  quad (638,142,607,142,608,132,640,138); // el parpado
  
  noStroke(); // No filetes 
  fill (47, 52, 58, 90); // Relleno de las forma de nariz 
  triangle (634,179,645,141,664,179); // Nariz
  fill (90, 85, 86); // Relleno de la ceja
  arc (635,130,50,50,3,6); // Hacer La ceja
  
  fill (189, 132, 133); //color de los labios 
  quad (616,206,636,192,644,202,637,210); //labios de la cara
  quad (640,201,653,194,659,201,652,207); // labios 
  quad (652,207,637,210,634,200,648,200); // labios 
  
  // -------------------------------------------------------------- Celular
  
  pushMatrix(); //guarda la configuracion para que no se rote todo
  noStroke(); //Sin bordes en el celular
  fill (60, 64, 67); // Color del relleno del celular
  rotate (25); // rotar un poco el telefono
  rect (647,170,90,170); // El celular ubicacion
  popMatrix(); // restaura el estado
  fill(255);  // flash color
  circle (710,111,13); //flash 
  
  fill(41, 46, 52); // camara color
  circle (727,96,13); // camara
  
  fill(41, 46, 52); // camara color
  circle (730,112,13); // camara color 
  
  // -------------------------------------------------------------- Parte de la mano (Brazo, muñeca,dedos)
 
  fill (200,178, 166); // Color de la mano
  quad (748,207,679,192,680,208,725,227); // Dedo de la mano
  quad (720,231,678,223,680,246,711,254); 
  quad (679,264,754,201,800,318,748,336); // Parte de la mano
  quad (746,338,748,400,800,800,800,313); // Parte del brazo y muñeca
  quad (775,259,775,188,745,187,748,227); // Parte del dedo 
  quad (773,187,723,152,716,157,747,190); // Otra parte del dedo
  fill (110, 125, 107); //color de la manga del buzo 
  quad (733,400,731,361,800,358,800,400); // la manga del buzo 
  
  // -------------------------------------------------------------- Pelo (Parte de adelante)
  
  fill (47, 52, 58); //color de pelo negro
  arc (635,89,50,50,3,6); //parte del pelo de adelante
  arc (649,105,50,50,3,5); //parte del pelo de adelante
  quad (657,79,654,106,634,130,605,111); //parte del pelo de adelante 
  arc (540,100,140,140,0,3); //parte del pelo de adelante
  ellipse (570,95,155,125); //parte del pelo adelante 
  quad (575,175,609,150,614,129,582,139); // "" 
  quad (657,78,634,49,597,51,657,82); // "" 
  quad (654,80,670,83,664,52,610,54); // " "
  quad (472,288,478,310,492,329,492,285); // " "
  quad (491,287,499,325,521,338,520,284); // " "
  quad (519,286,527,322,556,329,548,278); // " "
  quad (519,282,565,315,589,309,583,288); // " "
  quad (597,290,595,317,611,334,615,290); // " "
  quad (612,290,631,325,643,335,648,290); // " "
  quad (648,290,653,313,669,327,672,290); // " " 
  quad (669,290,689,305,692,307,693,290); //parte del pelo 
  
}
