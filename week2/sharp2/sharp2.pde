
void setup()
{

  size(900,700);
  background(255);
  smooth();
  
  int startPoint = height/12;
  
  fill(0);
  triangle(width/4,height,width,height,width,height*3/4);
  
  strokeWeight(15);
  strokeCap(SQUARE);
  noFill();
  
  translate(width*6/9, height*2/13);
  rotate(radians(60));
  scale(1.1, 1.2);
  
  beginShape();
    vertex(startPoint*1, startPoint*10);
    //vertex(startPoint*1, startPoint*(0));
    vertex(startPoint*1, startPoint*((pow(3,0)-1)));
    //vertex(startPoint*2, startPoint*2);
    vertex(startPoint*2, startPoint*((pow(3,1)-1)));
    //vertex(startPoint*1, startPoint*8);
    vertex(startPoint*1, startPoint*((pow(3,2)-1)));
    bezierVertex((startPoint)/8,(startPoint*8),((startPoint)/2),startPoint*10,startPoint,startPoint*10);
  endShape();
  
  translate(-startPoint*1.5, height/7);
  rotate(radians(340));
  scale(.9, .8);
  
  beginShape();
    vertex(startPoint*1, startPoint*10);
    vertex(startPoint*1, startPoint*(0));
    vertex(startPoint*0, startPoint*2);
    vertex(startPoint*1, startPoint*8);
    bezierVertex((startPoint)*1.9,(startPoint*8),((startPoint)*1.5),startPoint*10,startPoint,startPoint*10);
  endShape();


}
