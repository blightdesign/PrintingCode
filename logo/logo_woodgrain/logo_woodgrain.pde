// Use images of wood gran to make different backgrounds for logo
PImage doggy;

void setup(){
  size(580,625);
  smooth();
  noStroke();
  
  doggy = loadImage("image_5.jpg"); 
  doggy.resize(100, 200);  // Resizes the image to 20 by 20
  
  color[] dPixels = doggy.pixels;    // color array that is equal to the number of pixels in the image
  
  pushMatrix();
  //translate(-2.5*width,-2*height);  //for image 2
  translate(0,-height);//forimage5, 6
  
  for(int i = 0; i < doggy.width * doggy.height; i++){
     int y = i / doggy.width;
     int x = i % doggy.width;
     
     // Image Processing based on brightness
       fill(dPixels[i]);  // color the pixel
       ellipse(x*18,y*18,25,25); // 
  }
  popMatrix();
  
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
