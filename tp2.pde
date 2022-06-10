//Joray Loreley 77302/9
//Comision 4
//tp2
//https://youtu.be/rM3HlAtPpcU


int i, j, k, l;
float x1, x2;
float r;
int velY;
color relleno;
void setup() {
  i=0;
  j=3;
  k=6;
  l=9;
  relleno = color (253, 238, 196);
  size(500, 500);
}

void draw() {
  r = random (100, 255); 
  background(255);
  noStroke();
  fill(253, 238, 196);
  //start
  if (key=='s') {
    fill( r);
  }
  //reset
  if (keyPressed) {
    if (key=='r') {
      fill (253, 238, 196);
    }
  }
  lineasYellow();
  ellipse(100, 100, 100, 100);
  ellipse(300, 100, 100, 100);
  ellipse(300, 300, 100, 100);
  lineasCyan();
  ellipse(400, 200, 100, 100);
  ellipse(400, 400, 100, 100);
  ellipse(100, 300, 100, 100);
  lineasGreen();
  ellipse(200, 400, 100, 100);  
  ellipse(200, 200, 100, 100);
  lineasMagenta();

  pushStyle(); 
  fill(0);
  rect ( 200, 400, 100, 50);
  rect ( 200, 50, 100, 50);
  popStyle();

  pushStyle();
  textAlign(CENTER);
  textSize(25);
  stroke(255, 0, 0);
  text("RESET", 250, 425);
  text("start", 250, 75);
  textSize(10);
  text("press 'r' ", 250, 435);
  text("press 's' ", 250, 85);
  popStyle();
}
