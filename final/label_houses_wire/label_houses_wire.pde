PImage img;

void setup() 
{
  size(1200, 800);
  smooth();
  
  img = loadImage("label_stamped_med.jpg");
  
  image(img, 0,0);
  
}
