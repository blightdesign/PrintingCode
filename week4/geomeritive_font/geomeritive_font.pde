import geomerative.*;

void setup() 
{
  size(1280, 800);
  colorMode(HSB, 360,100,100,100);
  background(360);
  smooth();
  stroke(359,100,40,100);
  noStroke();
  fill(359,100,40,15);
  int smallFontSize = 800;
  
  // initialize the geomerative library
  RG.init(this);
  
  // create a new font
  RFont font = new RFont("FreeSans.ttf", smallFontSize, RFont.LEFT);
  pushMatrix();
  translate(0, 600);
  font.draw("B"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("L"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("I"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("G"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("H"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("T"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("D"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("E"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("S"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("I"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("G"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("N"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("A"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("W"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("E"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("S"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("O"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("M"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("E"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("B"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("U"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("T"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("T"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("O"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  font.draw("N"); // if you're drawing in a canvas object, do font.draw("B", canvas);
  
  popMatrix();
  //MASK
  int fontSize = 500;  // controls the size of logo
  translate(12, 10); 
  fill(360);
  // L
  beginShape();
    vertex(0.0*fontSize,1.19*fontSize);
    vertex(0.0*fontSize, 0.0*fontSize);
    vertex(0.355*fontSize, 0.0*fontSize);
    vertex(0.355*fontSize, -1*fontSize);
    vertex(-1*fontSize, -1*fontSize);
    vertex(-1*fontSize, height);
    vertex(width, height);
    vertex(width, 0.9*fontSize);
    vertex(1.1*fontSize, 0.9*fontSize);
    bezierVertex(1.1*fontSize, 0.9*fontSize, 1.09*fontSize,1.19*fontSize, 0.7*fontSize,1.19*fontSize);
    vertex(0.7*fontSize,1.19*fontSize);
    vertex(0.0*fontSize,1.19*fontSize);
  endShape();
  // B
  beginShape();
    vertex(0.378*fontSize, 0.0*fontSize);
    vertex(0.378*fontSize, -1*fontSize);
    vertex(width, -1*fontSize);
    vertex(width, 0.885*fontSize);
    vertex(1.1*fontSize, 0.885*fontSize);
    bezierVertex(1.1*fontSize, 0.885*fontSize, 1.15*fontSize, .65*fontSize, 0.86*fontSize, 0.565*fontSize);
    vertex(0.86*fontSize, 0.565*fontSize);
    bezierVertex(1.1*fontSize, 0.5*fontSize, 1.185*fontSize, 0.05*fontSize,  0.7*fontSize, 0.0*fontSize);
    vertex(0.7*fontSize, 0.0*fontSize);
    vertex(0.378*fontSize, 0.0*fontSize);
  endShape();
  //Cross
  beginShape();
    vertex(0.355*fontSize, 0.0*fontSize);
    vertex(0.355*fontSize, 0.9*fontSize);
    vertex(1.1*fontSize, 0.9*fontSize);
    vertex(width, 0.9*fontSize);
    vertex(width, 0.878*fontSize);
    vertex(1.1*fontSize, 0.878*fontSize);
    vertex(0.378*fontSize, 0.878*fontSize);
    vertex(0.378*fontSize, 0.0*fontSize);
    vertex(0.378*fontSize, -1*fontSize);
    vertex(0.355*fontSize, -1*fontSize);
    vertex(0.355*fontSize, 0.0*fontSize);
  endShape();
}


