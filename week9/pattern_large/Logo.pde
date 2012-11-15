class Logo {
   int x;
   int y;
   int rotation;
   int unit;
   color kolor;
   color bgColor;
   int kolorH;
   int kolorS;
   int kolorB;
   int bgColorH;
   int bgColorS;
   int bgColorB;
   int step;
   
   Logo(int _x, int _y, int _rotation, int _unit, color _kolor, int _kolorH, int _kolorS, int _kolorB, color _bgColor, int _bgColorH, int _bgColorS, int _bgColorB)
   {
     x = _x;
     y = _y;
     rotation = _rotation;
     unit = _unit;
     kolor = _kolor;
     bgColor = _bgColor;
     kolorH = _kolorH;
     kolorS = _kolorS;
     kolorB = _kolorB;
     bgColorH = _bgColorH;
     bgColorS = _bgColorS;
     bgColorB = _bgColorB;
     step = unit*17;
   }
   void displayA()
   {
     //Top Left
     canvas.pushMatrix();
     if (rotation==0)
     {
       canvas.translate(x,y);
     }
     if (rotation==90)
     {
       canvas.translate(x+(step),y);
     }
     if (rotation==180)
     {
       canvas.translate(x+(step),y+step);
     }
     if (rotation==270)
     {
       canvas.translate(x,y+(step));
     }
     canvas.rotate(radians(rotation));
     canvas.noStroke();
     canvas.fill(kolorH, kolorS, kolorB);
     canvas.arc(unit*17, unit*17, unit*34, unit*34, radians(180), radians(270));
     canvas.fill(bgColorH, bgColorS, bgColorB);
     canvas.arc(unit*17, unit*17, unit*29, unit*29, radians(180), radians(270));
     canvas.fill(kolorH, kolorS, kolorB);
     canvas.rect(unit*(8), unit*(10), unit*4, unit*7);
     canvas.rect(unit*(15), unit*(10), unit*2, unit*7);
     canvas.rect(unit*(12), unit*(6), unit*5, unit*4);
     canvas.arc(unit*(12), unit*(10), unit*8, unit*8, radians(180), radians(270));
     canvas.popMatrix();
   }
   void displayB()
   {
     //Top Right
     canvas.pushMatrix();
     if (rotation==0)
     {
       canvas.translate(x,y);
     }
     if (rotation==90)
     {
       canvas.translate(x+(2*step),y-step);
     }
     if (rotation==180)
     {
       canvas.translate(x+(3*step),y+step);
     }
     if (rotation==270)
     {
       canvas.translate(x+(1*step),y+(2*step));
     }
     canvas.rotate(radians(rotation));
     canvas.noStroke();
     canvas.fill(kolorH, kolorS, kolorB);
     canvas.arc(unit*17, unit*17, unit*34, unit*34, radians(270), radians(360));
     canvas.fill(bgColorH, bgColorS, bgColorB);
     canvas.arc(unit*17, unit*17, unit*29, unit*29, radians(270), radians(360));
     canvas.fill(kolorH, kolorS, kolorB);
     canvas.rect(unit*(17), unit*(10), unit*2, unit*7);
     canvas.rect(unit*(22), unit*(10), unit*4, unit*7);
     canvas.rect(unit*(17), unit*(6), unit*5, unit*4);
     canvas.arc(unit*(22), unit*(10), unit*8, unit*8, radians(270), radians(360));
     canvas.popMatrix();
   }
   void displayC()
   {
     //Bot Left
     canvas.pushMatrix();
     if (rotation==0)
     {
       canvas.translate(x,y);
     }
     if (rotation==90)
     {
       canvas.translate(x+(2*step),y+step);
     }
     if (rotation==180)
     {
       canvas.translate(x+(step),y+(3*step));
     }
     if (rotation==270)
     {
       canvas.translate(x-step,y+(2*step));
     }
     canvas.rotate(radians(rotation));
     canvas.noStroke();
     canvas.fill(kolorH, kolorS, kolorB);
     canvas.arc(unit*17, unit*17, unit*34, unit*34, radians(90), radians(180));
     canvas.fill(bgColorH, bgColorS, bgColorB);
     canvas.arc(unit*17, unit*17, unit*29, unit*29, radians(90), radians(180));
     canvas.fill(kolorH, kolorS, kolorB);
     canvas.rect(unit*(8), unit*(17), unit*4, unit*8);
     canvas.rect(unit*(15), unit*(17), unit*2, unit*8);
     canvas.arc(unit*(10), unit*25, unit*4, unit*4, radians(0), radians(180));
     canvas.arc(unit*(17), unit*25, unit*4, unit*4, radians(90), radians(180));
     canvas.popMatrix();
   }
   void displayD()
   {
     //Bot Right
     canvas.pushMatrix();
     if (rotation==0)
     {
       canvas.translate(x,y);
     }
     if (rotation==90)
     {
       canvas.translate(x+(3*step),y);
     }
     if (rotation==180)
     {
       canvas.translate(x+(3*step),y+(3*step));
     }
     if (rotation==270)
     {
       canvas.translate(x,y+(3*step));
     }
     canvas.rotate(radians(rotation));
     canvas.noStroke();
     canvas.fill(kolorH, kolorS, kolorB);
     canvas.arc(unit*17, unit*17, unit*34, unit*34, radians(0), radians(90));
     canvas.fill(bgColorH, bgColorS, bgColorB);
     canvas.arc(unit*17, unit*17, unit*29, unit*29, radians(0), radians(90));
     canvas.fill(kolorH, kolorS, kolorB);
     canvas.rect(unit*(17), unit*(17), unit*2, unit*8);
     canvas.rect(unit*(22), unit*(17), unit*4, unit*8);
     canvas.arc(unit*(17), unit*25, unit*4, unit*4, radians(0), radians(90));
     canvas.arc(unit*(24), unit*25, unit*4, unit*4, radians(0), radians(180));
     canvas.popMatrix();
   }
     
}
