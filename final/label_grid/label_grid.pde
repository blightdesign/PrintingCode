void setup()
{
  size(1280, 800);
  noStroke();
  background(255);
  smooth();
  
  // create a grid object as a container for our grid variables
  Grid grid  = new Grid(5,  50);  //grid for main folded section
  GridSmall gridSmall = new GridSmall(4, 50); //grid for copy and images
  
  fill(30);
  
  // not we can use that grid object to find placements in the grid
  Row secondRow = grid.rows[1];
  //rect(secondRow.x, secondRow.y, secondRow.w, secondRow.h / 2);
  
  // look how nice it is!
  Row fourthRow = grid.rows[3];
  Row fifthRow = grid.rows[4];
 // ellipseMode(CORNER);
 // ellipse(fourthRow.x, (fourthRow.y + fourthRow.h) - (fourthRow.w + fifthRow.w), fourthRow.w + fifthRow.w, fourthRow.w + fifthRow.w);
  
  // we can even implement a function that draws the grid for us
  grid.display();
  //strokeWeight(3);
  gridSmall.display();
  
  //saveFrame("grab.png");
}

