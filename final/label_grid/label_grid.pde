House houseA; House houseB; House houseC; House houseD; House houseE; House houseF;
Logo myLogo;

void setup()
{
  //size(1100, 1225);  //10 inches by 11.25 inches plus page margins
  size(550,638);
  //noStroke();
  background(255);
  smooth();
  
  float unit = .75;
  float smallFontSize =50;
  
  float pageMargin = 50/2; //if this changes the size of the sketch must change accordingly
  float heightSmall = 125/2;
  float heightMed = 275/2;
  float heightBig = 325/2;
  
  float border = 32/2;
  float pageMargin2 = (50/2)+(border);
  float heightOne = heightMed+heightSmall;
  float heightTwo = heightBig;
  float heightThree = heightSmall;
  float heightFour = heightMed-(2*border);
  
  // create a grid object as a container for our grid variables
  Grid grid  = new Grid(5, pageMargin, heightSmall, heightMed, heightBig);  //grid for main folded section
  GridSmall gridSmall = new GridSmall(4, pageMargin2, heightOne, heightTwo, heightThree, heightFour); //grid for copy and images
  
  fill(30);
  
  // now we can use that grid object to find placements in the grid
  Row firstRow = grid.rows[0];
  Row secondRow = grid.rows[1];
  Row thirdRow = grid.rows[2];
  Row fourthRow = grid.rows[3];
  Row fifthRow = grid.rows[4];
  
  //rect(firstRow.x, firstRow.y, firstRow.w, firstRow.h);
  //rect(secondRow.x, secondRow.y, secondRow.w, secondRow.h);
  //rect(thirdRow.x, thirdRow.y, thirdRow.w, thirdRow.h);
  //rect(fourthRow.x, fourthRow.y, fourthRow.w, fourthRow.h);
  //rect(fifthRow.x, fifthRow.y, fifthRow.w, fifthRow.h);
  
  //GRID LINES for cutting and folding
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
  
  // TITLE COPY, BLURB, SIDE HOUSES, LOGO
  String title = "MOBILE HOMES";
  String copyText = "Mobile Homes - mobile made of small wooden houses, who doesn't love a bad pun?  Designed and built by your friend Ben Light in New York City.  www.blightdesign.com";
  
  Row frontModule = gridSmall.rows[1];
  text(title, frontModule.x, frontModule.y, frontModule.w-border, frontModule.h-border);
  
  Row sideModule = gridSmall.rows[2];
  houseF = new House(sideModule.x+border, sideModule.y, unit/2, 0);
  houseF.displayHouse1();
  
  Row backModule = gridSmall.rows[3];
  text(copyText, backModule.x, backModule.y, (backModule.w/3)-border, backModule.h-border);
  myLogo = new Logo(backModule.w-border, backModule.y+backModule.h-(1.19*smallFontSize), smallFontSize);
  myLogo.displayLogo();

  
  // we can even implement a function that draws the grid for us
  grid.display();  //Fold and cutline grid
  gridSmall.display();
  //saveFrame("grab.png");
}

