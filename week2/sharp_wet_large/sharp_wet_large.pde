/*  Properties
_________________________________________________________________ */

PGraphics canvas;
//int canvas_width = 3508;
//int canvas_height = 4961;
int canvas_width = 4961;
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
  //smooth();
  //strokeCap(PROJECT);
  
  //canvas = createGraphics(canvas_width, canvas_height, P2D);
  canvas = createGraphics(canvas_width, canvas_height, JAVA2D);
  
  calculateResizeRatio();
  
  canvas.beginDraw();
    canvas.background(255);
    canvas.strokeWeight(1);
    int startPoint = canvas.height/12;
    int xWet = canvas.width/9;
    int yWet = canvas.width/3;
  
    // canvas.fill(0);
    canvas.fill(3);  // prints better tha black zero
    
    // CORNER=----------------------------------
    canvas.triangle(canvas.width*4/9,canvas.height,canvas.width,canvas.height,canvas.width,canvas.height*7/9);   // Angle should match angle of scissors
    
    // WET  ------------------------------------
    canvas.pushMatrix();
      canvas.translate(canvas.width*4/5,canvas.height*5/9); 
      canvas.rotate(radians(171));
      for (int i = 0; i < 3; i++) 
      {
        canvas.scale(.5+((i+.005)*.15), .55+((i+.005)*.15));
        canvas.beginShape();
          canvas.vertex(xWet,yWet);
          canvas.bezierVertex(yWet,xWet,0,0,xWet,yWet);
        canvas.endShape();
        canvas.translate(canvas.width/9,-canvas.height*(3+i)/9);
      }
    canvas.popMatrix();
    
    // SHARP  ----------------------------------
    canvas.strokeWeight(75);
    canvas.strokeCap(SQUARE);
    canvas.noFill();
  
    canvas.pushMatrix();
      canvas.translate(canvas.width*(2*1)/3, canvas.height/7);
      for (int i = 1; i < 3; i++) 
      {
        //will happen 2 times
        canvas.rotate(radians((pow(i,3)*40)+20));
        canvas.scale(1.2-(i*.15), (4-i)*.4);
        canvas.beginShape();
          canvas.vertex(startPoint, startPoint*10);     
          for (int j = 0; j <3; j++)
          {
            int p = 1;
            if(j==1)
            {
              p=2*(2-i);
            }
            canvas.vertex(startPoint*p, startPoint*((pow(3,j)-1)));
            if(i==1 && j==2)
            {
              canvas.bezierVertex((startPoint)*.125,(startPoint*8),((startPoint)* .5),startPoint*10,startPoint,startPoint*10);  // if j = 3 and i = 1 then this line
            }
            if(i==2 && j==2)
            {
              canvas.bezierVertex((startPoint)* 1.9,(startPoint*8),((startPoint)*1.5),startPoint*10,startPoint,startPoint*10);  // if j = 3 and i = 1 then this line
            }
          }
        canvas.endShape();
        canvas.translate(-startPoint*(2*2)/3, canvas.height/7);
      } 
    canvas.popMatrix();  
    
  canvas.endDraw();
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);
  
  //canvas.save("grab.png");
  canvas.save("grab.tiff");
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

