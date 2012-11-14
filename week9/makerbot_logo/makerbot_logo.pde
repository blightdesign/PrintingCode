PImage img;
int diam;
int unit;

void setup() 
{
  size(600, 600);
  smooth();
  //background(0,0,0);
  
  //image is 170px by 170px
  unit = 5;
  diam = unit*34;
  img = loadImage("makerbot_logo.jpg");
  
  image(img, 0,0);
  image(img, 200, 0);
  
  translate(diam/2,diam/2);
  
  fill(0,0,0);
  rect(unit*(-17),unit*(-17),unit*34,unit*34);
  noStroke();
  fill(255,0,0);
  ellipse(0, 0, diam, diam);  //outer ring
  fill(0,0,0);
  ellipse(0, 0, unit*29, unit*29);  //inner ring

  fill(255,0,0);
  ellipse(unit*(-7), unit*8, unit*4, unit*4);
  ellipse(unit*0, unit*8, unit*4, unit*4);
  ellipse(unit*7, unit*8, unit*4, unit*4);
  
  rect(unit*(-9), unit*(-7), unit*4, unit*15);
  rect(unit*(-2), unit*(-7), unit*4, unit*15);
  rect(unit*5, unit*(-7), unit*4, unit*15);
  rect(unit*(-5), unit*(-11), unit*10, unit*4);
  
  ellipse(unit*(-5), unit*(-7), unit*8, unit*8);
  ellipse(unit*5, unit*(-7), unit*8, unit*8);
  
  fill(0,0,0);
  rect(unit*(-5), unit*(-7), unit*3, unit*4);
  rect(unit*2, unit*(-7), unit*3, unit*4);
  
}
