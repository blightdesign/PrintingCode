/*  Properties
_________________________________________________________________ */
PImage doggy;

PGraphics canvas;
int canvas_width = 3508;
int canvas_height = 3508;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

/*  Setup
_________________________________________________________________ */

void setup()
{ 
  size(1300, 850);
  background(30);
  
  //canvas = createGraphics(canvas_width, canvas_height, P2D);
  canvas = createGraphics(canvas_width, canvas_height, JAVA2D);
  
  calculateResizeRatio();
  
  canvas.beginDraw();
    
    canvas.colorMode(HSB, 360, 100, 100);
    canvas.background(360);
    canvas.smooth();
    canvas.noStroke();
    
    doggy = loadImage("image_2.jpg"); //Birch
    //doggy = loadImage("image_4.jpg"); //Lake Wood
    //doggy = loadImage("image_5.jpg");  //walnut
    
    doggy.resize(150, 300);
  
    color[] dPixels = doggy.pixels;    // color array that is equal to the number of pixels in the image
  
    canvas.pushMatrix();
    canvas.translate(-2.7*canvas.width,-2.1*canvas.height);//forimage2
    //canvas.translate(-1.5*canvas.width,-4*canvas.height);//forimage4
    //canvas.translate(-0.15*canvas.width,-1.4*canvas.height);//forimage5
    for(int i = 0; i < doggy.width * doggy.height; i++){
      int y = i / doggy.width;
      int x = i % doggy.width;
     
      // Image Processing based on brightness
      canvas.fill(dPixels[i]);  // color the pixel
      canvas.ellipse(x*(canvas.width/40),y*(canvas.width/40),(canvas.width/28),(canvas.width/28));
     }
    canvas.popMatrix();
    
    //MASK
    //int fontSize = 500;  // controls the size of logo
    int fontSize = round(canvas.width/1.25);
    canvas.translate(canvas.width/48, canvas.height/63); 
    canvas.fill(360);
    // L
    canvas.beginShape();
      canvas.vertex(0.0*fontSize,1.19*fontSize);
      canvas.vertex(0.0*fontSize, 0.0*fontSize);
      canvas.vertex(0.355*fontSize, 0.0*fontSize);
      canvas.vertex(0.355*fontSize, -1*fontSize);
      canvas.vertex(-1*fontSize, -1*fontSize);
      canvas.vertex(-1*fontSize, canvas.height);
      canvas.vertex(canvas.width, canvas.height);
      canvas.vertex(canvas.width, 0.9*fontSize);
      canvas.vertex(1.1*fontSize, 0.9*fontSize);
      canvas.bezierVertex(1.1*fontSize, 0.9*fontSize, 1.09*fontSize,1.19*fontSize, 0.7*fontSize,1.19*fontSize);
      canvas. vertex(0.7*fontSize,1.19*fontSize);
      canvas.vertex(0.0*fontSize,1.19*fontSize);
    canvas.endShape();
    // B
    canvas.beginShape();
      canvas.vertex(0.378*fontSize, 0.0*fontSize);
      canvas.vertex(0.378*fontSize, -1*fontSize);
      canvas.vertex(canvas.width, -1*fontSize);
      canvas.vertex(canvas.width, 0.885*fontSize);
      canvas.vertex(1.1*fontSize, 0.885*fontSize);
      canvas.bezierVertex(1.1*fontSize, 0.885*fontSize, 1.15*fontSize, .65*fontSize, 0.86*fontSize, 0.565*fontSize);
      canvas.vertex(0.86*fontSize, 0.565*fontSize);
      canvas.bezierVertex(1.1*fontSize, 0.5*fontSize, 1.185*fontSize, 0.05*fontSize,  0.7*fontSize, 0.0*fontSize);
      canvas.vertex(0.7*fontSize, 0.0*fontSize);
      canvas.vertex(0.378*fontSize, 0.0*fontSize);
    canvas.endShape();
    //Cross
    canvas.beginShape();
      canvas.vertex(0.355*fontSize, 0.0*fontSize);
      canvas.vertex(0.355*fontSize, 0.9*fontSize);
      canvas.vertex(1.1*fontSize, 0.9*fontSize);
      canvas.vertex(canvas.width, 0.9*fontSize);
      canvas.vertex(canvas.width, 0.878*fontSize);
      canvas.vertex(1.1*fontSize, 0.878*fontSize);
      canvas.vertex(0.378*fontSize, 0.878*fontSize);
      canvas.vertex(0.378*fontSize, 0.0*fontSize);
      canvas.vertex(0.378*fontSize, -1*fontSize);
      canvas.vertex(0.355*fontSize, -1*fontSize);
      canvas.vertex(0.355*fontSize, 0.0*fontSize);
    canvas.endShape();
    //MORE MASKING
    canvas.beginShape();
      canvas.vertex(-1*fontSize, 0.0*fontSize);
      canvas.vertex(0.0*fontSize, 0.0*fontSize);
      canvas.vertex(canvas.width, 0.0*fontSize);
      canvas.vertex(canvas.width, -1*fontSize);
      canvas.vertex(-1*fontSize, 0.0*fontSize);
    canvas.endShape();
    canvas.beginShape();
      canvas.vertex(canvas.width, 0.0*fontSize);
      canvas.vertex(canvas.width, canvas.height);
      canvas.vertex(1.12*fontSize, canvas.height);
      canvas.vertex(1.12*fontSize, 0.0*fontSize);
      canvas.vertex(canvas.width, 0.0*fontSize);
    canvas.endShape();
  canvas.endDraw();
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);
  
  int s = second();  // Values from 0 - 59
  
  //canvas.save("grab.png");
  
  canvas.save("grabC" +s +".tiff");
}

/*  Calculate resizing
_________________________________________________________________ */

void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  
  if(ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}

