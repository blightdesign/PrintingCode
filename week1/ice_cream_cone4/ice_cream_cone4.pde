void setup(){
size(500, 500);
background(255);
smooth();

int rSize = 20;         //Size of rect
int rSpace = 10;        //Spacing between rect
int rIncrease = 7;      //Increase in spacing

int eRadius;

strokeWeight(5);
stroke(0);

ellipse(width/2, (height/2)-70, 190, 190);
ellipse(width/2-70, (height/2)-26, 90, 90);
ellipse(width/2, (height/2)-26, 90, 90);
ellipse(width/2+70, (height/2)-26, 90, 90);

stroke(255,0,255);
//ICE CREAM
for (int i=0; i< 4; i++){
  if (i == 0) { 
    eRadius=190; 
    pushMatrix();
    translate(80,-84);
    popMatrix();
  }
  else
  {
    eRadius = 90; 
  }
   ellipse((width/2)+(i*80)-240, ((height/2)+15), eRadius, eRadius);
}



stroke(255);
triangle((width/2)-80, (height/2)-2, width/2, (height/2)+100, (width/2)+80, (height/2)-2);

stroke(0);
translate((width/2)+110, height/2);
rotate((3*PI)/4);  //rotates rectangles


for (int i = 0; i < 6; i++) {
  for(int j = 0; j < i; j++){
    rect(i*(rSize+rIncrease), j*(rSize+rIncrease), rSize, rSize); 
  }
}

}


