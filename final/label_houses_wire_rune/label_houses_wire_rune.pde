// Label for Mobile Homes

House houseA; House houseB; House houseC; House houseD; House houseE;

import toxi.geom.*;
PImage img;

  int hTextColor =   0; //Color for text with Red background
  int sTextColor =   0; //Color for text with Red background
  int bTextColor =   0; //Color for text with Red background
  
  
  // Used for Reference
//  img = loadImage("label_stamped_med.jpg");
//  image(img, 0,0);
  
  float unit = .75; // Controls the size of everything
  
  int rRing = 18; //Radius of ring
  int rHook = 12; //radius of hook
  
  int pointNum = 8; //number of points along the wire, DO NOT Change
  
  int pointWidth  = 85; // distance between pointNum on first wire
  int pointWidth2 = 75; // distance between pointNum on second wire
  int pointWidth3 = 55; // distance between pointNum on third wire
  int pointWidth4 = 45; // distance between pointNum on fourth wire
  
  

void setup() 
{
  size(1200, 800);
  background(255); 
  colorMode(HSB, 360, 100, 100);
  smooth();
  noFill();
  strokeWeight(3);
  
  stroke(hTextColor, sTextColor, bTextColor);
  translate(500,300); //This moves the whole assembly
  
  //---------------------------------------------------------------------------------------------------------------
  //Set Points
  //Wire 1
  ArrayList<Vec2D> points = new ArrayList();
  for (int i = 0; i < pointNum; i++)
  {
    float x = i * pointWidth;
    float y = 0;
    if (i == 1  || i == 6){
      y= -60;
    }
    if (i == 2 || i == 5){
      y = - 90;
    }
    if (i == 3 || i == 4){
      y = - 105;
    }
    Vec2D p = new Vec2D(x, y);
    points.add(p);
  }
  //Wire 2
  ArrayList<Vec2D> points2 = new ArrayList();
  for (int i = 0; i < pointNum; i++)
  {
    float x = i * pointWidth2;
    float y = 0;
    if (i == 1  || i == 6){
      y= -60;
    }
    if (i == 2 || i == 5){
      y = - 90;
    }
    if (i == 3 || i == 4){
      y = - 105;
    }
    Vec2D p2 = new Vec2D(x, y);
    points2.add(p2);
  }
  //Wire 3
  ArrayList<Vec2D> points3 = new ArrayList();
  for (int i = 0; i < pointNum; i++)
  {
    float x = i * pointWidth3;
    float y = 0;
    if (i == 1  || i == 6){
      y= -30;
    }
    if (i == 2 || i == 5){
      y = - 50;
    }
    if (i == 3 || i == 4){
      y = - 60;
    }
    Vec2D p3 = new Vec2D(x, y);
    points3.add(p3);
  }
  //Wire 4
  ArrayList<Vec2D> points4 = new ArrayList();
  for (int i = 0; i < pointNum; i++)
  {
    float x = i * pointWidth4;
    float y = 0;
    if (i == 1  || i == 6){
      y= -30;
    }
    if (i == 2 || i == 5){
      y = - 50;
    }
    if (i == 3 || i == 4){
      y = - 60;
    }
    Vec2D p4 = new Vec2D(x, y);
    points4.add(p4);
  }
  
  //---------------------------------------------------------------------------------------------------------------
  //First Wire
  Vec2D s = points.get(0); //Hooks to second wire
  Vec2D q = points.get(2); //Gets string line
  Vec2D t = points.get(7); //Gets House A
  
  drawIt(points, s, q, t);
  pushMatrix();
    translate(0, -(rRing/2));
    line(q.x,q.y-(rRing/2)+(2*unit),q.x,q.y-500*unit);  //string line goes off screen 
  popMatrix();
  //Draw House
  fill(hTextColor, sTextColor, bTextColor);
  houseA = new House(t.x+(rHook/2), t.y+(rHook), unit, 1);
  houseA.displayHouse2();
  noFill();
  
  //---------------------------------------------------------------------------------------------------------------
  //Second Wire
  Vec2D s2 = points2.get(0); //Gets a house
  Vec2D q2 = points2.get(5); //Hooks to first wire
  Vec2D t2 = points2.get(7); //Hooks to thrid wire
  
  translate((s.x-(q2.x+rHook)),(s.y-(q2.y-rRing-(rHook/2))));
  drawIt(points2, s2, q2, t2);
  //Draw House
  fill(hTextColor, sTextColor, bTextColor);
  houseB = new House(s2.x-(rHook/2), s2.y+(rHook), unit, 1);
  houseB.displayHouse1();
  noFill();
  
  //---------------------------------------------------------------------------------------------------------------
  //Third Wire
  Vec2D s3 = points3.get(0); //Hooks to fourth wire
  Vec2D q3 = points3.get(3); //Hooks to second wire
  Vec2D t3 = points3.get(7); //Gets a house
  
  translate((t2.x-(q3.x)+rHook),(t2.y-(q3.y-rRing-(rHook/2))));
  drawIt(points3, s3, q3, t3);
  //Draw House
  fill(hTextColor, sTextColor, bTextColor);
  houseC = new House(t3.x+(rHook/2), t3.y+(rHook), unit, 1);
  houseC.displayHouse2();
  noFill();
  
  //---------------------------------------------------------------------------------------------------------------
  //Fourth Wire
  Vec2D s4 = points4.get(0); //Gets a house
  Vec2D q4 = points4.get(3); //Hooks to third wire
  Vec2D t4 = points4.get(7); //Gets a house
  
  translate((s3.x-(q4.x)-rHook),(s3.y-(q4.y-rRing-(rHook/2))));
  drawIt(points4, s4, q4, t4);
  //Draw House
  fill(hTextColor, sTextColor, bTextColor);
  houseD = new House(s4.x-(rHook/2), s4.y+(rHook), unit, 1);
  houseD.displayHouse2();  
  houseE = new House(t4.x+(rHook/2), t4.y+(rHook), unit, 1);
  houseE.displayHouse1();
  noFill();
}

void drawIt(ArrayList<Vec2D> points, Vec2D s, Vec2D q, Vec2D t)
{
  pushMatrix();
    translate(-(rHook/2),(rHook/2));
    arc((s.x), (s.y), rHook, rHook, radians(330), radians(360));
    arc((s.x), (s.y), rHook, rHook, radians(0),   radians(230));
  popMatrix();
  //Ring
  pushMatrix();
    translate(0, -(rRing/2));
    ellipse(q.x, q.y, rRing, rRing);
  popMatrix();
  //Hook Right
  pushMatrix();
    translate((rHook/2),(rHook/2));
    arc((t.x), (t.y), rHook, rHook, radians(0),   radians(230));
    arc((t.x), (t.y), rHook, rHook, radians(330), radians(360));
  popMatrix();
  //Draw the wire
  Spline2D spline = new Spline2D(points);
  ArrayList<Vec2D> morePoints = (ArrayList) spline.getDecimatedVertices(50, false);
  beginShape();
  vertex(s.x, s.y);
  for(int i = 0; i < morePoints.size(); i++) 
  {
    Vec2D p = morePoints.get(i);
    vertex(p.x + random(2), p.y + random(2));
    //vertex(p.x, p.y);
  }
  vertex(t.x, t.y);
  endShape();
}
