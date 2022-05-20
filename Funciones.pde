String text0 = "BATMAN \n" + "ARKHAM KNIGHT";
String text1 = "Developed by   ROCKSTEADY STUDIOS \n ";
String text2 ="Production directors\n" +  " DANIEL BAILIE   NATHAN BURLOW \n";
String text3 = "Game - SEFTON HILL \n" ;
String text4  =  "Studio director   JAMIE WALKER \n";
String text5 = "Lead animator\n " +
"Senio animator   Max faning \n" + "Senio animator   DAVID HOUSTON \n"+ "Senio animator  DANNY MURDOCK \n" +  "Animator   MIRKO PETRELLI \n" +
 "Animator   NIAMH TIERNEY \n" +  "Animator   ADAM VINCENT \n";
String text6 = "Personajes \n " +
"Batman - Bruce wayne \n" + "Joker \n" +"Arkham knight - Jason Todd \n" +  "Robin - Tim Drake \n"  +"Nightwing - Dick Grayson \n" +  "Crane\n" + "Oracle - Barbara Gordon \n"
 + "Jim Gordon\n";


void estados(){ 

  contador ++;
 if (contador >=90) {
   contador = 0; 
  
    if (pantalla < 6) {
      pantalla++;
    }else {
      pantalla = 0;
  }
  println(pantalla);
   }
}
