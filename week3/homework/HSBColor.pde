// This is a simple class I made that holds the values of an HSB color
class HSBColor
{
  int h;
  int s;
  int b;
  
  HSBColor()
  {
    h = round(random(100));  //angle of the wheel
    s = round(random(100));
    b = round(random(360)); 
  }
  
  HSBColor(int _h, int _s, int _b)
  {
    h = _h;
    s = _s;
    b = _b; 
  }
  
  HSBColor(float _h, float _s, float _b)
  {
    h = round(_h);
    s = round(_s);
    b = round(_b);
  }
  
  void display(int x, int y, int wi, int he)
  {
    //noStroke();
    stroke(h,s,b);
    //fill(h, s, b);
    noFill();
    ellipse(x, y, wi, he); 
  }
  
  void display2(int x, int y, int wi, int he)
  {
    noStroke();
    //stroke(h,s,b);
    fill(h, s, b);
    //noFill();
    ellipse(x, y, wi, he); 
  }
  
  
  void display3(int x, int y, int wi, int he)
  {
    noStroke();
    //stroke(h,s,b);
    fill(h, s, b);
    //noFill();
    rect(x, y, wi, he); 
  }
}

