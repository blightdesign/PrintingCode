void setup()
{
  size(1280, 800);
  smooth();
  strokeWeight(1);
  stroke(30);
 
  PVector myLine = new PVector(300,500);
  PVector leftLine = new PVector(50,50);
  PVector topLine = new PVector(300,0);
  PVector rightLine = new PVector(350,500);
  PVector botLine = new PVector(100,550);
  
  //line(0,0,myLine.x,myLine.y);
  
  line(leftLine.x,leftLine.y,topLine.x,topLine.y);
  line(topLine.x,topLine.y,rightLine.x,rightLine.y);
  line(rightLine.x,rightLine.y,botLine.x,botLine.y);
  line(botLine.x, botLine.y, leftLine.x,leftLine.y);
  
  translate(400,0);
  
  fill(50,50,50,50);
  triangle(leftLine.x,leftLine.y,topLine.x,topLine.y,rightLine.x,rightLine.y);
  fill(175,175,175,50);
  triangle(botLine.x,botLine.y,leftLine.x,leftLine.y,topLine.x,topLine.y);
  noFill();
  triangle(botLine.x,botLine.y,topLine.x,topLine.y,rightLine.x,rightLine.y);
  
  translate(400,0);
  
  leftLine.mult(0.5);
  rightLine.mult(.75);
  fill(50,50,50,50);
  triangle(leftLine.x,leftLine.y,topLine.x,topLine.y,rightLine.x,rightLine.y);
  fill(175,175,175,50);
  triangle(botLine.x,botLine.y,leftLine.x,leftLine.y,topLine.x,topLine.y);
  noFill();
  triangle(botLine.x,botLine.y,topLine.x,topLine.y,rightLine.x,rightLine.y);
  
}
