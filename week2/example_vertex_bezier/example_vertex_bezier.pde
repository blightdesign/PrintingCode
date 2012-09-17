int rectSize = 50;

void setup()
{

  size(500,500);
  smooth();
  //noStroke();
  //fill(0);
  
//  beginShape();
//    vertex(100,100);
//    vertex(200,100);
//    vertex(200,200);
//    vertex(100,200);
//  endShape();
  
  
//  beginShape();
//    curveVertex(100,100);
//    curveVertex(200,100);
//    curveVertex(200,200);
//    curveVertex(100,200);
//  endShape();


  strokeWeight(10);
  noFill();
  beginShape();
    vertex(100,300);
    bezierVertex(0,0,300,0,400,300);
    bezierVertex(0,500,300,500,100,300);
 //   vertex(200,200);
   // vertex(100,200);
  endShape();

}
