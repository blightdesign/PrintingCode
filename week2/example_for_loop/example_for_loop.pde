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
  
  translate(30,30);
  
  for (int i = 0; i < 10; i++) 
  {
    //will happen 10 times
    //println(i); // will print value of i
    for (int j = 0; j <10; j++)
    {
       if(i==3 && j==5)
       {
         fill(255,0,0);
       }
       else
       {
         fill(0);
       }
      ellipse (i*40,j*40,30,30);
    }
  }

}
