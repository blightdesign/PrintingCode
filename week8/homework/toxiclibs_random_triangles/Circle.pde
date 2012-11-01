class Circle
{
  int leftXT;
  int leftYT;
  int leftXB;
  int leftYB;
  int rightXT;
  int rightYT;
  int rightXB;
  int rightYB;
  int kolor;
  int kolorB;
  int sectionNum;
  float percentage;

  Circle(float _percentage, int _leftXT, int _leftYT, int _leftXB, int _leftYB, int _rightXT, int _rightYT, int _rightXB, int _rightYB, int _kolor, int _kolorB, int _sectionNum)
    {
      percentage = _percentage;
      leftXT = _leftXT;
      leftYT = _leftYT;
      leftXB = _leftXB;
      leftYB = _leftYB;
      rightXT = _rightXT;
      rightYT = _rightYT;
      rightXB = _rightXB;
      rightYB = _rightYB;
      kolor = _kolor;
      kolorB = _kolorB;
      sectionNum = _sectionNum;
    }

  void display()
    {
      PVector leftTop = new PVector(leftXT,leftYT);    //Left Top of section
      PVector rightTop = new PVector(rightXT,rightYT);  //Right Topo of section
      PVector leftBot = new PVector(leftXB,leftYB);    //left Bottom of Section
      PVector rightBot = new PVector(rightXB,rightYB); //right Bottom of section
      
     
      
      fill(kolor,50);
      triangle(leftTop.x,leftTop.y,rightTop.x,rightTop.y,rightBot.x,rightBot.y);
      fill(kolorB,50);
      triangle(leftBot.x,leftBot.y,leftTop.x,leftTop.y,rightTop.x,rightTop.y);
      noFill();
      triangle(rightTop.x,rightTop.y,rightBot.x,rightBot.y,leftBot.x,leftBot.y);
      
     
      
    }
}
