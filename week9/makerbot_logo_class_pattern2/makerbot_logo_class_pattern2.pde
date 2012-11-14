Logo aLogo;
Logo bLogo;
Logo cLogo;
Logo dLogo;
Logo eLogo;

void setup() 
{
  size(600, 600);
  smooth();
  //background(0,0,0);

  for(int x = step; x < width; x += step*2)
  {
    for(int y = step; y < height; y += step*2)
    {
  
      // x, y, roation, unit size, color of logo, background color
      //aLogo = new Logo(1*step, step, 0, 5, color(255,0,0), color(0,0,0));
      aLogo = new Logo(     x,      y,   0, unit, color(255,0,0), color(0,0,0));
      aLogo.display();
      bLogo = new Logo(x+step,      y,  90, unit, color(255,0,0), color(0,0,0));
      bLogo.display();
      cLogo = new Logo(     x, y+step, 270, unit, color(255,0,0), color(0,0,0));
      cLogo.display();
      dLogo = new Logo(x+step, y+step, 360, unit, color(255,0,0), color(0,0,0));
      dLogo.display();
 
    }
  }
}
  

