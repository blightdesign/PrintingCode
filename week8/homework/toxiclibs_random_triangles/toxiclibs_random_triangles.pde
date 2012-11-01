import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  background(255); 
  smooth();
  stroke(#AEAEAE);

  int sectionNum = 5;

  WeightedRandomSet<Circle> circles = new WeightedRandomSet<Circle>();

  circles.add(new Circle(1,  50,  50, 100, 550, 300,  0, 350, 500, #cb4837, #6CA94A, sectionNum), 50);
  circles.add(new Circle(1, 100, 100,  50, 500, 250, 50, 300, 550, #4a608c, #FCEA24, sectionNum), 50);
  circles.add(new Circle(1,   0,  50, 150, 600, 330, 45, 375, 450, #f2f449, #D52309, sectionNum), 50);

//  // randomly pick 3 circles
//  for (int i = 0; i < 3; i++){
//    Triangles tri = triangles.getRandom();
//    tri.display();  
//  }
  
  
  
    Circle cirA = circles.getRandom();
    cirA.display();  
    
    translate(200,0);
    Circle cirB = circles.getRandom();
    cirB.display();  
    
    translate(200,0);
    Circle cirC = circles.getRandom();
    cirC.display();  
    
}
