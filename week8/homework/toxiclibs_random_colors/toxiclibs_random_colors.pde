import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  background(255); 
  smooth();

  int sectionNum = 9;

  WeightedRandomSet<Kolor> kolors = new WeightedRandomSet<Kolor>();

  kolors.add(new Kolor(1, #192902, #5F9D47, 125), 4);
  kolors.add(new Kolor(1, #855D05, #FAE824, 125), 3);
  kolors.add(new Kolor(1, #450304, #DA2709, 125), 2);
  kolors.add(new Kolor(1, #637A88, #FDFBFC, 125), 2);
  
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

  translate (0,height/4);
  
  // triangle sections loop
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
    
    if (i==0)
    {
      PVector v2 = new PVector(0.0, 0.0);
      v2.set(rightTop);
      rightTop.mult(1.3);
      rightBot.mult(1.3);
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==1)
    {
      PVector v2 = new PVector(0.0, 0.0);
      v2.set(rightTop);
      rightTop.mult(.8);
      rightBot.mult(.8);
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==2)
    {
      PVector v2 = new PVector(0.0, 0.0);
      v2.set(rightTop);
      rightTop.mult(1);
      rightBot.mult(1);
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==3)
    {
      PVector v2 = new PVector(0.0, 0.0);
      v2.set(rightTop);
      rightTop.mult(1.5);
      rightBot.mult(1.5);
      PVector v1 = PVector.sub(v2,rightTop);
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==4)
    {
      PVector v2 = new PVector(0.0, 0.0);
      v2.set(rightTop);
      rightTop.mult(.5);
      rightBot.mult(.5);
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==7)
    {
      PVector v2 = new PVector(0.0, 0.0);
      v2.set(rightTop);
      rightTop.mult(1.2);
      rightBot.mult(1.2);
      PVector v1 = PVector.sub(v2,rightTop);
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    if (i==8)
    {
      PVector v2 = new PVector(0.0, 0.0);
      v2.set(rightTop);
      rightTop.mult(.8);
      rightBot.mult(.8);
      translate(v2.x-rightTop.x,v2.y-rightTop.y);
    }
    
    //Set left vectors to right vectors
    leftTop.set(rightTop);
    leftBot.set(rightBot);
    
    PVector stepTop = new PVector(random(50,150),random(-50,50));
    PVector stepBot = new PVector(random(50,170),random(-50,50));
    
    rightTop.add(stepTop);
    rightBot.add(stepBot);
  }
}
