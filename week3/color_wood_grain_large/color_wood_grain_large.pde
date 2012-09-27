/*  Properties
_________________________________________________________________ */

PGraphics canvas;
int canvas_width = 3508;
int canvas_height = 3508;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

/*  Setup
_________________________________________________________________ */

void setup()
{ 
  size(1300, 850);
  background(30);
  
  //canvas = createGraphics(canvas_width, canvas_height, P2D);
  canvas = createGraphics(canvas_width, canvas_height, JAVA2D);
  
  calculateResizeRatio();
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 360, 100, 100);
    canvas.background(360);
    canvas.smooth();
    int strokeSize = 50;
  
    //Fibonacci
    int fibA = 0;
    int fibB = 1;
    int fibC = 1;
    int fibD = 2;
    int fibE = 3;
    int fibF = 5;
    int fibG = 8;
    int fibH = 13;
    int fibI = 21;
    int fibJ = 34;
    int fibK = 55;
 
    // first we pick a base color
    // r is random
    float r = random(220, 260);
    HSBColor color1 = new HSBColor(r, 60, 100);
    
    // then we pick two colors with different brightness
    int diff = 30;
    float diffB = random(25,45);
    int diffC = round(diffB);
    float diffD = random(-10,5);
    int diffE = round(diffD);
    HSBColor color2 = new HSBColor(color1.h, color1.s+diffD, color1.b - diffC);
    HSBColor color3 = new HSBColor(color2.h, color2.s+diffD, color2.b - diffC);
    
    int rad = canvas.height/32;
    
    //background
    color1.display3(0,0,canvas.height,canvas.width);
    //wood
    color2.display2(canvas.width,canvas.height,fibK*rad,fibK*rad);
    //rings
    canvas.strokeWeight(strokeSize);
    color3.display(canvas.width, canvas.height, fibA*rad, fibA*rad);
    color3.display(canvas.width, canvas.height, fibB*rad, fibB*rad);
    color3.display(canvas.width, canvas.height, fibC*rad, fibC*rad);
    color3.display(canvas.width, canvas.height, fibD*rad, fibD*rad);
    color3.display(canvas.width, canvas.height, fibE*rad, fibE*rad);
    color3.display(canvas.width, canvas.height, fibF*rad, fibF*rad);
    color3.display(canvas.width, canvas.height, fibG*rad, fibG*rad);
    color3.display(canvas.width, canvas.height, fibH*rad, fibH*rad);
    color3.display(canvas.width, canvas.height, fibI*rad, fibI*rad);
    color3.display(canvas.width, canvas.height, fibJ*rad, fibJ*rad);
    color3.display(canvas.width, canvas.height, fibK*rad, fibK*rad);
  
    canvas.strokeWeight(strokeSize*5);
    color3.display(canvas.width, canvas.height, fibK*rad, fibK*rad);
    
    
    
    
    //canvas.fill(255, 0, 255);
    //canvas.triangle((canvas.width / 2)-200, (canvas.height / 2),canvas.width / 2, canvas.height / 2,(canvas.width / 2)+200, (canvas.height/2)+200);
    
  canvas.endDraw();
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);
  
  int s = second();  // Values from 0 - 59
  
  //canvas.save("grab.png");
  
  canvas.save("grabC" +s +".tiff");
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

