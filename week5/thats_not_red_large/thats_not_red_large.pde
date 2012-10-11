/*  Properties
_________________________________________________________________ */

PGraphics canvas;
int canvas_width = 4961;
int canvas_height = 3508;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

/*  Setup
_________________________________________________________________ */

void setup()
{ 
  size(1280, 800);
  background(30);
  
  canvas = createGraphics(canvas_width, canvas_height, JAVA2D);
  
  calculateResizeRatio();
  
  canvas.beginDraw();
    canvas.colorMode(HSB, 360, 100, 100,100);
    canvas.background(360);
    canvas.smooth();
    canvas.noStroke();
    
    //GRID SETTINGS
    int cols = 10;
    int rows = 8;
    
    int grid2Margin = 240;  //80// Also the size of white border - bit of a cheat
    int grid3Margin = 30;
  
    // create multiple grid objects as a container for our grid variables
    ModularGrid grid  = new ModularGrid(2, 2, 60, 25);  //Modular Grid for the text
    ModularGrid grid2 = new ModularGrid(cols, rows, 0, grid2Margin);  //Modular Grid for the colors   // Keep gutter at zero for colors
    ModularGrid grid3 = new ModularGrid(cols, rows, 0, grid3Margin);  //Modular Grid for the other colors   // Keep gutter at zero for colors
    ModularGrid grid4 = new ModularGrid(1, 1, 0, 0);    // Modular grid for the white border - bit if a cheat
  
    //TEXT SETTINGS
    // Text Module in upper right corner
    canvas.textSize(260);
    canvas.textAlign(RIGHT,TOP);
    String c = "red";
  
    Module textModule = grid.modules[1][0];  // top right corner
  
    //COLOR SETTINGS
    // first we pick a base color
    HSBColor color1 =  new HSBColor(125, 100, 100, 95);  // green
    HSBColor color1B = new HSBColor(130, 100, 100, 85);  // green
    // then we pick two colors with different brightness
    int diff = 30;
    HSBColor color2  = new HSBColor(color1.h, color1.s - 5, color1.b - diff, 95);
    HSBColor color2B = new HSBColor(color1.h, color1.s - 5, color1.b - diff, 85);
    HSBColor color3  = new HSBColor(color2.h, color2.s - 5, color2.b - diff, 95);
    HSBColor color3B = new HSBColor(color2.h, color2.s - 5, color2.b - diff, 85);
  
  
    // Random locations for the 3 color modules
    int ranTopX = round(random(2, cols/2));
    int ranTopY = round(random(0, 1));
    int ranTopXB = round(random(0, cols/4));
    int ranTopYB = round(random(1, 2));
  
    int ranMidX = round(random(cols/5, cols-1));
    int ranMidY = round(random(rows/8, rows-2));
    int ranMidXB = round(random(0, cols/4));
    int ranMidYB = round(random(rows/7, rows-2));
  
    int ranBotX = round(random(0, cols-1));
    int ranBotY = round(random(cols/2, rows-1));
    int ranBotXB = round(random(0, cols/10));
    int ranBotYB = round(random(cols/4, rows-1));
  
    Module topColor    = grid2.modules[ranTopX][0];
    Module midColor    = grid2.modules[ranMidX][ranMidY];
    Module botColor    = grid2.modules[ranBotX][ranBotY];
  
    Module topColorB    = grid3.modules[ranTopXB][ranTopYB];
    Module midColorB    = grid3.modules[ranMidXB][ranMidYB];
    Module botColorB    = grid3.modules[ranBotXB][ranBotYB];
    
    color1.display(round(botColor.x), round(botColor.y),round(botColor.w*(round(random(2, cols/2)))), round(botColor.h*(round(random(2, rows/2)))));
    color1B.display(round(botColorB.x), round(botColorB.y),round(botColorB.w*(round(random(cols/4, cols/2)))), round(botColorB.h*(round(random(rows/4, rows/2)))));
  
    color2.display(round(midColor.x), round(midColor.y),round(midColor.w*(round(random(cols/2, cols-1)))), round(midColor.h*(round(random(0, rows-1)))));
    color2B.display(round(midColorB.x), round(midColorB.y),round(midColorB.w*(round(random(cols/4, cols-2)))), round(midColorB.h*(round(random(rows/4, rows-1)))));
  
    color3.display(round(topColor.x), round(topColor.y),round(topColor.w*(round(random(cols/4, cols-1)))), round(topColor.h*(round(random(3, rows/2)))));
    color3B.display(round(topColorB.x), round(topColorB.y),round(topColorB.w*(round(random(cols/4, cols/2)))), round(topColorB.h*(round(random(3, rows/2)))));
  
  
  
    
    
    Module borderTrim = grid4.modules[0][0];  // cleans up any spill over with white border
    canvas.strokeWeight(grid2Margin);  // must be the same value as grid2's margin
    canvas.stroke(360);// should match background color
    canvas.noFill();
    canvas.rect(borderTrim.x,borderTrim.y,borderTrim.w,borderTrim.h);
  
    canvas.strokeWeight(10);
    // we can even implement a function that draws the grid for us
    grid.display();
    //grid2.display();
    //grid3.display();
    //grid4.display();
 
    canvas.fill(360);  // text should match background color
    PFont font;
    // The font must be located in the sketch's "data" directory to load successfully
    //font = loadFont("Monospaced-200.vlw");
    //font = loadFont("AmericanTypewriter-30.vlw");
    font = loadFont("AmericanTypewriter-Bold-250.vlw");
    //font = loadFont("Courier-Bold-250.vlw");
    //textFont(font, 300);
    canvas.textFont(font,860);
    pushMatrix();
    //canvas.scale(1.2);
    canvas.text(c, textModule.x, textModule.y, textModule.w, textModule.h);
    popMatrix();
  
    
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

