Logo aLogo;
Logo bLogo;
Logo cLogo;
Logo dLogo;

void setup() 
{
  size(600, 600);
  smooth();
  background(0,0,0);
  
 int unit = 5;
  int diam = unit*34;
  int step = unit*17;  //half of diam
  color kolor = color(255,0,0);
  color bgColor = color(0,0,0);
  
  //int x = step;
  //int y = step;
  for(int x = 0; x < width; x += step*2)
  {
    for(int y = 0; y < height; y += step*2)
    {
      // x, y, roation, unit size, color of logo, background color
      aLogo = new Logo( x, y, 180, unit, kolor, bgColor);
      aLogo.displayA();
      
      bLogo = new Logo( x, y,  0, unit, kolor, bgColor);
      bLogo.displayB();
      
      cLogo = new Logo( x, y,  180, unit, kolor, bgColor);
      cLogo.displayC();
      
      dLogo = new Logo( x, y, 0, unit, kolor, bgColor);
      dLogo.displayD(); 
    }
  }
}
