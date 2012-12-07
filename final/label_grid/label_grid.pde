import geomerative.*;
import org.apache.batik.svggen.font.table.*;
import org.apache.batik.svggen.font.*;

House houseA; House houseB; House houseC; House houseD; House houseE; House houseF; House houseG;
Logo myLogo;

import toxi.geom.*;

//WIRE VARIABLES

  float unitMobile = .28; // this controls size of mobile
  float rRing = 18*unitMobile; //Radius of ring
  float rHook = 12*unitMobile; //radius of hook

void setup()
{
  //size(1100, 1225);  //10 inches by 11.25 inches plus page margins
  size(550,638);
  noStroke();
  
  colorMode(HSB, 360, 100, 100);
  background(0,0,100);
  smooth();
  
  float unit = .75;  //this variable changes the scale of objects in the sketch
  float smallFontSize =25;  //Logo size variable
  
  float pageMargin = 50/2; //if this changes the size of the sketch must change accordingly
  float heightSmall = 125/2;
  float heightMed = 275/2;
  float heightBig = 325/2;
  
  float border = 32/2;  //border size for title, copy, logo grid
  float pageMargin2 = pageMargin+(border);
  float heightOne = heightMed+heightSmall;
  float heightTwo = heightBig;
  float heightThree = heightSmall;
  float heightFour = heightMed-(2*border);
  
// --------------------------------------------------------------------------------
//WIRE VARIABLES
  
  int pointNum = 8; //number of points along the wire, DO NOT Change
  
  float pointWidth  = 85*unitMobile; // distance between pointNum on first wire
  float pointWidth2 = 75*unitMobile; // distance between pointNum on second wire
  float pointWidth3 = 55*unitMobile; // distance between pointNum on third wire
  float pointWidth4 = 45*unitMobile; // distance between pointNum on fourth wire

// --------------------------------------------------------------------------------  
//FONTS
  int fontSize = 10;  //size of copy text
  int fontTitleSize = 20; //size of title text
  
  RG.init(this);  // initialize the geomerative library
  RFont font = new RFont("FreeSans.ttf", fontSize, RFont.LEFT);  // create a new font for text
  RFont fontTitle = new RFont("FreeSans.ttf", fontTitleSize, RFont.LEFT);  // create a new font for Title
  RCommand.setSegmentLength(11);// tell library we want 11px between each point on the font path
  // tell the library that the points should have same distance
  //RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
  //RCommand.setSegmentator(RCommand.UNIFORMSTEP);
  //RCommand.setSegmentator(RCommand.ADAPTATIVE);  

// --------------------------------------------------------------------------------
//COLORS
//RED HOUSES
  int hBGColor =     1; //Color for Red background
  int sBGColor =    82; //Color for Red background
  int bBGColor =    80; //Color for Red background
  int hBGColor2 =    1; //Color for Red background
  int sBGColor2 =   82; //Color for Red background
  int bBGColor2 =   76; //Color for Red background
  int hTextColor =   0; //Color for text with Red background
  int sTextColor =   0; //Color for text with Red background
  int bTextColor = 99; //Color for text with Red background
  int hLogoColor =   0; //Color for Logo with Red Background
  int sLogoColor =   0; //Color for Logo with Red Background
  int bLogoColor = 99; //Color for Logo with Red Background
//NATURAL WOOD HOUESES
//  int hBGColor =    27; //Color for Natural Wood Color background
//  int sBGColor =    15; //Color for Natural Wood Color background
//  int bBGColor =    90; //Color for Natural Wood Color background
//  int hBGColor2 =   27; //Color for Natural Wood Color background
//  int sBGColor2 =   15; //Color for Natural Wood Color background
//  int bBGColor2 =   97; //Color for Natural Wood Color background
//  int hTextColor =   0; //Color for text with Natural Wood Color background
//  int sTextColor =   0; //Color for text with Natural Wood Color background
//  int bTextColor =  20; //Color for text with Natural Wood Color background
//  int hLogoColor =   0; //Color for Logo with Natural Wood Color background
//  int sLogoColor =   0; //Color for Logo with Natural Wood Color background
//  int bLogoColor =  20; //Color for Logo with Natural Wood Color background
 
  // create a grid object as a container for our grid variables
  Grid grid  = new Grid(5, pageMargin, heightSmall, heightMed, heightBig);  //grid for main folded sections
  GridSmall gridSmall = new GridSmall(4, pageMargin2, heightOne, heightTwo, heightThree, heightFour); //grid for copy and images
  
  // grid objects for cut and fold lines
  Row firstRow = grid.rows[0];
  Row secondRow = grid.rows[1];
  Row thirdRow = grid.rows[2];
  Row fourthRow = grid.rows[3];
  Row fifthRow = grid.rows[4];
  
//  --------------------------------------------------------------------------------
//BACKGROUND COLOR
  fill(hBGColor, sBGColor, bBGColor);
  rect(firstRow.x-(pageMargin/4), firstRow.y-(pageMargin/4), firstRow.w+(pageMargin/2), firstRow.h+secondRow.h+thirdRow.h+fourthRow.h+fifthRow.h+(pageMargin/2));
  
// --------------------------------------------------------------------------------
//GIANT BACKGROUND HOUSE
  fill(hBGColor2, sBGColor2, bBGColor2);
  houseG = new House(firstRow.w/2+pageMargin, (firstRow.h/6)+pageMargin, unit*7, 0);
  houseG.displayHouse2();
  
//  --------------------------------------------------------------------------------
//GRID LINES for cutting and folding
  stroke(1);
  stroke(359, 100, 40);

  line(firstRow.x-pageMargin, firstRow.y, firstRow.x-(pageMargin/2), firstRow.y);
  line(firstRow.w+(1.5*pageMargin), firstRow.y, firstRow.w+(2*pageMargin), firstRow.y);
  
  line(secondRow.x-pageMargin, secondRow.y, secondRow.x-(pageMargin/2), secondRow.y);
  line(secondRow.w+(1.5*pageMargin), secondRow.y, secondRow.w+(2*pageMargin), secondRow.y);
  
  line(thirdRow.x-pageMargin, thirdRow.y, thirdRow.x-(pageMargin/2), thirdRow.y);
  line(thirdRow.w+(1.5*pageMargin), thirdRow.y, thirdRow.w+(2*pageMargin), thirdRow.y);
  
  line(fourthRow.x-pageMargin, fourthRow.y, fourthRow.x-(pageMargin/2), fourthRow.y);
  line(fourthRow.w+(1.5*pageMargin), fourthRow.y, fourthRow.w+(2*pageMargin), fourthRow.y);
  
  line(fifthRow.x-pageMargin, fifthRow.y, fifthRow.x-(pageMargin/2), fifthRow.y);
  line(fifthRow.w+(1.5*pageMargin), fifthRow.y, fifthRow.w+(2*pageMargin), fifthRow.y);
  
  line(fifthRow.x-pageMargin, fifthRow.y+fifthRow.h, fifthRow.x-(pageMargin/2), fifthRow.y+fifthRow.h);
  line(fifthRow.w+(1.5*pageMargin), fifthRow.y+fifthRow.h, fifthRow.w+(2*pageMargin), fifthRow.y+fifthRow.h);
  
  line(pageMargin, 0, pageMargin, pageMargin/2);
  line(firstRow.w+pageMargin, 0, firstRow.w+pageMargin, pageMargin/2);
  
  line(pageMargin, pageMargin+firstRow.h+secondRow.h+thirdRow.h+fourthRow.h+fifthRow.h+(pageMargin/2), pageMargin, pageMargin+firstRow.h+secondRow.h+thirdRow.h+fourthRow.h+fifthRow.h+pageMargin);
  line(width-pageMargin, pageMargin+firstRow.h+secondRow.h+thirdRow.h+fourthRow.h+fifthRow.h+(pageMargin/2), width-pageMargin, pageMargin+firstRow.h+secondRow.h+thirdRow.h+fourthRow.h+fifthRow.h+pageMargin);
  
//  --------------------------------------------------------------------------------
// TITLE COPY, BLURB, SIDE HOUSES, LOGO
  fill(hTextColor, sTextColor, bTextColor);
  stroke(hTextColor, sTextColor, bTextColor);
  
// FRONT OF LABEL
  Row frontModule = gridSmall.rows[1];
  pushMatrix();
    translate(frontModule.x, frontModule.y+fontTitleSize-6); //the 6 is there for fine tuning
    fontTitle.draw("MOBILE HOMES");
  popMatrix();
  
// SIDE OF LABEL
  Row sideModule = gridSmall.rows[2];
  houseF = new House(sideModule.x+border, sideModule.y, unit*.4, 0);
  houseF.displayHouse1();
  
// BACK OF LABEL
  Row backModule = gridSmall.rows[3];
  pushMatrix();
    translate(backModule.x, backModule.y+fontSize);
    font.draw("Mobile Homes - mobile made of small wooden houses, who doesn't love a bad pun?");  //Add Line Break?
    translate(0, fontSize);
    font.draw("Designed and built by your friend Ben Light in New York City.");
    translate(0, fontSize);
    font.draw("www.blightdesign.com");
  popMatrix();

//  pushMatrix();
//    translate(backModule.x, backModule.y + backModule.h-border);
//    font.draw("Print: ___ of 21");
//  popMatrix();
  fill(hLogoColor, sLogoColor, bLogoColor);
  myLogo = new Logo(backModule.w+border, backModule.y+backModule.h-(1.19*smallFontSize), smallFontSize);
  myLogo.displayLogo();
  
//  --------------------------------------------------------------------------------
// WIRES
  stroke(hTextColor, sTextColor, bTextColor);
  noFill();
  pushMatrix();
  translate((.61*firstRow.w)+pageMargin, firstRow.h+secondRow.h+(.25*thirdRow.h)+pageMargin); //This moves the whole assembly
  
//Set Points
  //Wire 1
  ArrayList<Vec2D> points = new ArrayList();
  for (int i = 0; i < pointNum; i++)
  {
    float x = i * pointWidth;
    float y = 0;
    if (i == 1  || i == 6){
      y= -60*unitMobile;
    }
    if (i == 2 || i == 5){
      y = - 90*unitMobile;
    }
    if (i == 3 || i == 4){
      y = - 105*unitMobile;
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
      y= -60*unitMobile;
    }
    if (i == 2 || i == 5){
      y = - 90*unitMobile;
    }
    if (i == 3 || i == 4){
      y = - 105*unitMobile;
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
      y= -30*unitMobile;
    }
    if (i == 2 || i == 5){
      y = - 50*unitMobile;
    }
    if (i == 3 || i == 4){
      y = - 60*unitMobile;
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
      y= -30*unitMobile;
    }
    if (i == 2 || i == 5){
      y = - 50*unitMobile;
    }
    if (i == 3 || i == 4){
      y = - 60*unitMobile;
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
    line(q.x,q.y-(rRing/2)+(2*unitMobile),q.x,q.y-1000*unitMobile);  //string line goes off screen 
  popMatrix();
  //Draw House
  fill(hTextColor, sTextColor, bTextColor);
  houseA = new House(t.x+(rHook/2), t.y+(rHook), unitMobile, 1);
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
  houseB = new House(s2.x-(rHook/2), s2.y+(rHook), unitMobile, 1);
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
  houseC = new House(t3.x+(rHook/2), t3.y+(rHook), unitMobile, 1);
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
  houseD = new House(s4.x-(rHook/2), s4.y+(rHook), unitMobile, 1);
  houseD.displayHouse2();  
  houseE = new House(t4.x+(rHook/2), t4.y+(rHook), unitMobile, 1);
  houseE.displayHouse1();
  noFill();
  popMatrix();
//  --------------------------------------------------------------------------------
// DISPLAY GRID LINES (turn off before printing)
  grid.display();  //Fold and cutline grid
  //gridSmall.display(); //
  //saveFrame("grab.png");
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

