

/* This sketch shows how to draw a modular grid in Processing, using 4 simple variables:
      
      1. Number of Columns
      2. Number of Rows
      3. Gutter size
      4. Page Margin
*/


//GRID SETTINGS
  int cols = 10;
  int rows = 8;
  
  int grid2Margin = 80;  // Also the size of white border - bit of a cheat
  int grid3Margin = 30;
  
  
  
void setup()
{
  size(1280, 800);
  colorMode(HSB, 360,100,100,100);
  background(360);
  smooth();
  noStroke();
  
  
  // create multiple grid objects as a container for our grid variables
  ModularGrid grid  = new ModularGrid(2, 2, 60, 25);  //Modular Grid for the text
  ModularGrid grid2 = new ModularGrid(cols, rows, 0, grid2Margin);  //Modular Grid for the colors   // Keep gutter at zero for colors
  ModularGrid grid3 = new ModularGrid(cols, rows, 0, grid3Margin);  //Modular Grid for the other colors   // Keep gutter at zero for colors
  ModularGrid grid4 = new ModularGrid(1, 1, 0, 0);    // Modular grid for the white border - bit if a cheat
  
  //TEXT SETTINGS
  // Text Module in upper right corner
  textSize(300);
  textAlign(RIGHT,TOP);
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
  
  fill(360);  // text should match background color
  PFont font;
  // The font must be located in the sketch's "data" directory to load successfully
  //font = loadFont("Monospaced-200.vlw");
  //font = loadFont("AmericanTypewriter-30.vlw");
  font = loadFont("AmericanTypewriter-Bold-250.vlw");
  //font = loadFont("Courier-Bold-250.vlw");
  //textFont(font, 300);
  textFont(font,260);
  text(c, textModule.x, textModule.y, textModule.w, textModule.h);
  
  
  Module borderTrim = grid4.modules[0][0];  // cleans up any spill over with white border
  strokeWeight(grid2Margin);  // must be the same value as grid2's margin
  stroke(360);// should match background color
  noFill();
  rect(borderTrim.x,borderTrim.y,borderTrim.w,borderTrim.h);
  
  strokeWeight(1);
  // we can even implement a function that draws the grid for us
  //grid.display();
  //grid2.display();
  //grid3.display();
  //grid4.display();
  
// Click on the window to give it focus,
// and press the 'B' key.


}


// Click on the window to give it focus,
// and press the 'B' key.

void draw() {
  
  ModularGrid grid  = new ModularGrid(2, 2, 60, 25);  //Modular Grid for the text
  ModularGrid grid2 = new ModularGrid(cols, rows, 0, grid2Margin);  //Modular Grid for the colors   // Keep gutter at zero for colors
  ModularGrid grid3 = new ModularGrid(cols, rows, 0, grid3Margin);  //Modular Grid for the other colors   // Keep gutter at zero for colors
  ModularGrid grid4 = new ModularGrid(1, 1, 0, 0);    // Modular grid for the white border - bit if a cheat
  
  if (keyPressed) 
  {
    if (key == '1') 
    {
      strokeWeight(1);
      grid.display();
    }
    if (key == '2') 
    {
      strokeWeight(1);
      grid2.display();
    }
    if (key == '3') 
    {
      strokeWeight(1);
      grid3.display();
    }
    if (key == '4') 
    {
      strokeWeight(grid2Margin);
      grid4.display();
    }
    else 
    {
      grid.displayNone();
    }
  }
  
}
