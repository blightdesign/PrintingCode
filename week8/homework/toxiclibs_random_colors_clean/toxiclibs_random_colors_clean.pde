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
  int unit = 25;  //will be larger number for PGraphic
  int strokeUnit = 1;  //will be larger number for PGraphic

//  // loop through every pixel on the screen to create natural background color
//  for (int y = 0; y < height; y++) 
//  {
//    for (int x = 0; x < width; x++) 
//    {
//      noiseDetail(15,.6);
//      noiseVal = noise((x) * noiseScale, (y) * noiseScale);
//      //stroke(52, 6, 75 + (noiseVal*60));  //darker background
//      //stroke(40, 1, 75 + (noiseVal*60));    //lighter background
//      stroke(48, 5, 77 + (noiseVal*60));  //middle background
//      point(x,y);
//    }
//  }

  //Weighted Random color pallets
  WeightedRandomSet<Kolor> kolors = new WeightedRandomSet<Kolor>();
  // colorA, colorB, alpha percentage
  kolors.add(new Kolor(1, #192902, #5F9D47, 180), 4);
  kolors.add(new Kolor(1, #855D05, #FAE824, 180), 3);
  kolors.add(new Kolor(1, #450304, #DA2709, 180), 2);
  kolors.add(new Kolor(1, #637A88, #FDFBFC, 180), 2);
  
  //Coordinates for the first triangles section
  int leftXT =  -(unit*2);  // -50
  int leftYT =   (unit*2);  //  50
  int leftXB =  -(unit*4);  //-100
  int leftYB =  (unit*12);  // 300
  int rightXT =  (unit*6);  // 150
  int rightYT =  (unit*1);  //  25
  int rightXB =  (unit*5);  // 125
  int rightYB = (unit*14);  // 350
  
  PVector leftTop  = new PVector( leftXT,  leftYT);    //Left Top of section
  PVector rightTop = new PVector(rightXT, rightYT);    //Right Top of section
  PVector leftBot  = new PVector( leftXB,  leftYB);    //Left Bottom of Section
  PVector rightBot = new PVector(rightXB, rightYB);    //Right Bottom of section

  pushMatrix();
  translate (0,height/4);
  
  // triangles sections loop
  for (int i = 0; i < sectionNum + 1; i++)
  {
    noStroke();
    Kolor kol = kolors.getRandom();  //gets weighted random color pallet
    kol.kolorA();  // fills with color A from weighted random pick
    triangle(leftBot.x,leftBot.y,leftTop.x,leftTop.y,rightTop.x,rightTop.y);
    kol.kolorB();  // fills with color B from weighted random pick
    triangle(leftTop.x,leftTop.y,rightTop.x,rightTop.y,rightBot.x,rightBot.y);
    
    PVector v1 = new PVector(0.0, 0.0);
    PVector v2 = new PVector(0.0, 0.0);
    v1.set(rightBot);
    v2.set(rightTop);
    
    float change = random(0.5, 1.2);
    
    if (i==0)
    {
      change = 1.4;
      stroke(#AEAEAE);
      strokeWeight(strokeUnit);  
      line(rightBot.x, rightBot.y, leftBot.x, leftBot.y);
      noStroke();
      rightTop.mult(change);  //1.3
      rightBot.mult(change);  //1.3
      //translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==1)
    {
      change = 0.7;
      //stroke(#AEAEAE);
      //strokeWeight(strokeUnit);  
      //line(rightBot.x, rightBot.y, leftBot.x, leftBot.y);
      //noStroke();
      rightTop.mult(change);  //0.8
      rightBot.mult(change);  //0.8
      //translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==2)
    {
      change = 1.4;
      stroke(#AEAEAE);
      strokeWeight(strokeUnit);  
      line(rightBot.x, rightBot.y, leftBot.x, leftBot.y);
      noStroke();
      rightTop.mult(change);  //1.0
      rightBot.mult(change);  //1.0
      translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      //translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==3)
    {
      change = 0.6;
      stroke(#AEAEAE);
      strokeWeight(strokeUnit);  
      line(rightBot.x, rightBot.y, leftBot.x, leftBot.y);
      noStroke();
      rightTop.mult(change);  //1.5
      rightBot.mult(change);  //1.5
      translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      //translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==4)
    {
      change = 1.0;
      stroke(#AEAEAE);
      strokeWeight(strokeUnit);  
      line(rightBot.x, rightBot.y, leftBot.x, leftBot.y);
      noStroke();
      rightTop.mult(change);  //0.5
      rightBot.mult(change);  //0.5
      //translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==5)
    {
      change = 1.3;
      stroke(#AEAEAE);
      strokeWeight(strokeUnit);  
      line(rightBot.x, rightBot.y, leftBot.x, leftBot.y);
      noStroke();
      rightTop.mult(change);  //0.5
      rightBot.mult(change);  //0.5
      //translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==6)
    {
      change = .5;
//      stroke(#AEAEAE);
//      strokeWeight(strokeUnit);  
//      line(rightBot.x, rightBot.y, leftBot.x, leftBot.y);
//      noStroke();
      rightTop.mult(change);  //0.5
      rightBot.mult(change);  //0.5
      //translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==7)
    {
      change = 1.5;
      stroke(#AEAEAE);
      strokeWeight(strokeUnit);  
      line(rightBot.x, rightBot.y, leftBot.x, leftBot.y);
      noStroke();
      rightTop.mult(change);  //1.2
      rightBot.mult(change);  //1.2
      translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      //translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==8)
    {
      change = 0.6;
      stroke(#AEAEAE);
      strokeWeight(strokeUnit);  
      line(rightBot.x, rightBot.y, leftBot.x, leftBot.y);
      noStroke();
      rightTop.mult(change);  //0.8
      rightBot.mult(change);  //0.8
      translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      //translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==9)
    {
      change = 0.8;
      stroke(#AEAEAE);
      strokeWeight(strokeUnit);  
      line(rightBot.x, rightBot.y, leftBot.x, leftBot.y);
      noStroke();
      rightTop.mult(change);  //0.8
      rightBot.mult(change);  //0.8
      //translate((v1.x-rightBot.x),(v1.y-rightBot.y));
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    
    
//    if (change > 1.0)
//    {
//      stroke(#AEAEAE);
//      strokeWeight(strokeUnit);  
//      line(rightBot.x, rightBot.y, leftBot.x, leftBot.y);
//      noStroke();
//      rightTop.mult(change);  //1.0
//      rightBot.mult(change);  //1.0
//      translate(v1.x-rightBot.x, v1.y-rightBot.y);
//    }
//    else
//    {
//      rightTop.mult(change);  //1.0
//      rightBot.mult(change);  //1.0
//      translate(v2.x-rightTop.x, v2.y-rightTop.y);
//    }
    
    //Set left vectors to right vectors
    leftTop.set(rightTop);
    leftBot.set(rightBot);
    
    //Get new random vectors
    PVector stepTop = new PVector(random((unit*2), (unit*6)),random(-(unit*1), (unit*1)));  // 50,150    -25,25
    PVector stepBot = new PVector(random((unit*2), (unit*7)),random(-(unit*1), (unit*1)));  // 50,175    -25,25
    
    //Set right vectors to new vectors
    rightTop.add(stepTop);
    rightBot.add(stepBot);
  }
  popMatrix();

}
