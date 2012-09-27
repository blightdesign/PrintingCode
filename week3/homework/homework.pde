void setup()
{
  size(800, 800);
  colorMode(HSB, 360, 100, 100);
  background(360);
  smooth();
  
  int strokeSize = 10;
  
  
  //Fibonacci
  int fibA = 0;
  int fibB = 1;
  int fibC = 1;
  int fibD = 2;
  int fibE = 3;
  int fibF = 5;
  int fibG = 8;
  int fibH = 13;
  int fibI = 21;
  int fibJ = 34;
  int fibK = 55;

  strokeWeight(strokeSize);
  
  // first we pick a base color
  // r is random
  float r = random(230, 250);
  HSBColor color1 = new HSBColor(r, 60, 100);
  
  // then we pick two colors with different brightness
  int diff = 30;
  float diffB = random(15,25);
  int diffC = round(diffB);
  
  float diffD = random(-15,5);
  int diffE = round(diffD);
  
  HSBColor color2 = new HSBColor(color1.h, color1.s+diffD, color1.b - diffC);
  HSBColor color3 = new HSBColor(color2.h, color2.s+diffD, color2.b - diffC);
  
 

 
  // then we draw them on the screen
  int rectSize = 400;
  //int rad = 25;
  int rad = height/32;
 // translate(width, height);
 
 //background
 color1.display3(0,0,height,width);
  
  //wood
  color3.display2(width,height,fibK*rad,fibK*rad);
 
  //rings
  strokeWeight(5);
  color2.display(width, height, fibA*rad, fibA*rad);
  color2.display(width, height, fibB*rad, fibB*rad);
  color2.display(width, height, fibC*rad, fibC*rad);
  color2.display(width, height, fibD*rad, fibD*rad);
  color2.display(width, height, fibE*rad, fibE*rad);
  color2.display(width, height, fibF*rad, fibF*rad);
  color2.display(width, height, fibG*rad, fibG*rad);
  color2.display(width, height, fibH*rad, fibH*rad);
  color2.display(width, height, fibI*rad, fibI*rad);
  color2.display(width, height, fibJ*rad, fibJ*rad);
  color2.display(width, height, fibK*rad, fibK*rad);
  
  strokeWeight(strokeSize*5);
  color2.display(width, height, fibK*rad, fibK*rad);
  
  
  
}

