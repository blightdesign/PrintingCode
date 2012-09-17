// Printing Code
// Sept 10, 2012
// Week 1: design ice cream cone using only ellipse, triangle, and rect. Only black and white.
// This is the shape, FINAL will have the print commands (canvas).


void setup(){
  size(800, 800);
  background(255);
  smooth();
  
  int rSize = 20;         //Size of rect
  int rSpace = 10;        //Spacing between rect
  int rIncrease = 7;      //Increase in spacing
  
  int eRadius = 80;       //Radius of Ice Cream
  
  //Grid
  //line(width/2, 0, width/2, height);      // Center Line
  //line(0, height/2, width, height/2);     // Center Line
//  line(width/4, 0, width/4, height);      // Quarter Line
//  line(width*3/4, 0, width*3/4, height);  // Quarter Line
//  line(0, height/4, width, height/4);     // Quarter Line
//  line(0, height*3/4, width, height*3/4); // Quarter Line
  
  strokeWeight(5);
  stroke(0);
  
  //ICE CREAM
  pushMatrix();
  for (int i=0; i< 4; i++){
    if (i > 2) { 
      eRadius=190; 
      translate(-160,-44);
    }
     ellipse((width/2)+(i*80)-80, ((height/2)+0), eRadius, eRadius);
  }
  popMatrix();
  
  // triangle cuts off bottom of ellipse
  stroke(255);
  //stroke(0); // use this to see triangle
  triangle((width/2)-90, (height/2)+16, width/2, (height/2)+100, (width/2)+90, (height/2)+16);
  
  stroke(0);
  translate((width/2)+110, height/2+26);
  rotate((3*PI)/4);  //rotates rectangles
  
  for (int i = 0; i < 6; i++) {
    for(int j = 0; j < i; j++){
      rect(i*(rSize+rIncrease), j*(rSize+rIncrease), rSize, rSize); 
    }
  }

}


