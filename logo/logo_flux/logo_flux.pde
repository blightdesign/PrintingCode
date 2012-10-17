// Logo, in flux, experimental, etc.

void setup() {
  size(400,400);
  colorMode(HSB, 360,100,100,100);
  background(360);
  smooth();
  noFill();
  stroke(1);
  
  //int smallFontSize = 250;
  float smallFontSize =random(150,350);
 
  //int xA=12;
  float xA=random(12,182);
  //int yA=10;
  float yA=random(10,150);
  //int xB=82;
  float xB=random(50,182);
  //int yB=50;
  float yB=random(30,150);
  
  //stroke(0,0,255);
  stroke(359,100,40,100);
  strokeWeight(1);
  
  //Connecting LInes
  line((0.0*smallFontSize)+xA, (1.19*smallFontSize)+yA, (0.0*smallFontSize)+xB, (1.19*smallFontSize)+yB);
  line((0.0*smallFontSize)+xA, (0.0*smallFontSize)+yA,  (0.0*smallFontSize)+xB, (0.0*smallFontSize)+yB);
  line((0.355*smallFontSize)+xA, (0.0*smallFontSize)+yA, (0.355*smallFontSize)+xB, (0.0*smallFontSize)+yB);
  line((0.355*smallFontSize)+xA, (0.9*smallFontSize)+yA, (0.355*smallFontSize)+xB, (0.9*smallFontSize)+yB);
  line((1.1*smallFontSize)+xA, (0.9*smallFontSize)+yA, (1.1*smallFontSize)+xB, (0.9*smallFontSize)+yB);
  line((0.7*smallFontSize)+xA, (1.19*smallFontSize)+yA,(0.7*smallFontSize)+xB, (1.19*smallFontSize)+yB);
  
  line((0.378*smallFontSize)+xA, (0.0*smallFontSize)+yA, (0.378*smallFontSize)+xB, (0.0*smallFontSize)+yB);
  line((0.378*smallFontSize)+xA, (0.885*smallFontSize)+yA, (0.378*smallFontSize)+xB, (0.885*smallFontSize)+yB);
  line((1.1*smallFontSize)+xA, (0.885*smallFontSize)+yA, (1.1*smallFontSize)+xB, (0.885*smallFontSize)+yB);
  line((0.86*smallFontSize)+xA, (0.565*smallFontSize)+yA, (0.86*smallFontSize)+xB, (0.565*smallFontSize)+yB);
  line((0.7*smallFontSize)+xA, (0.0*smallFontSize)+yA, (0.7*smallFontSize)+xB, (0.0*smallFontSize)+yB);
  
  //Logo A
  pushMatrix();
  translate(xA, yA);
  //fill(0,0,255,50);
  fill(359,100,40,50);
  // L
  beginShape();
    vertex(0.0*smallFontSize,1.19*smallFontSize);
    vertex(0.0*smallFontSize, 0.0*smallFontSize);
    vertex(0.355*smallFontSize, 0.0*smallFontSize);
    vertex(0.355*smallFontSize, 0.9*smallFontSize);
    vertex(1.1*smallFontSize, 0.9*smallFontSize);
    bezierVertex(1.1*smallFontSize, 0.9*smallFontSize, 1.09*smallFontSize,1.19*smallFontSize, 0.7*smallFontSize,1.19*smallFontSize);
    vertex(0.7*smallFontSize,1.19*smallFontSize);
    vertex(0.0*smallFontSize,1.19*smallFontSize);
  endShape();
  // B
  beginShape();
    vertex(0.378*smallFontSize, 0.0*smallFontSize);
    vertex(0.378*smallFontSize, 0.885*smallFontSize);
    vertex(1.1*smallFontSize, 0.885*smallFontSize);
    bezierVertex(1.1*smallFontSize, 0.885*smallFontSize, 1.15*smallFontSize, .65*smallFontSize, 0.86*smallFontSize, 0.565*smallFontSize);
    vertex(0.86*smallFontSize, 0.565*smallFontSize);
    bezierVertex(1.1*smallFontSize, 0.5*smallFontSize, 1.185*smallFontSize, 0.05*smallFontSize,  0.7*smallFontSize, 0.0*smallFontSize);
    vertex(0.7*smallFontSize, 0.0*smallFontSize);
    vertex(0.378*smallFontSize, 0.0*smallFontSize);
  endShape();
  popMatrix();
  
  //LogoB
  pushMatrix();
  //smallFontSize=250;
  translate(xB, yB);
  //fill(0,0,255,50);
  fill(359,100,40,50);
  // L
  beginShape();
    vertex(0.0*smallFontSize,1.19*smallFontSize);
    vertex(0.0*smallFontSize, 0.0*smallFontSize);
    vertex(0.355*smallFontSize, 0.0*smallFontSize);
    vertex(0.355*smallFontSize, 0.9*smallFontSize);
    vertex(1.1*smallFontSize, 0.9*smallFontSize);
    bezierVertex(1.1*smallFontSize, 0.9*smallFontSize, 1.09*smallFontSize,1.19*smallFontSize, 0.7*smallFontSize,1.19*smallFontSize);
    vertex(0.7*smallFontSize,1.19*smallFontSize);
    vertex(0.0*smallFontSize,1.19*smallFontSize);
  endShape();
  // B
  beginShape();
    vertex(0.378*smallFontSize, 0.0*smallFontSize);
    vertex(0.378*smallFontSize, 0.885*smallFontSize);
    vertex(1.1*smallFontSize, 0.885*smallFontSize);
    bezierVertex(1.1*smallFontSize, 0.885*smallFontSize, 1.15*smallFontSize, .65*smallFontSize, 0.86*smallFontSize, 0.565*smallFontSize);
    vertex(0.86*smallFontSize, 0.565*smallFontSize);
    bezierVertex(1.1*smallFontSize, 0.5*smallFontSize, 1.185*smallFontSize, 0.05*smallFontSize,  0.7*smallFontSize, 0.0*smallFontSize);
    vertex(0.7*smallFontSize, 0.0*smallFontSize);
    vertex(0.378*smallFontSize, 0.0*smallFontSize);
  endShape();
  popMatrix();

  //Mask rest of sketch
  noFill();
  stroke(360);
  strokeWeight(50);
  rect(12, 10,350,350);
  //strokeWeight(80);
  //stroke(255,0,0);
  rect(12, 10,398,398);
  rect(12, 10,445,445);
  rect(12, 10,490,490);
  strokeWeight(1);
  //stroke(0,0,255);
  stroke(359,100,40);
  rect(37, 35,300,300);
  
}
