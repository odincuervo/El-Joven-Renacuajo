//universidad Nacional de Quilmes- Lic en Artes y Tecnología
//Introducción a la Programación
//camilo melo castañeda.2018
//El Joven Renacuajo

//Imagenes a usar
PImage img0;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage img10;
PImage img11;
PImage img12;
PImage img13;
PImage img14;
PImage img15;
PImage img16;
PImage img17;
PImage img18;
PImage img789;
float escenas;
PFont f;
//escenas a mostrar
int escena;


void setup() {
  size(600, 600);

  //Imagenes escenas
  img0 = loadImage("0.png");
  img1 = loadImage("1.jpg");
  img2 = loadImage("2.jpg");
  img3 = loadImage("3.jpg");
  img4 = loadImage("4.jpg");
  img5 = loadImage("5.jpg");
  img6 = loadImage("6.jpg");
  img7 = loadImage("7.jpg");
  img8 = loadImage("8.jpg");
  img9 = loadImage("9.png");
  img10 = loadImage("10.jpg");
  img11= loadImage("11.jpg");
  img12= loadImage("12.jpg");
  img13 = loadImage("13.jpg");
  img14 = loadImage("14.jpg");
  img15 = loadImage("15.jpg");
  img16 = loadImage("16.jpg");
  img17 = loadImage("17.png");
  img18 = loadImage("18.png");
  img789 = loadImage("789.jpg");

  //
  escenas = 0;
  f = createFont ("Kristen ITC", 16);
  img1=loadImage("1.jpg");

  //interacción primera escena
}
boolean empezar(float x, float y, float w, float h) {
  return( x <= mouseX && mouseX <= (x + w) && y <= mouseY && mouseY <= (y + h) );
}
boolean Sombrero(float x, float y, float w, float h) {
  return(x <= mouseX && mouseX <= (x + w) && y <= mouseY && mouseY <= (y + h));
}
void mousePressed() {
  if (empezar(200, 300, 200, 120)&& escenas == 0) {
    escenas = escenas +1;
  }
  if (Sombrero(514, 345, 70, 50) && escenas == 8) {
    escenas = escenas +1;
  }
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT||keyCode == LEFT) {
      escenas = (escenas +1)%13;
    }
  }
}


