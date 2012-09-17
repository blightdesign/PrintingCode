
void setup(){
size(500, 500);
background(255);
smooth();

int rSize = 20;         //Size of rect
int rSpace = 10;        //Spacing between rect
int rIncrease = 7;      //Increase in spacing


strokeWeight(5);
stroke(0);

//ellipse(width/2, (height/2)-60, 170, 170);
//ellipse(width/2-60, (height/2)-20, 80, 80);
//ellipse(width/2, (height/2)-20, 80, 80);
//ellipse(width/2+60, (height/2)-20, 80, 80);

//ellipse(width/2, (height/2)-20, 180, 180);


fill(255);

stroke(255);
triangle((width/2)-110, (height/2)+20, width/2, (height/2)+150, (width/2)+110, (height/2)+20);


// CONE
pushMatrix();
stroke(0);
translate((width/2)+130, height/2+8);
rotate((3*PI)/4);  //rotates rectangles

for (int i = 0; i < 7; i++) {
  for(int j = 0; j < i; j++){
    rect(i*(rSize+rIncrease), j*(rSize+rIncrease), rSize, rSize); 
  }
}
popMatrix();


// ICE CREAM
int eRadius = 100;
//stroke(255,255,0);
//fill(0,0,0);
//noFill();

pushMatrix();

for (int i=0; i< 4; i++){
  if (i > 2) { 
   eRadius=190; 
    translate(-160,-60);
  }
   ellipse((width/2)+(i*80)-80, ((height/2)-18), eRadius, eRadius);
}
popMatrix();

//for (int i = 0; i < 6; i++) {
//  for(int j = 0; j < i; j++){
//    rect(i*(rSize+rIncrease), j*(rSize+rIncrease), rSize, rSize); 
//  }
//}

//
//for (int i = 0; i < 3; i++) {
//  for(int j = 0; j < i; j++){
//    //rect(i*(rSize+rIncrease), j*(rSize+rIncrease), rSize, rSize); 
//    ellipse((width/2)+(i*eRadius)-120, (height*7/8)-(eRadius*j), eRadius, eRadius);
//  }
//}



//ellipse((width/2)+(eRadius*(0)),  (100+(0*eRadius)), eRadius, eRadius);
//
//ellipse((width/2)+(eRadius*(-1)), (100+(1*eRadius)), eRadius, eRadius);
//ellipse((width/2)+(eRadius*(0)),  (100+(1*eRadius)), eRadius, eRadius);
//ellipse((width/2)+(eRadius*(1)),  (100+(1*eRadius)), eRadius, eRadius);






}
