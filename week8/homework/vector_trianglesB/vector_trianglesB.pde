void setup()
{
  size(1280, 800);
  smooth();
  strokeWeight(1);
  stroke(30);
 
  PVector leftLine = new PVector(50,50);
  PVector topLine = new PVector(300,0);
  PVector rightLine = new PVector(350,500);
  PVector botLine = new PVector(100,550);
  
  PVector leftLineB = new PVector(300,0);  //same as topLine
  PVector topLineB = new PVector(300+100,0);
  PVector rightLineB = new PVector(350+100,500);
  PVector botLineB = new PVector(350,500);  //same as rightLine
  
  fill(50,50,50,50);
  triangle(leftLine.x,leftLine.y,topLine.x,topLine.y,rightLine.x,rightLine.y);
  fill(175,175,175,50);
  triangle(botLine.x,botLine.y,leftLine.x,leftLine.y,topLine.x,topLine.y);
  noFill();
  triangle(botLine.x,botLine.y,topLine.x,topLine.y,rightLine.x,rightLine.y);
  
  fill(50,50,50,50);
  triangle(leftLineB.x,leftLineB.y,topLineB.x,topLineB.y,rightLineB.x,rightLineB.y);
  fill(175,175,175,50);
  triangle(botLineB.x,botLineB.y,leftLineB.x,leftLineB.y,topLineB.x,topLineB.y);
  noFill();
  triangle(botLineB.x,botLineB.y,topLineB.x,topLineB.y,rightLineB.x,rightLineB.y);
  
//  translate(400,0);
//  
//  leftLine.mult(0.5);
//  rightLine.mult(.75);
//  fill(50,50,50,50);
//  triangle(leftLine.x,leftLine.y,topLine.x,topLine.y,rightLine.x,rightLine.y);
//  fill(175,175,175,50);
//  triangle(botLine.x,botLine.y,leftLine.x,leftLine.y,topLine.x,topLine.y);
//  noFill();
//  triangle(botLine.x,botLine.y,topLine.x,topLine.y,rightLine.x,rightLine.y);
  
}
