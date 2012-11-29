// Nov. 14, 2012
// Wrapping paper concept for Makerbot

/*  Properties
_________________________________________________________________ */

PGraphics canvas;
int canvas_width = 3500;
int canvas_height = 7000;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

Logo aLogo;  //Top Left quadrant
Logo bLogo;  //Top Right quadrant
Logo cLogo;  //Bottom Left quadrant
Logo dLogo;  //Bottom Right quadrant

Logo aBrightLogo;  //Top Left quadrant
Logo bBrightLogo;  //Top Right quadrant
Logo cBrightLogo;  //Bottom Left quadrant
Logo dBrightLogo;  //Bottom Right quadrant

/*  Setup
_________________________________________________________________ */

void setup()
{ 
  size(1300, 850);
  background(30);
  colorMode(HSB, 360, 100, 100);
  //canvas = createGraphics(canvas_width, canvas_height, P2D);
  canvas = createGraphics(canvas_width, canvas_height, JAVA2D);
  
  calculateResizeRatio();
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 360, 100, 100);
    canvas.background(250, 100, 2); // should match bgColor
    canvas.smooth();
    
    int unit = 8;
    int diam = unit*34;
    int step = unit*17;  //half of diam
    color bgColor =     color(250, 100,   2);  //should match the background color
    color kolor =       color(358,  88,  60);
    color brightColor = color(358,  88,  84);
    int bgColorH = 250;
    int bgColorS = 100;
    int bgColorB = 2;
    int kolorH = 358;
    int kolorS = 88;
    int kolorB = 60;
    int brightColorH = 358;
    int brightColorS = 88;
    int brightColorB = 84;
  
    int i =1;

    // This corrects the bright logo pattern
    canvas.translate(-diam,0);
  
    //Background logos
    for(int x = 0; x < canvas.width+diam; x += step*2)
    {
      for(int y = 0; y < canvas.height+diam; y += step*2)
      {
        // x, y, roation, unit size, color of logo, background color
        aLogo = new Logo( x, y, 180, unit, kolor, kolorH, kolorS, kolorB, bgColor, bgColorH, bgColorS, bgColorB);
        aLogo.displayA();
        bLogo = new Logo( x, y,   0, unit, kolor, kolorH, kolorS, kolorB, bgColor, bgColorH, bgColorS, bgColorB);
        bLogo.displayB();
        cLogo = new Logo( x, y,   0, unit, kolor, kolorH, kolorS, kolorB, bgColor, bgColorH, bgColorS, bgColorB);
        cLogo.displayC();
        dLogo = new Logo( x, y, 180, unit, kolor, kolorH, kolorS, kolorB, bgColor, bgColorH, bgColorS, bgColorB);
        dLogo.displayD(); 
      }
    }
    
    //Bright Logos
    for(int x = 0; x < ((canvas.width)/diam); x = x+1)
    {
      for(int y = 0; y < ((canvas.height)/diam); y = y+1)
      {
        i = i *(-1);
        //i=1;
        canvas.fill(bgColorH, bgColorS, bgColorB);
        canvas.rect(x*((step*6)+(6*i*step)), y*(step*6), diam, diam);
        aBrightLogo = new Logo( x*((step*6)+(6*i*step)), y*(step*6), 0, unit, brightColor, brightColorH, brightColorS, brightColorB, bgColor, bgColorH, bgColorS, bgColorB);
        aBrightLogo.displayA();
        bBrightLogo = new Logo( x*((step*6)+(6*i*step)), y*(step*6), 0, unit, brightColor, brightColorH, brightColorS, brightColorB, bgColor, bgColorH, bgColorS, bgColorB);
        bBrightLogo.displayB();
        cBrightLogo = new Logo( x*((step*6)+(6*i*step)), y*(step*6), 0, unit, brightColor, brightColorH, brightColorS, brightColorB, bgColor, bgColorH, bgColorS, bgColorB);
        cBrightLogo.displayC();
        dBrightLogo = new Logo( x*((step*6)+(6*i*step)), y*(step*6), 0, unit, brightColor, brightColorH, brightColorS, brightColorB, bgColor, bgColorH, bgColorS, bgColorB);
        dBrightLogo.displayD(); 
      }
    }
    
  canvas.endDraw();
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);
  
  int s = second();  // Values from 0 - 59
  
  //canvas.save("grab.png");
  
  canvas.save("grab.tiff");
}

/*  Calculate resizing
_________________________________________________________________ */

void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  
  if(ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}

