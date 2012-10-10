/* This sketch shows how to draw a modular grid in Processing, using 4 simple variables:
      
      1. Number of Columns
      2. Number of Rows
      3. Gutter size
      4. Page Margin
*/

void setup()
{
  size(1280, 800);
  background(255);
  smooth();
  noStroke();
  
  int cols = 10;
  int rows = 8;
  
  int grid2Margin = 80;
  int grid3Margin = 30;
  
  // create multiple grid objects as a container for our grid variables
  ModularGrid grid  = new ModularGrid(2, 2, 60, 25);  //Modular Grid for the text
  ModularGrid grid2 = new ModularGrid(cols, rows, 0, grid2Margin);  //Modular Grid for the colors   // Keep gutter at zero for colors
  ModularGrid grid3 = new ModularGrid(cols, rows, 0, grid3Margin);  //Modular Grid for the colors   // Keep gutter at zero for colors
  ModularGrid grid4 = new ModularGrid(1,1,0,0);    // Modular grid for the white border
  
  // Text Module in upper right corner
  textSize(300);
  textAlign(RIGHT,TOP);
  String c = "red";
  
  Module textModule = grid.modules[1][0];
  
  // Random location for the 3 color modules
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
  int ranBotXB = round(random(0, cols/4));
  int ranBotYB = round(random(cols/4, rows-1));
  
  Module topColor    = grid2.modules[ranTopX][0];
  Module midColor    = grid2.modules[ranMidX][ranMidY];
  Module botColor    = grid2.modules[ranBotX][ranBotY];
  
  Module topColorB    = grid3.modules[ranTopXB][ranTopYB];
  Module midColorB    = grid3.modules[ranMidXB][ranMidYB];
  Module botColorB    = grid3.modules[ranBotXB][ranBotYB];
  
  fill(0);
  
  fill(255,255,0,25);
  rect(botColor.x, botColor.y,botColor.w*(round(random(2, cols/2))), botColor.h*(round(random(2, rows/2))));
  rect(botColorB.x, botColorB.y,botColorB.w*(round(random(cols/4, cols/2))), botColorB.h*(round(random(rows/4, rows/2))));
  fill(255,255,0,100);
  rect(midColor.x, midColor.y,midColor.w*(round(random(cols/2, cols-1))), midColor.h*(round(random(0, rows-1))));
  rect(midColorB.x, midColorB.y,midColorB.w*(round(random(cols/4, cols-2))), midColorB.h*(round(random(rows/4, rows-1))));
  fill(255,255,0,255);
  rect(topColor.x, topColor.y,topColor.w*(round(random(cols/4, cols-1))), topColor.h*(round(random(3, rows/2))));
  rect(topColorB.x, topColorB.y,topColorB.w*(round(random(cols/4, cols/2))), topColorB.h*(round(random(3, rows/2))));
  
  
  fill(255,255,255);  // text should match background color
  PFont font;
  // The font must be located in the sketch's "data" directory to load successfully
  //font = loadFont("Monospaced-200.vlw");
  //font = loadFont("AmericanTypewriter-30.vlw");
  font = loadFont("Courier-Bold-250.vlw");
  textFont(font, 300);
  text(c, textModule.x, textModule.y, textModule.w, textModule.h);
  
  
  Module borderTrim = grid4.modules[0][0];  // cleans up any spill over with whote border
  strokeWeight(grid2Margin);  // must be the same value as grid2's margin
  stroke(255,255,255);
  noFill();
  rect(borderTrim.x,borderTrim.y,borderTrim.w,borderTrim.h);
  
  strokeWeight(1);
  // we can even implement a function that draws the grid for us
  //grid.display();
  //grid2.display();
  //grid3.display();
  //grid4.display();
}

