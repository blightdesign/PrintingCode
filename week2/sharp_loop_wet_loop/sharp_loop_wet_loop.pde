
void setup()
{

  size(900,700);
  background(255);
  smooth();
  
  int startPoint = height/12;
  int xWet = width/9;
  int yWet = width/3;
  
  // fill(0);
  fill(3);  // prints better tha black zero
  triangle(width*4/9,height,width,height,width,height*7/9);   // Angle should match angle of scissors
  
  // WET  ------------------------------------
  pushMatrix();
  
  translate(width*4/5,height*5/9); 
  rotate(radians(171));
  
  for (int i = 0; i < 3; i++) 
  {
    scale(.5+((i+.005)*.15), .55+((i+.005)*.15));
    beginShape();
      vertex(xWet,yWet);
      bezierVertex(yWet,xWet,0,0,xWet,yWet);
    endShape();
    translate(width/9,-height*(3+i)/9);
  }
  
  popMatrix();
  
  // SHARP  ----------------------------------
  strokeWeight(15);
  strokeCap(SQUARE);
  noFill();
  
  pushMatrix();
  
  translate(width*(2*1)/3, height/7);
  
  for (int i = 1; i < 3; i++) 
  {
    //will happen 2 times
    rotate(radians((pow(i,3)*40)+20));
    scale(1.2-(i*.15), (4-i)*.4);
    
    beginShape();
      vertex(startPoint, startPoint*10);     
      for (int j = 0; j <3; j++)
      {
        int p = 1;
        if(j==1)
        {
          p=2*(2-i);
        }
        vertex(startPoint*p, startPoint*((pow(3,j)-1)));
        if(i==1 && j==2)
        {
          bezierVertex((startPoint)*.125,(startPoint*8),((startPoint)*.5), startPoint*10,startPoint,startPoint*10);  // if j = 3 and i = 1 then this line
        }
        if(i==2 && j==2)
        {
          bezierVertex((startPoint)*1.9, (startPoint*8),((startPoint)*1.5),startPoint*10,startPoint,startPoint*10);  // if j = 3 and i = 1 then this line
        }
        
      }
    endShape();
    translate(-startPoint*(2*2)/3, height/7);  //
  }

  popMatrix();    
}
