/*  Properties
_________________________________________________________________ */
import geomerative.*;

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
    
    //canvas.colorMode(HSB, 360, 100, 100);
    //canvas.background(360);
    canvas.background(255,255,255);
    canvas.smooth();
    canvas.noFill();
    canvas.strokeWeight(7);
    
    //float smallFontSize =random(150,350);
    float smallFontSize =random((canvas.width/2.6),(canvas.width/1.14));
 
    //float xA=random(12,182);
    float xA=random((canvas.width/33.33),(canvas.width/2.2));
    //float yA=random(10,150);
    float yA=random((canvas.width/40),(canvas.width/2.67));
    //float xB=random(50,182);
    float xB=random((canvas.width/8),(canvas.width/2.2));
    //float yB=random(30,150);
    float yB=random((canvas.width/13.33),(canvas.width/2.67));
  
    //canvas.stroke(359,100,40,200);
    canvas.stroke(0,0,255);
   
    //Connecting LInes
    canvas.line((0.0*smallFontSize)+xA, (1.19*smallFontSize)+yA, (0.0*smallFontSize)+xB, (1.19*smallFontSize)+yB);
    canvas.line((0.0*smallFontSize)+xA, (0.0*smallFontSize)+yA,  (0.0*smallFontSize)+xB, (0.0*smallFontSize)+yB);
    canvas.line((0.355*smallFontSize)+xA, (0.0*smallFontSize)+yA, (0.355*smallFontSize)+xB, (0.0*smallFontSize)+yB);
    canvas.line((0.355*smallFontSize)+xA, (0.9*smallFontSize)+yA, (0.355*smallFontSize)+xB, (0.9*smallFontSize)+yB);
    canvas.line((1.1*smallFontSize)+xA, (0.9*smallFontSize)+yA, (1.1*smallFontSize)+xB, (0.9*smallFontSize)+yB);
    canvas.line((0.7*smallFontSize)+xA, (1.19*smallFontSize)+yA,(0.7*smallFontSize)+xB, (1.19*smallFontSize)+yB);
  
    canvas.line((0.378*smallFontSize)+xA, (0.0*smallFontSize)+yA, (0.378*smallFontSize)+xB, (0.0*smallFontSize)+yB);
    canvas.line((0.378*smallFontSize)+xA, (0.885*smallFontSize)+yA, (0.378*smallFontSize)+xB, (0.885*smallFontSize)+yB);
    canvas.line((1.1*smallFontSize)+xA, (0.885*smallFontSize)+yA, (1.1*smallFontSize)+xB, (0.885*smallFontSize)+yB);
    canvas.line((0.86*smallFontSize)+xA, (0.565*smallFontSize)+yA, (0.86*smallFontSize)+xB, (0.565*smallFontSize)+yB);
    canvas.line((0.7*smallFontSize)+xA, (0.0*smallFontSize)+yA, (0.7*smallFontSize)+xB, (0.0*smallFontSize)+yB);
    
    //Logo A
    canvas.pushMatrix();
    canvas.translate(xA, yA);
    //fill(0,0,255,50);
    //canvas.fill(359,100,40,160);
    canvas.fill(0,0,255,50);
    // L
    canvas.beginShape();
      canvas.vertex(0.0*smallFontSize,1.19*smallFontSize);
      canvas.vertex(0.0*smallFontSize, 0.0*smallFontSize);
      canvas.vertex(0.355*smallFontSize, 0.0*smallFontSize);
      canvas.vertex(0.355*smallFontSize, 0.9*smallFontSize);
      canvas.vertex(1.1*smallFontSize, 0.9*smallFontSize);
      canvas.bezierVertex(1.1*smallFontSize, 0.9*smallFontSize, 1.09*smallFontSize,1.19*smallFontSize, 0.7*smallFontSize,1.19*smallFontSize);
      canvas.vertex(0.7*smallFontSize,1.19*smallFontSize);
      canvas.vertex(0.0*smallFontSize,1.19*smallFontSize);
    canvas.endShape();
    // B
    canvas.beginShape();
      canvas.vertex(0.378*smallFontSize, 0.0*smallFontSize);
      canvas.vertex(0.378*smallFontSize, 0.885*smallFontSize);
      canvas.vertex(1.1*smallFontSize, 0.885*smallFontSize);
      canvas.bezierVertex(1.1*smallFontSize, 0.885*smallFontSize, 1.15*smallFontSize, .65*smallFontSize, 0.86*smallFontSize, 0.565*smallFontSize);
      canvas.vertex(0.86*smallFontSize, 0.565*smallFontSize);
      canvas.bezierVertex(1.1*smallFontSize, 0.5*smallFontSize, 1.185*smallFontSize, 0.05*smallFontSize,  0.7*smallFontSize, 0.0*smallFontSize);
      canvas.vertex(0.7*smallFontSize, 0.0*smallFontSize);
      canvas.vertex(0.378*smallFontSize, 0.0*smallFontSize);
    canvas.endShape();
    canvas.popMatrix();
    
    //LogoB
    canvas.pushMatrix();
    canvas.translate(xB, yB);
    //fill(0,0,255,50);
    //canvas.fill(359,100,40,50);
    canvas.fill(0,0,255,50);
    // L
    canvas.beginShape();
      canvas.vertex(0.0*smallFontSize,1.19*smallFontSize);
      canvas.vertex(0.0*smallFontSize, 0.0*smallFontSize);
      canvas.vertex(0.355*smallFontSize, 0.0*smallFontSize);
      canvas.vertex(0.355*smallFontSize, 0.9*smallFontSize);
      canvas.vertex(1.1*smallFontSize, 0.9*smallFontSize);
      canvas.bezierVertex(1.1*smallFontSize, 0.9*smallFontSize, 1.09*smallFontSize,1.19*smallFontSize, 0.7*smallFontSize,1.19*smallFontSize);
      canvas.vertex(0.7*smallFontSize,1.19*smallFontSize);
      canvas.vertex(0.0*smallFontSize,1.19*smallFontSize);
    canvas.endShape();
    // B
    canvas.beginShape();
      canvas.vertex(0.378*smallFontSize, 0.0*smallFontSize);
      canvas.vertex(0.378*smallFontSize, 0.885*smallFontSize);
      canvas.vertex(1.1*smallFontSize, 0.885*smallFontSize);
      canvas.bezierVertex(1.1*smallFontSize, 0.885*smallFontSize, 1.15*smallFontSize, .65*smallFontSize, 0.86*smallFontSize, 0.565*smallFontSize);
      canvas.vertex(0.86*smallFontSize, 0.565*smallFontSize);
      canvas.bezierVertex(1.1*smallFontSize, 0.5*smallFontSize, 1.185*smallFontSize, 0.05*smallFontSize,  0.7*smallFontSize, 0.0*smallFontSize);
      canvas.vertex(0.7*smallFontSize, 0.0*smallFontSize);
      canvas.vertex(0.378*smallFontSize, 0.0*smallFontSize);
    canvas.endShape();
    canvas.popMatrix();
    
    //Mask rest of sketch
    canvas.noFill();
    //canvas.stroke(360);
    canvas.stroke(255,255,255,255);
    canvas.strokeWeight(canvas.width/4);
    canvas.rect(0, 0,canvas.width,canvas.height);
    //strokeWeight(80);
    //stroke(255,0,0);
    //canvas.rect(12, 10,398,398);
    //canvas.rect(12, 10,445,445);
    //canvas.rect(12, 10,490,490);
    //canvas.strokeWeight(1);
    //stroke(0,0,255);
    canvas.strokeWeight(7);
    //canvas.stroke(359,100,40,100);
    //canvas.stroke(359,100,40,200);
    canvas.stroke(0,0,255,50);
    canvas.rect(canvas.width/8, canvas.width/8,canvas.width*3/4,canvas.width*3/4);
    
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

