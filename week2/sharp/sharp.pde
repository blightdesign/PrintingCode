

void setup()
{

  size(500,500,P3D);
  smooth();
  
  int startPoint = width/10;
  
  strokeWeight(15);
  strokeCap(SQUARE);
  noFill();
  
  beginShape();
    vertex(startPoint, startPoint*10);
    vertex(startPoint, startPoint*0);
    vertex(startPoint*2, startPoint*2);
    vertex(startPoint, startPoint*8);
    bezierVertex((startPoint)/8,(startPoint*8),((startPoint)/2),startPoint*10,startPoint,startPoint*10);
  endShape();
  
  //translate(125, 35);
 // rotate((PI)/4);  //rotates rectangles
  translate(0, 0);
  rotateY(radians(180));
  
  rotate(radians(30));
  
beginShape();
    vertex(startPoint, startPoint*10);
    vertex(startPoint, startPoint*0);
    vertex(startPoint*2, startPoint*2);
    vertex(startPoint, startPoint*8);
    bezierVertex((startPoint)/8,(startPoint*8),((startPoint)/2),startPoint*10,startPoint,startPoint*10);
  endShape();


}
