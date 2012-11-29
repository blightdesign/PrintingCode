// Nov. 14, 2012
// Wrapping paper concept for Makerbot

Logo aLogo;  //Top Left quadrant
Logo bLogo;  //Top Right quadrant
Logo cLogo;  //Bottom Left quadrant
Logo dLogo;  //Bottom Right quadrant

Logo aBrightLogo;  //Top Left quadrant
Logo bBrightLogo;  //Top Right quadrant
Logo cBrightLogo;  //Bottom Left quadrant
Logo dBrightLogo;  //Bottom Right quadrant

void setup() 
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  smooth();
  background(250, 100, 2);  // should match bgColor
  
  int unit = 3;
  int diam = unit*34;
  int step = unit*17;  //half of diam
  color bgColor =     color(250, 100,   2);  //should match the background color
  color kolor =       color(358,  88,  60);
  //color brightColor = color(358,  88,  84);
  color brightColor = color(358,  88,  75);
  
  int i =1;
  
  // This corrects the bright logo pattern
  translate(-diam,0);
  
  //Background logos
  for(int x = 0; x < width+diam; x += step*2)
  {
    for(int y = 0; y < height+diam; y += step*2)
    {
      // x, y, roation, unit size, color of logo, background color
      aLogo = new Logo( x, y, 180, unit, kolor, bgColor);
      aLogo.displayA();
      
      bLogo = new Logo( x, y,   0, unit, kolor, bgColor);
      bLogo.displayB();
      
      cLogo = new Logo( x, y,   0, unit, kolor, bgColor);
      cLogo.displayC();
      
      dLogo = new Logo( x, y, 180, unit, kolor, bgColor);
      dLogo.displayD(); 
    }
  }
  
  
  //Bright Logos
  for(int x = 0; x < width/diam; x = x+1)
  {
    for(int y = 0; y < height/diam; y = y+1)
    {
      i = i *(-1);
      fill(bgColor);
      rect(x*((step*6)+(6*i*step)), y*(step*6), diam, diam);
      aBrightLogo = new Logo( x*((step*6)+(6*i*step)), y*(step*6), 0, unit, brightColor, bgColor);
      aBrightLogo.displayA();
      bBrightLogo = new Logo( x*((step*6)+(6*i*step)), y*(step*6), 0, unit, brightColor, bgColor);
      bBrightLogo.displayB();
      cBrightLogo = new Logo( x*((step*6)+(6*i*step)), y*(step*6), 0, unit, brightColor, bgColor);
      cBrightLogo.displayC();
      dBrightLogo = new Logo( x*((step*6)+(6*i*step)), y*(step*6), 0, unit, brightColor, bgColor);
      dBrightLogo.displayD(); 
    }
  }
  //save("grab3.tif");
}
