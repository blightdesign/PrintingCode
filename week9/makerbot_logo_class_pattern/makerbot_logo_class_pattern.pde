Logo myLogo;
Logo yourLogo;
Logo ourLogo;
Logo hisLogo;
Logo herLogo;

float a = 10;
float b = 20;
float c = 30;
float d = 40;

void setup() 
{
  size(600, 600);
  smooth();
  //background(0,0,0);
  
  int unit = 5;
  int diam = unit*34;
  int step = unit*17;  //half of diam
  
  for (int y = 0; y <= height + c; y += c) 
  {
    for (int x = 0; x <= width + d; x += d)
    {
      //pushMatrix();
      if((y/c) % 2 == 0)  translate(x - b, y);
      else            translate(x, y);
  
  // x, y, roation, unit size, color of logo, background color
  myLogo = new Logo(1*step, step, 0, 5, color(255,0,0), color(0,0,0));
  myLogo.display();
  
//  yourLogo = new Logo(2*step, step, 90, 5, color(255,0,0), color(0,0,0));
//  yourLogo.display();
//  
//  ourLogo = new Logo(1*step, 2*step, 270, 5, color(255,0,0), color(0,0,0));
//  ourLogo.display();
//  
//  hisLogo = new Logo(2*step, 2*step, 0, 5, color(255,0,0), color(0,0,0));
//  hisLogo.display();
  
  //herLogo = new Logo(2*diam, 2*diam, 270, 5, color(255,0,0), color(0,0,0));
  //herLogo.display();
  
      //popMatrix();
    }
  }
}
  

