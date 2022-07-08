//Loreley Joray 77302/9
//Tp3 comisión 4  Leonardo Garay
int numImages = 9; // fondos, personaje y obs
PImage[]images = new PImage[numImages];
int pantalla; // Estados de Pantallas
float x, y, velX, velY, salto, pX, pY, s, m;//movimiento
int numObst = 5;//Obstaculos
int[]posObst;
int puntaje;
boolean estaSaltando;
int estaSaltandoDireccion;
int posX = 100;
int posY = 350;
int posYp = 350;
int posXp = 250;
int posXo = 750;
int topePiso = 350;
int topeSalto =275;
int tam = 50;
boolean mover;
String []creditos;
float posXobstaculos;
boolean colision= true;
void setup() {
  x=500;
  y=350;
  pX = pY = width/2;
  velX =0;
  velY =25;
  posObst = new int [numObst];
  pantalla= 1;
  puntaje= 0;
  posY=height;
  frameRate(60);
  size(500, 500);
  textSize(40);
  posObst[0]=600;
  posObst[1]=800;
  posObst[2]=1000;
  posObst[3]=1200;
  posObst[4]=1400;

  images[0] = loadImage("Plataformas-01.png");
  images[1] = loadImage("Plataformas-02.png");
  images[2] = loadImage("Plataformas-03.png");
  images[3] = loadImage("Personaje.png");
  images[4] = loadImage("obstP.png");
  images[5] = loadImage("obstG.png");
  images[6] = loadImage("meta.png");
  images[7] = loadImage("perdiste.png");
  images[8] = loadImage("ganaste.png");
}
void draw() {
  image(images[0], 0, 0);
  println("pantalla=" + pantalla, "x=" +x);
  strokeWeight(1);
  stroke(255, 15);
  line(0, 400, 500, 400); 
  textAlign(CENTER);
  pantallas();
  println("Pantalla: ", pantalla);
  obstaculos();
  puntaje();
}

void keyPressed() {
  
  if (key=='r'||key=='R') { //Reiniciar pantalla
    pantalla = 0;
    puntaje=0;
    x -= 2;
  }
}
