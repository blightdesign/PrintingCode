class Logo {
   int x;
   int y;
   int rotation;
   int unit;
   color kolor;
   color bgColor;
   int step;
   
   Logo(int _x, int _y, int _rotation, int _unit, color _kolor, color _bgColor)
   {
     x = _x;
     y = _y;
     rotation = _rotation;
     unit = _unit;
     kolor = _kolor;
     bgColor = _bgColor;
     step = unit*17;
   }
   void displayA()
   {
     //Top Left
     pushMatrix();
     if (rotation==0)
     {
       translate(x,y);
     }
     if (rotation==90)
     {
       translate(x+(step),y);
     }
     if (rotation==180)
     {
       translate(x+(step),y+step);
     }
     if (rotation==270)
     {
       translate(x,y+(step));
     }
     rotate(radians(rotation));
     noStroke();
     fill(kolor);
     arc(unit*17, unit*17, unit*34, unit*34, radians(180), radians(270));
     fill(bgColor);
     arc(unit*17, unit*17, unit*29, unit*29, radians(180), radians(270));
     fill(kolor);
     rect(unit*(8), unit*(10), unit*4, unit*7);
     rect(unit*(15), unit*(10), unit*2, unit*7);
     rect(unit*(12), unit*(6), unit*5, unit*4);
     arc(unit*(12), unit*(10), unit*8, unit*8, radians(180), radians(270));
     popMatrix();
   }
   void displayB()
   {
     //Top Right
     pushMatrix();
     if (rotation==0)
     {
       translate(x,y);
     }
     if (rotation==90)
     {
       translate(x+(2*step),y-step);
     }
     if (rotation==180)
     {
       translate(x+(3*step),y+step);
     }
     if (rotation==270)
     {
       translate(x+(1*step),y+(2*step));
     }
     rotate(radians(rotation));
     noStroke();
     fill(kolor);
     arc(unit*17, unit*17, unit*34, unit*34, radians(270), radians(360));
     fill(bgColor);
     arc(unit*17, unit*17, unit*29, unit*29, radians(270), radians(360));
     fill(kolor);
     rect(unit*(17), unit*(10), unit*2, unit*7);
     rect(unit*(22), unit*(10), unit*4, unit*7);
     rect(unit*(17), unit*(6), unit*5, unit*4);
     arc(unit*(22), unit*(10), unit*8, unit*8, radians(270), radians(360));
     popMatrix();
   }
   void displayC()
   {
     //Bot Left
     pushMatrix();
     if (rotation==0)
     {
       translate(x,y);
     }
     if (rotation==90)
     {
       translate(x+(2*step),y+step);
     }
     if (rotation==180)
     {
       translate(x+(step),y+(3*step));
     }
     if (rotation==270)
     {
       translate(x-step,y+(2*step));
     }
     rotate(radians(rotation));
     noStroke();
     fill(kolor);
     arc(unit*17, unit*17, unit*34, unit*34, radians(90), radians(180));
     fill(bgColor);
     arc(unit*17, unit*17, unit*29, unit*29, radians(90), radians(180));
     fill(kolor);
     rect(unit*(8), unit*(17), unit*4, unit*8);
     rect(unit*(15), unit*(17), unit*2, unit*8);
     arc(unit*(10), unit*25, unit*4, unit*4, radians(0), radians(180));
     arc(unit*(17), unit*25, unit*4, unit*4, radians(90), radians(180));
     popMatrix();
   }
   void displayD()
   {
     //Bot Right
     pushMatrix();
     if (rotation==0)
     {
       translate(x,y);
     }
     if (rotation==90)
     {
       translate(x+(3*step),y);
     }
     if (rotation==180)
     {
       translate(x+(3*step),y+(3*step));
     }
     if (rotation==270)
     {
       translate(x,y+(3*step));
     }
     rotate(radians(rotation));
     noStroke();
     fill(kolor);
     arc(unit*17, unit*17, unit*34, unit*34, radians(0), radians(90));
     fill(bgColor);
     arc(unit*17, unit*17, unit*29, unit*29, radians(0), radians(90));
     fill(kolor);
     rect(unit*(17), unit*(17), unit*2, unit*8);
     rect(unit*(22), unit*(17), unit*4, unit*8);
     arc(unit*(17), unit*25, unit*4, unit*4, radians(0), radians(90));
     arc(unit*(24), unit*25, unit*4, unit*4, radians(0), radians(180));
     popMatrix();
   }
     
}
