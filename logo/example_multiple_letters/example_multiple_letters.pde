// Example for using images
// 10/31/11

PImage doggy;

int x;

void setup(){
  size(600,600);
  smooth();
  noFill();
  stroke(2);
  x = 0;
  
  doggy = loadImage("multiple_letters.jpg"); 
  
  doggy.resize(600, 600);  // Resizes the image to 20 by 20

  image(doggy,x,0);
  
    int fontSize = 450;
 
  translate(50, 30);
  
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
  


