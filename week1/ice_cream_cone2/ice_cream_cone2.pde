// Printing Code
// Ice Cream Cone
// Sept 6, 2012
// On ITP’s laser printer, print a PNG image generated via a Processing sketch.  
//A few rules about your code: You can only use black (0) and white (255). 
// You are only allowed to use triangle(), rect() and ellipse() once each, and no other drawing functions are allowed (no beginShape or images). 
// Bring to class a design of an ice cream cone. Yes, and ice cream cone.



int rSize, rSpace, rIncrease;


/*  Setup
_________________________________________________________________ */

void setup(){
size(500, 500);
background(255);
smooth();

rSize = 20;         //Size of rect
rSpace = 10;        //Spacing between rect
rIncrease = 7;      //Increase in spacing

//Grid
line(width/2, 0, width/2, height);
line(0, height/2, width, height/2);

strokeWeight(5);
stroke(0);

//ellipse(width/2, (height/2)-60, 160, 160);
//ellipse(width/2-60, (height/2)-20, 80, 80);
//ellipse(width/2, (height/2)-20, 80, 80);
//ellipse(width/2+60, (height/2)-20, 80, 80);

//ellipse(width/2, (height/2)-20, 180, 180);

int eRadius = 100;
for (int i=0; i< 3; i++){
//  if (i > 2) { 
//   eRadius=170; 
//    translate(-120,-40);
//   
//    
//  }
   ellipse(width/2, ((height/2)-180+(i*80)), eRadius+(i*40), eRadius+(i*40));  
}


stroke(255);
triangle((width/2)-110, (height/2)+20, width/2, (height/2)+150, (width/2)+110, (height/2)+20);

stroke(0);
translate((width/2)+110, height/2);
rotate((3*PI)/4);  //rotates rectangles


for (int i = 0; i < 6; i++) {
  for(int j = 0; j < i; j++){
    rect(i*(rSize+rIncrease), j*(rSize+rIncrease), rSize, rSize); 
  }
}


////rect(-10, -10, rSize, rSize);
//rect(-((rSpace*1)+(rIncrease*0)), -((rSpace*1)+(rIncrease*0)), rSize, rSize);
//
////rect(-10, -34, rSize, rSize);
////rect(-34, -10, rSize, rSize);
//rect(-((rSpace*1)+(rIncrease*0)), -((rSpace*3)+(rIncrease*1)), rSize, rSize);
//rect(-((rSpace*3)+(rIncrease*1)), -((rSpace*1)+(rIncrease*0)), rSize, rSize);
//
////rect(-10, -58, rSize, rSize);
////rect(-34, -34, rSize, rSize);
////rect(-58, -10, rSize, rSize);
//rect(-((rSpace*1)+(rIncrease*0)), -((rSpace*5)+(rIncrease*2)), rSize, rSize);
//rect(-((rSpace*3)+(rIncrease*1)), -((rSpace*3)+(rIncrease*1)), rSize, rSize);
//rect(-((rSpace*5)+(rIncrease*2)), -((rSpace*1)+(rIncrease*0)), rSize, rSize);
//
////rect(-10, -82, rSize, rSize);
////rect(-34, -58, rSize, rSize);
////rect(-58, -34, rSize, rSize);
////rect(-82, -10, rSize, rSize);
//rect(-((rSpace*1)+(rIncrease*0)), -((rSpace*7)+(rIncrease*3)), rSize, rSize);
//rect(-((rSpace*3)+(rIncrease*1)), -((rSpace*5)+(rIncrease*2)), rSize, rSize);
//rect(-((rSpace*5)+(rIncrease*2)), -((rSpace*3)+(rIncrease*1)), rSize, rSize);
//rect(-((rSpace*7)+(rIncrease*3)), -((rSpace*1)+(rIncrease*0)), rSize, rSize);
//
//
////rect(-10, -106, rSize, rSize);
////rect(-34, -82, rSize, rSize);
////rect(-58, -58, rSize, rSize);
////rect(-82, -34, rSize, rSize);
////rect(-106, -10, rSize, rSize);
//rect(-((rSpace*1)+(rIncrease*0)), -((rSpace*9)+(rIncrease*4)), rSize, rSize);
//rect(-((rSpace*3)+(rIncrease*1)), -((rSpace*7)+(rIncrease*3)), rSize, rSize);
//rect(-((rSpace*5)+(rIncrease*2)), -((rSpace*5)+(rIncrease*2)), rSize, rSize);
//rect(-((rSpace*7)+(rIncrease*3)), -((rSpace*3)+(rIncrease*1)), rSize, rSize);
//rect(-((rSpace*9)+(rIncrease*4)), -((rSpace*1)+(rIncrease*0)), rSize, rSize);

}

