import toxi.util.datatypes.*;

float noiseVal;
float noiseScale=0.005;

void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(0,0,100); 
  smooth();
  
  int sectionNum = 9;
  int unit = 25;

  // loop through every pixel on the screen to create natural background color
  for (int y = 0; y < height; y++) 
  {
    for (int x = 0; x < width; x++) 
    {
      noiseDetail(15,.6);
      noiseVal = noise((x) * noiseScale, (y) * noiseScale);
      //stroke(52, 6, 75 + (noiseVal*60));  //darker background
      //stroke(40, 1, 75 + (noiseVal*60));    //lighter background
      stroke(48, 5, 77 + (noiseVal*60));  //middle background
      point(x,y);
    }
  }

  //Weighted Random color pallets
  WeightedRandomSet<Kolor> kolors = new WeightedRandomSet<Kolor>();
  // colorA, colorB, alpha percentage
  kolors.add(new Kolor(1, #192902, #5F9D47, 180), 4);
  kolors.add(new Kolor(1, #855D05, #FAE824, 180), 3);
  kolors.add(new Kolor(1, #450304, #DA2709, 180), 2);
  kolors.add(new Kolor(1, #637A88, #FDFBFC, 180), 2);
  
  //Coordinates for the firsttriangles section
  int leftXT =  -50;
  int leftYT =   50;
  int leftXB = -100;
  int leftYB =  300;
  int rightXT = 150;
  int rightYT =  10;
  int rightXB = 130;
  int rightYB = 350;
  
  PVector leftTop  = new PVector( leftXT,  leftYT);    //Left Top of section
  PVector rightTop = new PVector(rightXT, rightYT);    //Right Top of section
  PVector leftBot  = new PVector( leftXB,  leftYB);    //Left Bottom of Section
  PVector rightBot = new PVector(rightXB, rightYB);    //Right Bottom of section

  pushMatrix();
  translate (0,height/4);
  
  // triangles sections loop
  for (int i = 0; i < sectionNum + 1; i++)
  {
    noFill();
    stroke(#AEAEAE);
    line(rightBot.x,rightBot.y,leftBot.x,leftBot.y);
    noStroke();
    Kolor kol = kolors.getRandom();
    kol.kolorA();  // fills with color A from weighted random pick
    triangle(leftBot.x,leftBot.y,leftTop.x,leftTop.y,rightTop.x,rightTop.y);
    kol.kolorB();  // fills with color B from weighted random pick
    triangle(leftTop.x,leftTop.y,rightTop.x,rightTop.y,rightBot.x,rightBot.y);
    
    PVector v1 = new PVector(0.0, 0.0);
    PVector v2 = new PVector(0.0, 0.0);
    v1.set(rightBot);
    v2.set(rightTop);
    
    if (i==0)
    {
      rightTop.mult(1.3);
      rightBot.mult(1.3);
      //translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==1)
    {
      rightTop.mult(.8);
      rightBot.mult(.8);
      //translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==2)
    {
      rightTop.mult(1);
      rightBot.mult(1);
      //translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==3)
    {
      rightTop.mult(1.5);
      rightBot.mult(1.5);
      translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      //translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==4)
    {
      rightTop.mult(.5);
      rightBot.mult(.5);
      translate((v1.x-rightBot.x),(v1.y-rightBot.y));
     // translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==7)
    {
      rightTop.mult(1.2);
      rightBot.mult(1.2);
      //translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==8)
    {
      rightTop.mult(.8);
      rightBot.mult(.8);
      //translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    
    //Set left vectors to right vectors
    leftTop.set(rightTop);
    leftBot.set(rightBot);
    
    //Get new random vectors
    PVector stepTop = new PVector(random(50,150),random(-25,30));
    PVector stepBot = new PVector(random(50,170),random(-25,30));
    
    //Set right vectors to new vectors
    rightTop.add(stepTop);
    rightBot.add(stepBot);
  }
  popMatrix();

}
