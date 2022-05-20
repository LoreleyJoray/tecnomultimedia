String text0 = "BATMAN \n" + "ARKHAM KNIGHT";
String text1 = "Developed by   ROCKSTEADY STUDIOS \n ";
String text2 ="Production directors\n" +  " DANIEL BAILIE   NATHAN BURLOW \n";
String text3 = "Game - SEFTON HILL \n" ;
String text4  =  "Studio director   JAMIE WALKER \n";
String text5 = "Lead animator\n " +
"Senio animator   Max faning \n" + "Senio animator   DAVID HOUSTON \n"; 
String text6= "Senio animator  DANNY MURDOCK" +  "Animator   MIRKO PETRELLI \n" +
 "Animator   NIAMH TIERNEY \n" +  "Animator   ADAM VINCENT \n";
String text7 = "Personajes " +
"Batman - Bruce wayne \n" + "Joker \n";
String text8 ="Arkham knight - Jason Todd" +  "Robin - Tim Drake \n"  ;
String text9 ="Nightwing - Dick Grayson\n" +  "Crane\n" + "Oracle - Barbara Gordon\n"
 + "Jim Gordon\n";


void estados(){ 

  contador ++;
 if (contador >=100) {
   contador = 0; 
  
    if (pantalla < 6) {
      pantalla++;
    }else {
      pantalla = 0;
  }
  println(pantalla);
   }
}
