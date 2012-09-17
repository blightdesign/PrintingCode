void setup()
{
  size(500,500);
  
  translate(width/2, height/2);
  
  //ellipse(0,0,300,300);
  
  float x = cos(radians(45)) * 150;
  float y = sin(radians(45)) * 150;
  
  //ellipse(x,y,10,10);
  
  
  
  float deg = 360/6;
  
  for(int i=0; i<6; i++)
  {
    float a = cos(radians(i*deg)) * 150;
    float b = sin(radians(i*deg)) * 150;
    
    vertex(a,b);
  }
  
}