void draw () {
  //imprimir coordenadas, se elimina al terminar el SKETH
  frameRate(12);
  println(mouseX + " : " + mouseY);


  //Escena 1 inicio
  if (escenas == 0) {
    background(255, 255, 255);
    stroke(0);
    tint(255, 126);
    image (img1, 0, 0, height, width);
    noTint();
    image (img0, 200, 300, 200, 120);
    textFont (f);
    fill(#11D8CD);
    textAlign(CENTER);
    textSize(45);
    String titulo ="El Joven Renacuajo."; 
    text(titulo, 150, 150, 300, 300);
    fill(#47AFA9);
    textSize(25);
    String subtitulo ="Inspirado en la fábula de Rafael Pombo, el renacuajo paseador.";
    text(subtitulo, 150, 450, 300, 300);
  }
  //Escena 2

  if (mousePressed && escenas == 1 ) {
    background(#3CB371);
    image (img2, 0, 0, height/2, width);
    image (img17, 400, 520, 80, 60);
    textFont (f, 30);
    fill(#F5B30A);
    textAlign(CENTER);    
    String TexEscena2 ="El hijo de rana, Rin Rin renacuajo, salió esta mañana muy tieso y muy majo con pantalón corto, corbata a la moda, campera elegante y una expresión encantadora";
    text(TexEscena2, 300, 45, 300, 500);
  }

  //escena 3
  if (keyCode == RIGHT && escenas == 2 ) {
    background(255, 0, 0);
    tint(255, 235);
    image (img3, 0, 0, height, width);
    image (img18, 515, 538, 80, 60);
    textFont (f, 25);
    fill(0);
    textAlign(CENTER);    
    String TexEscena3 ="Muchacho no salgas, le dijo Mamá. Pero él hace un gesto y orondo se va.";
    text(TexEscena3, 180, 40, 400, 300);
  }
  //escena 4
  if (keyCode == RIGHT  && escenas == 3) {
    background(#3CB371);
    image (img4, 0, 0, height/2+80, width);
    image (img17, 450, 520, 80, 60);
    textFont (f, 30);
    fill(#F5B30A);
    textAlign(CENTER);    
    String TexEscena4 ="Halló en el camino a un ratón vecino y le dijo:";
    text(TexEscena4, 380, 150, 200, 300);
  }
  //Escena 5
  if (keyCode == RIGHT  && escenas == 4 ) {
    background(#3CB371);
    image (img6, 0, 0, height/2+70, width/2);
    image (img5, 250, 300, height/2+80, width/2);
    image (img18, 520, 545, 70, 50);
    textFont (f, 25);
    fill(#F5B30A);
    textAlign(CENTER);    
    String TexEscena4 ="Llegaron a casa de la joven ratona, golpearon la puerta y abrió la anfitriona.";
    text(TexEscena4, 400, 30, 200, 300);
    textSize(22);
    String TexEscena5 ="Pasen amigos y disfruten la fiesta, aquí no paramos hasta que amanezca! Dijo la joven ratona.";
    text(TexEscena5, 25, 315, 200, 300);
  }
  //escena 5
  if (keyCode == RIGHT  && escenas == 5 ) {
    background(#3CB371);
    tint(255, 200);
    image (img789, 0, 0, height, width);
    noTint();
    image (img18, 520, 545, 70, 50);
    textFont (f, 25);
    fill(0);
    textAlign(CENTER);    
    String TexEscena5 ="Se arma el fiestón, brillante función de baile y cerveza guitarra y canción.";
    text(TexEscena5, 65, 25, 500, 100);
  }
  //escena 6
  if (keyCode == RIGHT  && escenas == 6 ) {
    background(#3CB371);
    tint(255, 225);
    image (img10, 0, 0, height, width);
    image (img18, 520, 545, 70, 50);
    textFont (f, 25);
    fill(0);
    textAlign(CENTER);    
    String TexEscena6 ="De Repente aparece una gata y sus gatos y la fiesta se convierte en el juicio final.";
    text(TexEscena6, 337, 196, 250, 400);
  }
  //escena 7
  if (keyCode == RIGHT  && escenas == 7 ) {
    background(#3CB371);
    image (img11, 0, 0, height, width);
    image (img18, 28, 544, 70, 50);
    textFont (f, 22);
    fill(0);
    textAlign(CENTER);    
    String TexEscena7 ="La vieja gata trinchó por la oreja a Jacinto, mientras sus gatos, agarraron a Emilia, uno por la pata y otro por la cola.";
    text(TexEscena7, 289, 404, 300, 200);
  }
  //escena 8
  if (keyCode == RIGHT  && escenas == 8 ) {
    background(#3CB371);
    noTint();
    image (img12, 0, 0, height, width);
    image (img13, 514, 345, 70, 50);
    textFont (f, 25);
    fill(0);
    textAlign(CENTER);    
    String TexEscena8 ="El Joven renacuajo mirando este asalto intenta tomar su sombrero";
    text(TexEscena8, 41, 49, 563, 100);
    textSize(22);
    fill(#BDF50A);
    String mensaje8 ="Click sobre el sombrero, para ayudarlo a escapar";
    text(mensaje8, 16, 371, 155, 250);
  }
  //escena 9
  if (mousePressed && escenas == 9) { 
    background(#3CB371);
    tint(255, 225);
    image (img14, 0, 0, height, width);
    image (img18, 520, 545, 70, 50);
    textFont (f, 25);
    fill(0);
    textAlign(CENTER);    
    String TexEscena9 ="El Joven renacuajo dio un tremendo salto y abriendo la puerta con manos y narices se fue dando a todos noches muy felices.";
    text(TexEscena9, 50, 397, 525, 150);
  }
  //escena 10
  if (keyCode == RIGHT  && escenas == 10 ) {
    background(#3CB371);
    tint(255, 220);
    image (img15, 0, 0, height, width);
    image (img17, 450, 520, 80, 60);
    textFont (f, 22);
    fill(0);
    textAlign(CENTER);    
    String TexEscena10 ="Y siguió saltando tan alto y deprisa que se colocó en la boca de un pato tragón";
    text(TexEscena10, 17, 407, 264, 155);
  }

  //escena 11
  if (keyCode == RIGHT  && escenas == 11 ) {
    background(#3CB371);
    tint(255, 225);
    image (img16, 0, 0, height, width);
    image (img18, 520, 545, 70, 50);
    textFont (f, 25);
    fill(255);
    textAlign(CENTER);    
    String TexEscena11 ="Y el pato se lo embucha de un sólo estirón";
    text(TexEscena11, 47, 162, 250, 151);
  }

  //escena 12
  if (keyCode == RIGHT  && escenas == 12) {
    background(#3CB371);
    tint(255, 140);
    image (img1, 0, 0, height, width);
    textFont (f, 25);
    fill(0);
    textAlign(CENTER);    
    String TexEscena12 ="Así concluyeron uno, dos y tres. Jacinto, Emilia y el joven Renacuajo después. Los gatos comieron y el pato ceno Y mamá ranita solita quedó.";
    text(TexEscena12, 100, 100, 400, 350);
    textSize(30);
    fill(#14C43E);
    String TexFin ="FIN.";
    text(TexFin, 337, 440, 100, 100);
  }
}
