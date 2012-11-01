import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  smooth();
  strokeWeight(1);
  background(255);
  //stroke(30);
  stroke(#AEAEAE);
  
  int pointNum = 5;
  int pointWidth = width / pointNum;
  
  WeightedRandomSet<String> kolors = new WeightedRandomSet<String>();
  
  kolors.add("#6CA94A",4);
  kolors.add("#FCEA24",3);
  kolors.add("#D52309",2);
  kolors.add("#B5C3CC",2);
  
  //String kolors = kolors.getRandom();
  
  int leftXT = 50;
  int leftYT = 50;
  int leftXB = 100;
  int leftYB = 550;
  int rightXT = 300;
  int rightYT = 0;
  int rightXB = 350;
  int rightYB = 500;
  
  PVector leftTop = new PVector(leftXT,leftYT);    //Left Top of section
  PVector rightTop = new PVector(rightXT,rightYT);  //Right Topo of section
  PVector leftBot = new PVector(leftXB,leftYB);    //left Bottom of Section
  PVector rightBot = new PVector(rightXB,rightYB); //right Bottom of section
  
  // first create the sections
  for (int i = 0; i < pointNum + 1; i++)
  {
    //fill(kolors,50);
    triangle(leftTop.x,leftTop.y,rightTop.x,rightTop.y,rightBot.x,rightBot.y);
    fill(#D62015,50);
    triangle(leftBot.x,leftBot.y,leftTop.x,leftTop.y,rightTop.x,rightTop.y);
    noFill();
    triangle(rightTop.x,rightTop.y,rightBot.x,rightBot.y,leftBot.x,leftBot.y);
    
    //Set left vectors to right vectors
    leftTop.set(rightTop);
    leftBot.set(rightBot);
    
    rightTop.mult(1.2);
    rightBot.mult(1.2);
  }
  
}
