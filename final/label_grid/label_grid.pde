import geomerative.*;
import org.apache.batik.svggen.font.table.*;
import org.apache.batik.svggen.font.*;

House houseA; House houseB; House houseC; House houseD; House houseE; House houseF; House houseG;
Logo myLogo;

void setup()
{
  //size(1100, 1225);  //10 inches by 11.25 inches plus page margins
  size(550,638);
  noStroke();
  
  colorMode(HSB, 360, 100, 100);
  background(0,0,100);
  smooth();
  
  float unit = .75;  //this variable changes the scale of objects in the sketch
  float smallFontSize =50;  //Logo size variable
  
  float pageMargin = 50/2; //if this changes the size of the sketch must change accordingly
  float heightSmall = 125/2;
  float heightMed = 275/2;
  float heightBig = 325/2;
  
  float border = 32/2;  //border size for title, copy, logo grid
  float pageMargin2 = (50/2)+(border);
  float heightOne = heightMed+heightSmall;
  float heightTwo = heightBig;
  float heightThree = heightSmall;
  float heightFour = heightMed-(2*border);

// --------------------------------------------------------------------------------  
//FONTS
  int fontSize = 10;  //size of copy text
  int fontTitleSize = 30; //size of title text
  
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
//  int hBGColor =     1; //Color for Red background
//  int sBGColor =    82; //Color for Red background
//  int bBGColor =    80; //Color for Red background
//  int hBGColor2 =     1; //Color for Red background
//  int sBGColor2 =    82; //Color for Red background
//  int bBGColor2 =    76; //Color for Red background
//  int hBGColor =     2; //Color for Red background
//  int sBGColor =    79; //Color for Red background
//  int bBGColor =    85; //Color for Red background
//  int hBGColor =     3; //Color for Red background
//  int sBGColor =    87; //Color for Red background
//  int bBGColor =    74; //Color for Red background
//  int hBGColor =     4; //Color for Red background
//  int sBGColor =    79; //Color for Red background
//  int bBGColor =    65; //Color for Red background
//  int hTextColor =   0; //Color for text with Red background
//  int sTextColor =   0; //Color for text with Red background
//  int bTextColor = 100; //Color for text with Red background
//  int hLogoColor =   0; //Color for Logo with Red Background
//  int sLogoColor =   0; //Color for Logo with Red Background
//  int bLogoColor = 100; //Color for Logo with Red Background
  int hBGColor =    27; //Color for Natural Wood Color background
  int sBGColor =    15; //Color for Natural Wood Color background
  int bBGColor =    90; //Color for Natural Wood Color background
//  int hBGColor =    26; //Color for Natural Wood Color background
//  int sBGColor =    36; //Color for Natural Wood Color background
//  int bBGColor =    94; //Color for Natural Wood Color background
//  int hBGColor =    34; //Color for Natural Wood Color background
//  int sBGColor =    24; //Color for Natural Wood Color background
//  int bBGColor =    78; //Color for Natural Wood Color background
//  int hBGColor =    36; //Color for Natural Wood Color background
//  int sBGColor =    22; //Color for Natural Wood Color background
//  int bBGColor =    78; //Color for Natural Wood Color 
  int hBGColor2 =    27; //Color for Natural Wood Color background
  int sBGColor2 =    15; //Color for Natural Wood Color background
  int bBGColor2 =    97; //Color for Natural Wood Color background
  int hTextColor =   0; //Color for text with Natural Wood Color background
  int sTextColor =   0; //Color for text with Natural Wood Color background
  int bTextColor =   0; //Color for text with Natural Wood Color background
  int hLogoColor =   0; //Color for Logo with Natural Wood Color background
  int sLogoColor =   0; //Color for Logo with Natural Wood Color background
  int bLogoColor =   0; //Color for Logo with Natural Wood Color background
 
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
  String title = "MOBILE HOMES";
  String copyText = "Mobile Homes - mobile made of small wooden houses, who doesn't love a bad pun?  Designed and built by your friend Ben Light in New York City.  www.blightdesign.com";
  String printNum = "Print: ___ of 21";

  fill(hTextColor, sTextColor, bTextColor);
  stroke(hTextColor, sTextColor, bTextColor);
  
// FRONT OF LABEL
  Row frontModule = gridSmall.rows[1];
  text(title, frontModule.x, frontModule.y, frontModule.w-border, frontModule.h-border);
  pushMatrix();
    translate(frontModule.x, frontModule.y);
    fontTitle.draw("MOBILE HOMES");
  popMatrix();
  
// SIDE OF LABEL
  Row sideModule = gridSmall.rows[2];
  houseF = new House(sideModule.x+border, sideModule.y, unit/2, 0);
  houseF.displayHouse1();
  
// BACK OF LABEL
  Row backModule = gridSmall.rows[3];
  text(copyText, backModule.x, backModule.y, (backModule.w/2)-border, backModule.h-border);
  pushMatrix();
    translate(backModule.x, backModule.y);
    font.draw("Mobile Homes - mobile made of small wooden houses, who doesn't love a bad pun?");
  popMatrix();
  text(printNum, backModule.x, backModule.y + backModule.h-border, backModule.w-border, backModule.h-border);
  pushMatrix();
    translate(backModule.x, backModule.y + backModule.h-border);
    font.draw("Print: ___ of 21");
  popMatrix();
  fill(hLogoColor, sLogoColor, bLogoColor);
  myLogo = new Logo(backModule.w-border, backModule.y+backModule.h-(1.19*smallFontSize), smallFontSize);
  myLogo.displayLogo();
  
//  --------------------------------------------------------------------------------
// DISPLAY GRID LINES (turn off before printing)
  grid.display();  //Fold and cutline grid
  //gridSmall.display(); //
  //saveFrame("grab.png");
}

