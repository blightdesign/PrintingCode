// This is a simple class I made that holds the values of an HSB color
class HSBColor
{
  int h;
  int s;
  int b;
  int a;
  
  HSBColor()
  {
    h = round(random(360));  //angle of the wheel
    s = round(random(100));
    b = round(random(100)); 
    a = round(random(100));
  }
  
  HSBColor(int _h, int _s, int _b, int _a)
  {
    h = _h;
    s = _s;
    b = _b; 
    a = _a;
  }
  
  HSBColor(float _h, float _s, float _b, float _a)
  {
    h = round(_h);
    s = round(_s);
    b = round(_b);
    a = round(_a);
  }
  
  void display(int x, int y, int wi, int he)
  {
    canvas.noStroke();
    canvas.fill(h, s, b, a);
    canvas.rect(x, y, wi, he); 
  }
  

  

}

