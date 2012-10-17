PImage img;

//float[][] normalizedOutline = {
//{0.7586207, 0.5448276},
//{0.2413793, 0.5448276},
//{0.2413793, 1.0},
//{0.11034483, 1.0},
//{0.11034483, 0.0},
//{0.2413793, 0.0},
//{0.2413793, 0.43448275},
//{0.7586207, 0.43448275},
//{0.7586207, 0.0},
//{0.8827586, 0.0},
//{0.8827586, 1.0},
//{0.7586207, 1.0},
//{0.7586207, 0.5448276},
//{0.7586207, 0.5448276}
//};

float[][] normalizedOutline = {
{0.0,1.185},
{0.0, 0.0},
{0.355, 0.0},
{0.355, 0.9},
{1.09,0.9},
{0.7, 1.185}
};

void setup() {
  size(200,200);
  img = loadImage("logo_200x200.jpg");
  background(255);
  smooth();
  noFill();
}

void draw() {
  image(img, 0, 0);
  
  
  int fontSize = 150;
  
  //translate(8, 8);
  translate(12, 10);
  
//  beginShape();
//  for(int i = 0; i < normalizedOutline.length; i++)
//  {
//    vertex(normalizedOutline[i][0] * fontSize, normalizedOutline[i][1] * fontSize);
//  }
//  endShape(CLOSE);
  
  stroke(0,0,255);
  
  // L
  beginShape();
    vertex(0.0*fontSize,1.19*fontSize);
    vertex(0.0*fontSize, 0.0*fontSize);
    vertex(0.355*fontSize, 0.0*fontSize);
    vertex(0.355*fontSize, 0.9*fontSize);
    vertex(1.09*fontSize, 0.9*fontSize);
    //bezierVertex((startPoint)/8,(startPoint*8),((startPoint)/2),startPoint*10,startPoint,startPoint*10);
    vertex(0.7*fontSize,1.19*fontSize);
    vertex(0.0*fontSize,1.19*fontSize);
  endShape();
  // B
  beginShape();
    vertex(0.378*fontSize, 0.0*fontSize);
    vertex(0.378*fontSize, 0.885*fontSize);
    vertex(1.1*fontSize, 0.885*fontSize);
    //
    vertex(0.86*fontSize, 0.565*fontSize);
    //bezierVertex((startPoint)/8,(startPoint*8),((startPoint)/2),startPoint*10,startPoint,startPoint*10);
    vertex(0.7*fontSize, 0.0*fontSize);
    vertex(0.378*fontSize, 0.0*fontSize);
  endShape();
}
