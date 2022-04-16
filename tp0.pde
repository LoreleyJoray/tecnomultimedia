void setup ()
{
size(400,300);
 background(0,100,55,30);
}
void draw()
{
  noStroke();
  fill(255);
  circle(width/2, height/2, 250);
//frente y hocico
 fill(242,122,8);
  triangle(175,100,225,100,200,220);
  fill(255,140,8,255);
   triangle(125,130,175,100,190,160);
    triangle(225,100,275,130,210,160);
    fill(240,230,212);
      triangle(155,145,190,160,200,220);
        triangle(245,145,210,160,200,220);
 //nariz 
 fill(#4F1407);
  triangle (200,220,193,210,207,210);
  //cachetes 
   fill(240,221,212);
      triangle(125,130,155,145,115,180);
        triangle(245,145,275,130,285,180);
          fill(240,230,225);
          triangle(115,180,155,145,194,210); 
            triangle(285,180,245,145,206,210);
 //orejas
 fill(230,212,203);
   triangle(125,130,175,100,110,70);
     triangle(225,100,275,130,290,70); 
     fill(242,122,8);
       triangle(160,110,175,100,110,70);
         triangle(225,100,240,110,290,70);
textSize(30);
 text("tp0",175,75);
}
