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
  
  // x, y, roation, unit size, color of logo, background color
  myLogo = new Logo(1*step, step, 0, 5, color(255,0,0), color(0,0,0));
  myLogo.display();
  
  yourLogo = new Logo(2*step, step, 90, 5, color(255,0,0), color(0,0,0));
  yourLogo.display();
  
  ourLogo = new Logo(1*step, 2*step, 270, 5, color(255,0,0), color(0,0,0));
  ourLogo.display();
  
  hisLogo = new Logo(2*step, 2*step, 0, 5, color(255,0,0), color(0,0,0));
  hisLogo.display();
  
  //herLogo = new Logo(2*diam, 2*diam, 270, 5, color(255,0,0), color(0,0,0));
  //herLogo.display();
  
}
