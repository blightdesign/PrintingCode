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
  
  // create a grid object as a container for our grid variables
  ModularGrid grid  = new ModularGrid(2, 2, 60, 5);  //Modular Grid for the text
  ModularGrid grid2 = new ModularGrid(cols, rows, 0, 60);  //Modular Grid for the colors   // Keep gutter at zero for colors
  ModularGrid grid3 = new ModularGrid(1,1,0,0);
  
  // Text Module in upper right corner
  textSize(300);
  textAlign(RIGHT,TOP);
  String c = "red";
  
  Module textModule = grid.modules[1][0];
  
  // Random location for the 3 color modules
  int ranTopX = round(random(2, cols/2));
  int ranTopY = round(random(0, 1));
  int ranMidX = round(random(cols/5, cols-1));
  int ranMidY = round(random(rows/8, rows-2));
  int ranBotX = round(random(0, cols-1));
  int ranBotY = round(random(cols/2, rows-1));
  
  Module topColor    = grid2.modules[ranTopX][0];
  Module midColor    = grid2.modules[ranMidX][ranMidY];
  Module botColor    = grid2.modules[ranBotX][ranBotY];
  
  fill(0);
  
  fill(255,255,0,25);
  rect(botColor.x, botColor.y,botColor.w*(round(random(2, cols/2))), botColor.h*(round(random(2, rows/2))));
  fill(255,255,0,100);
  rect(midColor.x, midColor.y,midColor.w*(round(random(2, cols-3))), midColor.h*(round(random(2, 4))));
  fill(255,255,0,255);
  rect(topColor.x, topColor.y,topColor.w*(round(random(cols/2, cols-1))), topColor.h*(round(random(2, 4))));
  
  fill(255,255,255);  // text should match background color
  text(c, textModule.x, textModule.y, textModule.w, textModule.h);
  
  
  
  // we can even implement a function that draws the grid for us
  //grid.display();
  //grid2.display();
  //grid3.display();
  
  Module borderTrim = grid3.modules[0][0];  // cleans up any spill over
  strokeWeight(60);
  stroke(255,255,255);
  noFill();
  rect(borderTrim.x,borderTrim.y,borderTrim.w,borderTrim.h);
}

