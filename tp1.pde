PImage imagen0,imagen1,imagen2,imagen3,imagen4,imagen5,imagen6, imagen7,imagen8;
PFont fuente1, fuente2;
int velX, velY, posX, posY;
int contador, pantalla, velocidad;


void setup(){
 fuente1 =  loadFont("Nyala-Regular-46.vlw");
 fuente2 = loadFont ("MoolBoran-20.vlw");
 imagen0 = loadImage ( "batman0.png");
 imagen1 = loadImage ( "batman1.png");
 imagen2 = loadImage ( "batman2.png");
 imagen3 = loadImage ( "batman3.png");
 imagen4 = loadImage ( "batman4.png");
 imagen5 = loadImage ( "batman5.png");
 imagen6 = loadImage ( "batman66.png");
 imagen7 = loadImage ( "murcielago-03.png");
 imagen8 = loadImage ( "murcielagos-02.png");

 posX = 0;
 posY =500;
 velX = 3;
 velY = 7;
 pantalla = 0;
 velocidad= 2;
 
 

 size (500,500);
 
}
 void draw(){
 
   
  background(0);
  textFont( fuente2);
  estados();
   
    if (key == ' '){  //Reinicio
     pantalla = 0;
     contador = 0;
    }

    
  if (pantalla == 0){    
     posX += velX;
     textSize (36);
     text (text0, posX, height/2); 
     image(imagen8,mouseX, mouseY);
      }
   if (pantalla == 1 ){
     posY-=velY;
     image (imagen1,0,0,width/2, 500);   
     image(imagen8,mouseX, mouseY);
     text( text1,height/2, posY);
     
  }
   if (pantalla == 2){ 
    
     background (255);
     image (imagen2,0,0,width/2, 500);  
     image(imagen7,mouseX, mouseY);
      fill(0);
      text( text2,width/2,height/2);
      
      }
      
   if (pantalla == 3){
    background (0);
     image (imagen3,width/3.3,0,width/1.4, 500);
     image(imagen8,mouseX, mouseY);
     fill(255);
     text( text3,10,height/1.4);
      }
   if (pantalla == 4){
   background (255);
     image (imagen4,0,0,width/2, 500);   
     image(imagen7,mouseX, mouseY);
     fill (0);
      text( text4,width/2,height/2);
      }
   if (pantalla == 5){
   background (0);
     image (imagen5,width/3.3,0,width/1.4, 500);  
     image(imagen8,mouseX, mouseY);
     fill(255);
      text( text5,20,height/5);
   }  
   if (pantalla == 6){
     background(255);
     image (imagen6,0,0,width/2, 500); 
     image(imagen7,mouseX, mouseY);
     fill(0);
      text( text6, width/2,height/5);
    } 
  }
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
