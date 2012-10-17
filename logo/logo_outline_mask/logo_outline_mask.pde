PImage img;  // this is here for tracing purposesd

void setup() {
  size(580,625);
  img = loadImage("logo_200x200.jpg");
  background(255,255,0);
  smooth();
  noStroke();
  //image(img, 0, 0);  // this is here for tracing purposes
  
  
  //MASK
  int fontSize = 500;  // controls the size of logo
  translate(12, 10); 
  fill(255,255,255);
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
