
void pantallas() {
  if (posY <= 0) {
    pantalla=0;
    posY = height;
  } else {
    posY = height;
  }

  if (posY >= 0 && pantalla < 5) {
    posY-=1;
  } else {
    posY = height;
  } 
  if (pantalla == 0 ) {
    pantalla++;
    pushStyle();
    textSize(50);
    textAlign(CENTER);
    text("START;"+pantalla, height/2, width/2);
    popStyle();
  }
  if (pantalla == 1) {
    imageMode(CORNER);
    image(images[0], x, 0);
    image(images[0], x+images[0].width, 0);
    text( "pantalla;"+pantalla, height/2, width/2);
    personaje();
  } else if (pantalla == 2) {
    x -= 2;
    imageMode(CORNER);
    image(images[1], x, 0);
    image(images[1], x+images[1].width, 0);
    personaje();
    text( "pantalla;"+pantalla, height/2, width/2);
  } else if (pantalla == 3) {
    x -= 2;
    imageMode(CORNER);
    image(images[2], x, 0);
    image(images[2], x+images[2].width, 0);
    personaje();
    text( "pantalla;"+pantalla, height/2, width/2);
  } else if (pantalla == 4) { // ganaste y creditos
    personaje();
    image(images[2], x, 0);
    text( "Ganaste!!;"+pantalla, height/2, width/2);
    image(images[2], 0, 0);
  }
  if (pantalla == 5) { //perdiste
    text( "Perdiste;"+pantalla, height/2, width/2);
    image(images[7], 0, 0);
  }
}
void calcularMovimiento() {
  //  calcularMovimientosLaterales();
  calcularQueEstaSaltando();
}

void calcularMovimientosLaterales() {
  if (keyPressed && keyCode == LEFT) {
    posX--;
  }
  if (keyPressed && keyCode == RIGHT) {
    posX++;
  }
}

void calcularQueEstaSaltando() {
  if (keyPressed && keyCode == UP && !estaSaltando) {
    estaSaltando = true;
    estaSaltandoDireccion = 1; //Esta llendo hacia arriba
  } else if (
    estaSaltando && 
    estaSaltandoDireccion == 1 &&
    posYp < topeSalto) {
    estaSaltandoDireccion = -1;
  } else if (
    estaSaltando && 
    estaSaltandoDireccion == -1 &&
    posYp > topePiso) {
    estaSaltandoDireccion = 0;
    estaSaltando = false;
  } else if (estaSaltando && estaSaltandoDireccion == 1) {
    posYp--;
  } else if (estaSaltando && estaSaltandoDireccion == -1) {
    posYp++;
  }
}
void personaje() {
  calcularMovimiento();
  image(images[3], posXp, posYp);//Personaje
}
void obstaculos() {
  for (int i = 0; i < 5; i++) {
    image(images[5], posObst[i]--, 350);
    if (posObst[i]<= width/2) { // Si pasa los obs
      puntaje++; // Suma puntos
      image(images[6], posObst[4]-x, 350);
    }
  }
}
void puntaje() {
  textSize(10);
  text("Puntaje:"+ puntaje, width/8, height/8 );
}
