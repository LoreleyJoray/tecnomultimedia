void lineasYellow() {
  for ( k = 6; k <height; k += 12) {

    pushStyle();
    println("k:"+k);
    stroke(255, 200, 0); //Yellow
    strokeWeight(3);
    line( 0, k, width, k );
    popStyle();
  }
}

void lineasCyan() {
  for ( i = 0; i<height; i += 12) {

    pushStyle();
    println("i:"+i);
    stroke(0, 160, 227); //Cyan
    strokeWeight(3);
    line( 0, i, width, i) ;
    popStyle();
  }
}
void lineasGreen() {
  for ( l = 9; l <height; l += 12) { 
    pushStyle();
    println("l:"+l);
    stroke(0, 255, 0); //Green
    strokeWeight(3);
    line( 0, l, width, l );
    popStyle();
  }
}
void lineasMagenta() {
  for ( j = 3; j <500; j= j+12) {
    pushStyle();
    println("j:"+j);
    stroke(255, 0, 255); //Magenta
    strokeWeight(3);
    line( 0, j, width, j ); 
    popStyle();
  }
}
