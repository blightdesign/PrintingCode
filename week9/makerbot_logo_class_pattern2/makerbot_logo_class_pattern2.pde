Logo myLogo;
Logo yourLogo;
Logo ourLogo;
Logo hisLogo;
Logo herLogo;

void setup() 
{
  size(600, 600);
  smooth();
  //background(0,0,0);
  
  int unit = 5;
  int diam = unit*34;
  int step = unit*17;  //half of diam

  for(int x = 0; x < width; x += step)
  {
    for(int y = 0; y < height; y += step)
    {
  
      // x, y, roation, unit size, color of logo, background color
      //myLogo = new Logo(1*step, step, 0, 5, color(255,0,0), color(0,0,0));
      myLogo = new Logo(x, y, 0, 5, color(255,0,0), color(0,0,0));
      myLogo.display();
 
    }
  }
}
  

