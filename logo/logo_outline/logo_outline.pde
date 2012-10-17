PImage img;


void setup() {
  size(200,200);
  img = loadImage("logo_200x200.jpg");
  background(255);
  smooth();
  noFill();
  stroke(1);
}

void draw() {
  //image(img, 0, 0);
  
  int fontSize = 150;
 
  translate(12, 10);
  
  stroke(0,0,255);
  strokeWeight(1);
  
  // L
  beginShape();
    vertex(0.0*fontSize,1.19*fontSize);
    vertex(0.0*fontSize, 0.0*fontSize);
    vertex(0.355*fontSize, 0.0*fontSize);
    vertex(0.355*fontSize, 0.9*fontSize);
    vertex(1.1*fontSize, 0.9*fontSize);
    bezierVertex(1.1*fontSize, 0.9*fontSize, 1.09*fontSize,1.19*fontSize, 0.7*fontSize,1.19*fontSize);
    vertex(0.7*fontSize,1.19*fontSize);
    vertex(0.0*fontSize,1.19*fontSize);
  endShape();
  // B
  beginShape();
    vertex(0.378*fontSize, 0.0*fontSize);
    vertex(0.378*fontSize, 0.885*fontSize);
    vertex(1.1*fontSize, 0.885*fontSize);
    bezierVertex(1.1*fontSize, 0.885*fontSize, 1.15*fontSize, .65*fontSize, 0.86*fontSize, 0.565*fontSize);
    vertex(0.86*fontSize, 0.565*fontSize);
    bezierVertex(1.1*fontSize, 0.5*fontSize, 1.185*fontSize, 0.05*fontSize,  0.7*fontSize, 0.0*fontSize);
    vertex(0.7*fontSize, 0.0*fontSize);
    vertex(0.378*fontSize, 0.0*fontSize);
  endShape();
}
