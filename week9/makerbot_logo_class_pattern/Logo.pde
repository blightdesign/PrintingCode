class Logo {
   int x;
   int y;
   int rotation;
   int unit;
   int diam;
   color kolor;
   color bgColor;
   
   Logo(int _x, int _y, int _rotation, int _unit, color _kolor, color _bgColor)
   {
     x = _x;
     y = _y;
     rotation = _rotation;
     unit = _unit;
     kolor = _kolor;
     bgColor = _bgColor;
   }
   
   void display()
   {
     //pushMatrix();
     translate(x,y);
     rotate(radians(rotation));
     noStroke();
     
     fill(bgColor);
     rect(unit*(-17),unit*(-17),unit*34,unit*34);
     
     fill(kolor);
     ellipse(0, 0, unit*34, unit*34);  //outer ring
     fill(bgColor);
     ellipse(0, 0, unit*29, unit*29);  //inner ring

     fill(kolor);
     ellipse(unit*(-7), unit*8, unit*4, unit*4);
     ellipse(unit*0, unit*8, unit*4, unit*4);
     ellipse(unit*7, unit*8, unit*4, unit*4);
  
     rect(unit*(-9), unit*(-7), unit*4, unit*15);
     rect(unit*(-2), unit*(-7), unit*4, unit*15);
     rect(unit*5, unit*(-7), unit*4, unit*15);
     rect(unit*(-5), unit*(-11), unit*10, unit*4);
  
     ellipse(unit*(-5), unit*(-7), unit*8, unit*8);
     ellipse(unit*5, unit*(-7), unit*8, unit*8);
  
     fill(0,0,0);
     rect(unit*(-5), unit*(-7), unit*3, unit*4);
     rect(unit*2, unit*(-7), unit*3, unit*4);
     //popMatrix();
   }
}
